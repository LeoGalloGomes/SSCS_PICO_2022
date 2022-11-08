# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

# cannot commit files larger than 100 MB to GitHub
FILE_SIZE_LIMIT_MB = 100

# Commands to be used to compress/uncompress files
# they must operate **in place** (otherwise, modify the target to delete the
# intermediate file/archive)
COMPRESS ?= gzip -n --best
UNCOMPRESS ?= gzip -d
ARCHIVE_EXT ?= gz

# The following variables are to build static pattern rules

# Needed to rebuild archives that were previously split
SPLIT_FILES := $(shell find . -type f -name "*.$(ARCHIVE_EXT).00.split")
SPLIT_FILES_SOURCES := $(basename $(basename $(basename $(SPLIT_FILES))))

# Needed to uncompress the existing archives
ARCHIVES := $(shell find . -type f -name "*.$(ARCHIVE_EXT)")
ARCHIVE_SOURCES := $(basename $(ARCHIVES))

# Needed to compress and split files/archives that are too large
LARGE_FILES := $(shell find . -type f -name "*.gds")
LARGE_FILES += $(shell find . -type f -size +$(FILE_SIZE_LIMIT_MB)M -not -path "./.git/*" -not -path "./*/.git/*" -not -path "./gds/*" -not -path "./tapeout/outputs/oas/*" -not -path "./openlane/*")
LARGE_FILES_GZ := $(addsuffix .$(ARCHIVE_EXT), $(LARGE_FILES))
LARGE_FILES_GZ_SPLIT := $(addsuffix .$(ARCHIVE_EXT).00.split, $(LARGE_FILES))
# consider splitting existing archives
LARGE_FILES_GZ_SPLIT += $(addsuffix .00.split, $(ARCHIVES))

MCW_ROOT?=$(PWD)/mgmt_core_wrapper
MCW ?=LITEX_VEXRISCV
MPW_TAG ?= mpw-7e

# PDK switch varient
export PDK?=sky130A

# Install lite version of caravel, (1): caravel-lite, (0): caravel
MCW_LITE?=1

ifeq ($(MCW),LITEX_VEXRISCV)
	MCW_NAME := mcw-litex-vexriscv
	MCW_REPO := https://github.com/efabless/caravel_mgmt_soc_litex
	MCW_TAG := $(MPW_TAG)
else
	MCW_NAME := mcw-pico
	MCW_REPO := https://github.com/efabless/caravel_pico
	MCW_TAG := $(MPW_TAG)
endif

# Install caravel as submodule, (1): submodule, (0): clone
SUBMODULE?=0

# Caravel Root (Default: pwd)
# Need to be overwritten if running the makefile from UPRJ_ROOT,
# If caravel is sub-moduled in the user project, run export CARAVEL_ROOT=$(pwd)/caravel
CARAVEL_ROOT ?= $(shell pwd)

# User project root
UPRJ_ROOT ?= $(shell pwd)

# MANAGEMENT AREA ROOT
MGMT_AREA_ROOT ?= $(shell pwd)/mgmt_core_wrapper 

# Build tasks such as make ship, make generate_fill, make set_user_id, make final run in the foreground (1) or background (0)
FOREGROUND ?= 1

# PDK setup configs
THREADS ?= $(shell nproc)
STD_CELL_LIBRARY ?= sky130_fd_sc_hd
SPECIAL_VOLTAGE_LIBRARY ?= sky130_fd_sc_hvl
IO_LIBRARY ?= sky130_fd_io
PRIMITIVES_LIBRARY ?= sky130_fd_pr
SKYWATER_COMMIT ?= f70d8ca46961ff92719d8870a18a076370b85f6c
OPEN_PDKS_COMMIT ?= a56526bfe45971322526978132b059d43ddd3a02
# = 1.0.303
PDK_MAGIC_COMMIT ?= 085131b090cb511d785baf52a10cf6df8a657d44
# = 8.3.294

.DEFAULT_GOAL := ship
# We need portable GDS_FILE pointers...
.PHONY: ship
ship: check-env uncompress uncompress-caravel
ifeq ($(FOREGROUND),1)
	@echo "Running make ship in the foreground..."
	$(MAKE) -f $(CARAVEL_ROOT)/Makefile __ship
	@echo "Make ship completed." 2>&1 | tee -a ./signoff/build/make_ship.out
