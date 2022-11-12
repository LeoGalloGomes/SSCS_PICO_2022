v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 -210 310 -210 { lab=#net1}
N 50 -210 150 -210 { lab=RF_in}
N 350 -140 350 -90 { lab=Gnd}
N 240 -210 240 -110 { lab=#net1}
N 170 -110 170 -80 { lab=#net1}
N 170 -110 240 -110 { lab=#net1}
N 240 -110 240 -80 { lab=#net1}
N 170 -20 170 0 { lab=Gnd}
N 240 -20 240 -0 { lab=Gnd}
N 480 -210 560 -210 { lab=#net2}
N 560 -360 560 -210 { lab=#net2}
N 560 -360 590 -360 { lab=#net2}
N 560 -430 560 -360 { lab=#net2}
N 560 -430 590 -430 { lab=#net2}
N 650 -360 670 -360 { lab=Gnd}
N 650 -430 670 -430 { lab=Gnd}
N 560 -510 560 -430 { lab=#net2}
C {/home/leonardo/sky130_projects/SSCS_PICO_tapeout/VGA_tapeout/xschem/VGA_core/VGA_gainCellv3.sym} 390 -210 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 180 -210 3 0 {name=C1 model=cap_mim_m3_2 W=15 L=15 MF=1 spiceprefix=X}
C {devices/iopin.sym} 60 -210 2 0 {name=p1 lab=RF_in}
C {devices/iopin.sym} 350 -90 1 0 {name=p2 lab=Gnd}
C {sky130_fd_pr/cap_mim_m3_2.sym} 240 -50 0 0 {name=C2 model=cap_mim_m3_2 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 170 -50 0 0 {name=C3 model=cap_mim_m3_2 W=15 L=15 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 170 0 0 0 {name=l1 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 240 0 0 0 {name=l2 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/cap_mim_m3_2.sym} 620 -430 3 0 {name=C4 model=cap_mim_m3_2 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 620 -360 3 0 {name=C5 model=cap_mim_m3_2 W=15 L=15 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 670 -360 3 0 {name=l3 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 670 -430 3 0 {name=l4 sig_type=std_logic lab=Gnd}
C {devices/noconn.sym} 260 -390 0 0 {name=l5}
