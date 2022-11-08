v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -50 180 -50 {
lab=A}
N 270 -50 300 -50 {
lab=C}
N 240 -50 270 -50 {
lab=C}
N 360 -50 430 -50 {
lab=B}
N 30 -20 70 -20 {
lab=#net1}
N 470 -20 500 -20 {
lab=#net2}
N 30 -20 30 10 {
lab=#net1}
N 30 70 30 90 {
lab=enable}
N 500 60 500 80 {
lab=/enable}
N 110 10 110 160 {
lab=0}
N 430 -50 520 -50 {
lab=B}
N -10 -50 110 -50 {
lab=A}
N 430 10 430 160 {
lab=0}
N 500 -20 500 0 {
lab=#net2}
N 270 -140 270 -50 {
lab=C}
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
C {lab_pin.sym} 110 160 3 0 {name=l4 sig_type=std_logic lab=0}
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
C {lab_pin.sym} 270 10 3 0 {name=l2 sig_type=std_logic lab=0}
C {lab_pin.sym} 430 160 1 1 {name=l5 sig_type=std_logic lab=0}
C {lab_pin.sym} 270 -140 1 0 {name=l7 sig_type=std_logic lab=C}
C {lab_pin.sym} -10 -50 0 0 {name=l8 sig_type=std_logic lab=A}
C {capa.sym} 270 -20 0 0 {name=C1
m=1
value=\{capacitor_value\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 -50 2 0 {name=l11 sig_type=std_logic lab=B}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 30 40 0 0 {name=R3
W=0.35
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 500 30 2 0 {name=R2
W=0.35
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 30 90 3 0 {name=l1 sig_type=std_logic lab=enable}
C {lab_pin.sym} 500 80 3 0 {name=l3 sig_type=std_logic lab=/enable}