else
	@echo "Running make ship in the background..."
	nohup $(MAKE) -f $(CARAVEL_ROOT)/Makefile __ship >/dev/null 2>&1 &
	tail -f signoff/build/make_ship.out
	@echo "Make ship completed."  2>&1 | tee -a ./signoff/build/make_ship.out
endif

__ship:
	@echo "###############################################"
	@echo "Generating Caravel GDS (sources are in the 'gds' directory)"
	@sleep 1
#### Runs from the CARAVEL_ROOT mag directory 
	@echo "\
		random seed `$(CARAVEL_ROOT)/scripts/set_user_id.py -report`; \
		drc off; \
		crashbackups stop; \
		addpath hexdigits; \
		addpath $(CARAVEL_ROOT)/mag; \
		addpath $(UPRJ_ROOT)/mag; \
		load user_project_wrapper; \
		property LEFview true; \
		property GDS_FILE $(UPRJ_ROOT)/gds/user_project_wrapper.gds; \
		property GDS_START 0; \
		load mgmt_core_wrapper; \
		property LEFview true; \
		property GDS_FILE $(MCW_ROOT)/gds/mgmt_core_wrapper.gds; \
		property GDS_START 0; \
		load $(UPRJ_ROOT)/mag/user_id_programming; \
		load $(UPRJ_ROOT)/mag/user_id_textblock; \
		load ../maglef/simple_por; \
		load $(UPRJ_ROOT)/mag/caravel -dereference; \
		select top cell; \
		expand; \
		cif *hier write disable; \
		cif *array write disable; \
		gds write $(UPRJ_ROOT)/gds/caravel.gds; \
		quit -noprompt;" > $(UPRJ_ROOT)/mag/mag2gds_caravel.tcl
### Runs from CARAVEL_ROOT
	@mkdir -p ./signoff/build
	#@cd $(CARAVEL_ROOT)/mag && PDKPATH=${PDK_ROOT}/$(PDK) MAGTYPE=mag magic -noc -dnull -rcfile ${PDK_ROOT}/$(PDK)/libs.tech/magic/$(PDK).magicrc $(UPRJ_ROOT)/mag/mag2gds_caravel.tcl 2>&1 | tee $(UPRJ_ROOT)/signoff/build/make_ship.out
	@cd $(CARAVEL_ROOT)/mag && PDKPATH=${PDK_ROOT}/$(PDK) MAGTYPE=mag magic -noc -dnull -rcfile ./.magicrc $(UPRJ_ROOT)/mag/mag2gds_caravel.tcl 2>&1 | tee $(UPRJ_ROOT)/signoff/build/make_ship.out
###	@rm $(UPRJ_ROOT)/mag/mag2gds_caravel.tcl

truck: check-env uncompress uncompress-caravel
ifeq ($(FOREGROUND),1)
	@echo "Running make truck in the foreground..."
	mkdir -p ./signoff
	mkdir -p ./build
	$(MAKE) -f $(CARAVEL_ROOT)/Makefile __truck
	@echo "Make truck completed." 2>&1 | tee -a ./signoff/build/make_truck.out
else
	@echo "Running make truck in the background..."
	mkdir -p ./signoff
	mkdir -p ./build
	nohup $(MAKE) -f $(CARAVEL_ROOT)/Makefile __truck >/dev/null 2>&1 &
	tail -f signoff/build/make_truck.out
	@echo "Make truck completed."  2>&1 | tee -a ./signoff/build/make_truck.out
endif

__truck: 
	@echo "###############################################"
	@echo "Generating Caravan GDS (sources are in the 'gds' directory)"
	@sleep 1
