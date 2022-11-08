v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -50 -50 -10 -50 {
lab=#net1}
N 110 -20 140 -20 {
lab=#net2}
N 140 -20 140 30 {
lab=#net2}
N 50 -50 110 -50 {
lab=IN_TX}
N 400 -20 400 30 {
lab=#net3}
N 110 -50 180 -50 {
lab=IN_TX}
N 270 -50 300 -50 {
lab=OUT_ANT}
N 240 -50 270 -50 {
lab=OUT_ANT}
N 360 -50 430 -50 {
lab=OUT_ISOL}
N 400 -20 430 -20 {
lab=#net3}
N 140 90 140 110 {
lab=0}
N 30 160 140 160 {
lab=0}
N 30 -20 70 -20 {
lab=#net4}
N 500 -20 500 20 {
lab=#net5}
N 470 -20 500 -20 {
lab=#net5}
N 400 170 500 170 {
lab=0}
N 500 150 500 170 {
lab=0}
N 430 -50 590 -50 {
lab=OUT_ISOL}
N 270 -230 270 -50 {
lab=OUT_ANT}
N 270 -230 330 -230 {
lab=OUT_ANT}
N 330 -230 330 -210 {
lab=OUT_ANT}
N 30 -20 30 10 {
lab=#net4}
N 30 70 30 90 {
lab=#net6}
N 30 150 30 160 {
lab=0}
N 140 110 140 160 {
lab=0}
N 500 80 500 100 {
lab=#net7}
N 400 90 400 170 {
lab=0}
N -100 -50 -50 -50 {
lab=#net1}
N 110 10 110 110 {
lab=0}
N 110 110 140 110 {
lab=0}
N 430 10 430 110 {
lab=0}
N 400 110 430 110 {
lab=0}
N 80 -80 80 -50 {
lab=IN_TX}
N -60 400 -20 400 {
lab=0}
N 100 430 130 430 {
lab=#net8}
N 130 430 130 480 {
lab=#net8}
N 40 400 100 400 {
lab=OUT1_ISOL}
N 390 430 390 480 {
lab=#net9}
N 100 400 170 400 {
lab=OUT1_ISOL}
N 260 400 290 400 {
lab=IN_ANT}
N 230 400 260 400 {
lab=IN_ANT}
N 350 400 420 400 {
lab=OUT_RX}
N 390 430 420 430 {
lab=#net9}
N 130 540 130 560 {
lab=0}
N 20 610 130 610 {
lab=0}
N 20 430 60 430 {
lab=#net10}
N 490 430 490 470 {
lab=#net11}
N 460 430 490 430 {
lab=#net11}
N 390 620 490 620 {
lab=0}
N 490 600 490 620 {
lab=0}
N 420 400 580 400 {
lab=OUT_RX}
N 20 430 20 460 {
lab=#net10}
N 20 520 20 540 {
lab=#net12}
N 20 600 20 610 {
lab=0}
N 130 560 130 610 {
lab=0}
N 490 530 490 550 {
lab=#net13}
N 390 540 390 620 {
lab=0}
N -110 400 -60 400 {
lab=0}
N 100 460 100 560 {
lab=0}
N 100 560 130 560 {
lab=0}
N 420 460 420 560 {
lab=0}
N 390 560 420 560 {
lab=0}
N 70 370 70 400 {
lab=OUT1_ISOL}
N -110 400 -110 460 {
lab=0}
N 430 250 430 260 {
lab=#net14}
N 400 250 430 250 {
lab=#net14}
N 260 250 340 250 {
lab=IN_ANT}
N 260 250 260 400 {
lab=IN_ANT}
C {res.sym} 20 -50 1 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 90 -20 0 0 {name=M1
L=0.15
W=162
nf=18
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {res.sym} 140 60 0 0 {name=R3
value=20M
footprint=1206
device=resistor
m=1}
C {vsource.sym} -100 -20 0 0 {name=V1 value="DC 0 AC 1"}
C {lab_pin.sym} -100 10 3 0 {name=l3 sig_type=std_logic lab=0}
C {lab_pin.sym} 140 160 3 0 {name=l4 sig_type=std_logic lab=0}
C {devices/code.sym} 680 60 0 0 {name=TT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.option wnflag = 1
.lib /home/leonardo/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.MODEL Ustrip_50ohm TRLA (R=0.00762 L=3.082e-13 G=3.187e-6 C=1.289e-16 Len=500)
* Corner
*.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} 820 0 0 0 {name=s2 only_toplevel=false 
value=".param inductor_value=105p
.param capacitor_value=107f
.save all
.control
op
ac lin 801 50e6 100e9
let txS11=2*IN_TX-1
let txS21=2*OUT_ANT
let txS31=2*OUT_ISOL

let rxS11=2*IN_ANT-1
let rxS21=2*OUT_RX
let rxS31=2*OUT1_ISOL

plot db(txS11) db(txS21) db(txS31) ylimit 0 -25 xlabel freq[GHz] ylabel Sparam[dB] title TRANSMITTER
plot db(rxS11) db(rxS21) db(rxS31) ylimit 0 -25 xlabel freq[GHz] ylabel Sparam[dB] title RECEIVER
plot rxS11 txS11 smithgrid; xlimit 50e9 70e9
.endc
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -20 0 1 {name=M2
L=0.15
W=162
nf=18
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {res.sym} 400 60 0 1 {name=R2
value=20M
footprint=1206
device=resistor
m=1}
C {ind.sym} 210 -50 3 0 {name=L1
m=1
value=\{inductor_value\}
footprint=1206
device=inductor}
C {ind.sym} 330 -50 3 0 {name=L2
m=1
value=\{inductor_value\}
footprint=1206
device=inductor}
C {vsource.sym} 30 120 0 0 {name=V2 value="DC 0"}
C {vsource.sym} 500 130 0 0 {name=V3 value="DC 1.8"}
C {lab_pin.sym} 270 10 3 0 {name=l2 sig_type=std_logic lab=0}
C {lab_pin.sym} 400 170 1 1 {name=l5 sig_type=std_logic lab=0}
C {res.sym} 590 -20 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 590 10 1 1 {name=l1 sig_type=std_logic lab=0}
C {res.sym} 330 -180 2 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 330 -150 1 1 {name=l6 sig_type=std_logic lab=0}
C {lab_pin.sym} 310 -230 1 0 {name=l7 sig_type=std_logic lab=OUT_ANT}
C {lab_pin.sym} 80 -80 1 0 {name=l8 sig_type=std_logic lab=IN_TX}
C {res.sym} 30 40 0 0 {name=R7
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 500 50 0 0 {name=R8
value=20k
footprint=1206
device=resistor
m=1}
C {capa.sym} 270 -20 0 0 {name=C1
m=1
value=\{capacitor_value\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 -50 1 0 {name=l11 sig_type=std_logic lab=OUT_ISOL}
C {res.sym} 10 400 1 0 {name=R6
value=50
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 430 0 0 {name=M3
L=0.15
W=162
nf=18
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {res.sym} 130 510 0 0 {name=R9
value=20M
footprint=1206
device=resistor
m=1}
C {vsource.sym} 430 290 0 0 {name=V4 value="DC 0 AC 1"}
C {lab_pin.sym} -110 460 3 0 {name=l9 sig_type=std_logic lab=0}
C {lab_pin.sym} 130 610 3 0 {name=l10 sig_type=std_logic lab=0}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 440 430 0 1 {name=M4
L=0.15
W=162
nf=18
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {res.sym} 390 510 0 1 {name=R10
value=20M
footprint=1206
device=resistor
m=1}
C {ind.sym} 200 400 3 0 {name=L3
m=1
value=\{inductor_value\}
footprint=1206
device=inductor}
C {ind.sym} 320 400 3 0 {name=L4
m=1
value=\{inductor_value\}
footprint=1206
device=inductor}
C {vsource.sym} 20 570 0 0 {name=V5 value="DC 1.8"}
C {vsource.sym} 490 580 0 0 {name=V6 value="DC 0"}
C {lab_pin.sym} 260 460 3 0 {name=l12 sig_type=std_logic lab=0}
C {lab_pin.sym} 390 620 1 1 {name=l13 sig_type=std_logic lab=0}
C {res.sym} 580 430 2 0 {name=R11
value=50
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 580 460 1 1 {name=l14 sig_type=std_logic lab=0}
C {res.sym} 370 250 1 0 {name=R12
value=50
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 430 320 1 1 {name=l15 sig_type=std_logic lab=0}
C {lab_pin.sym} 300 250 1 0 {name=l16 sig_type=std_logic lab=IN_ANT}
C {lab_pin.sym} 70 370 1 0 {name=l17 sig_type=std_logic lab=OUT1_ISOL}
C {res.sym} 20 490 0 0 {name=R13
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 490 500 0 0 {name=R14
value=20k
footprint=1206
device=resistor
m=1}
C {capa.sym} 260 430 0 0 {name=C2
m=1
value=\{capacitor_value\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 510 400 1 0 {name=l18 sig_type=std_logic lab=OUT_RX}