#### Runs from the CARAVEL_ROOT mag directory 
	@echo "\
		random seed `$(CARAVEL_ROOT)/scripts/set_user_id.py -report`; \
		drc off; \
		crashbackups stop; \
		addpath hexdigits; \
		addpath $(CARAVEL_ROOT)/mag; \
		addpath $(UPRJ_ROOT)/mag; \
		load user_analog_project_wrapper; \
		property LEFview true; \
		property GDS_FILE $(UPRJ_ROOT)/gds/user_analog_project_wrapper.gds; \
		property GDS_START 0; \
		load mgmt_core_wrapper; \
		property LEFview true; \
		property GDS_FILE $(MCW_ROOT)/gds/mgmt_core_wrapper.gds; \
		property GDS_START 0; \
		load $(UPRJ_ROOT)/mag/user_id_programming; \
		load $(UPRJ_ROOT)/mag/user_id_textblock; \
		load ../maglef/simple_por; \
		load $(UPRJ_ROOT)/mag/caravan -dereference; \
		select top cell; \
		expand; \
		cif *hier write disable; \
		cif *array write disable; \
		gds write $(UPRJ_ROOT)/gds/caravan.gds; \
		quit -noprompt;" > $(UPRJ_ROOT)/mag/mag2gds_caravan.tcl
### Runs from CARAVEL_ROOT
	@mkdir -p ./signoff/build
	#@cd $(CARAVEL_ROOT)/mag && PDKPATH=${PDK_ROOT}/$(PDK) MAGTYPE=mag magic -noc -dnull -rcfile ${PDK_ROOT}/$(PDK)/libs.tech/magic/$(PDK).magicrc $(UPRJ_ROOT)/mag/mag2gds_caravan.tcl 2>&1 | tee $(UPRJ_ROOT)/signoff/build/make_truck.out
	@cd $(CARAVEL_ROOT)/mag && PDKPATH=${PDK_ROOT}/$(PDK) MAGTYPE=mag magic -noc -dnull -rcfile ./.magicrc $(UPRJ_ROOT)/mag/mag2gds_caravan.tcl 2>&1 | tee $(UPRJ_ROOT)/signoff/build/make_truck.out
###	@rm $(UPRJ_ROOT)/mag/mag2gds_caravan.tcl

.PHONY: clean
clean:
	cd $(CARAVEL_ROOT)/verilog/dv/caravel/mgmt_soc/ && \
		$(MAKE) -j$(THREADS) clean
	cd $(CARAVEL_ROOT)/verilog/dv/wb_utests/ && \
		$(MAKE) -j$(THREADS) clean


.PHONY: verify
verify:
	cd $(CARAVEL_ROOT)/verilog/dv/caravel/mgmt_soc/ && \
		$(MAKE) -j$(THREADS) all
	cd $(CARAVEL_ROOT)/verilog/dv/wb_utests/ && \
		$(MAKE) -j$(THREADS) all



#####
$(LARGE_FILES_GZ): %.$(ARCHIVE_EXT): %
	@if ! [ $(suffix $<) = ".$(ARCHIVE_EXT)" ]; then\
		$(COMPRESS) $< > /dev/null &&\
		echo "$< -> $@";\
	fi

$(LARGE_FILES_GZ_SPLIT): %.$(ARCHIVE_EXT).00.split: %.$(ARCHIVE_EXT)
	@if [ -n "$$(find "$<" -prune -size +$(FILE_SIZE_LIMIT_MB)M)" ]; then\
		split $< -b $(FILE_SIZE_LIMIT_MB)M $<. -d &&\
		rm $< &&\
		for file in $$(ls $<.*); do mv "$$file" "$$file.split"; done &&\
		echo -n "$< -> $$(ls $<.*.split)" | tr '\n' ' ' && echo "";\
	fi

# This target compresses all files larger than $(FILE_SIZE_LIMIT_MB) MB
.PHONY: compress
compress: $(LARGE_FILES_GZ) $(LARGE_FILES_GZ_SPLIT)
	@echo "Files larger than $(FILE_SIZE_LIMIT_MB) MBytes are compressed!"



#####
$(ARCHIVE_SOURCES): %: %.$(ARCHIVE_EXT)
	@$(UNCOMPRESS) $<
	@echo "$< -> $@"

.SECONDEXPANSION:
$(SPLIT_FILES_SOURCES): %: $$(sort $$(wildcard %.$(ARCHIVE_EXT).*.split))
	@cat $? > $@.$(ARCHIVE_EXT)
	@rm $?
	@echo "$? -> $@.$(ARCHIVE_EXT)"
	@$(UNCOMPRESS) $@.$(ARCHIVE_EXT)
	@echo "$@.$(ARCHIVE_EXT) -> $@"


.PHONY: uncompress
uncompress: $(SPLIT_FILES_SOURCES) $(ARCHIVE_SOURCES)
	@echo "All files are uncompressed!"
