v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -90 250 -90 { lab=gnd}
N 220 -60 220 -40 { lab=gnd}
N 220 -170 220 -150 { lab=#net1}
N 220 -150 220 -120 { lab=#net1}
N 270 -200 300 -200 { lab=gnd}
N 300 -170 300 -150 { lab=#net1}
N 220 -150 300 -150 { lab=#net1}
N 340 -200 350 -200 { lab=Vctrl}
N 220 -200 250 -200 { lab=gnd}
N 250 -200 270 -200 { lab=gnd}
N 250 -200 250 -90 { lab=gnd}
N 220 -40 250 -40 { lab=gnd}
N 250 -90 250 -40 { lab=gnd}
N 220 -40 220 -0 { lab=gnd}
N 140 -90 180 -90 { lab=in}
N 140 -200 180 -200 { lab=gate}
N 220 -280 220 -230 { lab=out}
N 300 -280 300 -230 { lab=Vdd}
N 80 -200 110 -200 { lab=gate}
N 110 -200 140 -200 { lab=gate}
N 350 -200 380 -200 { lab=Vctrl}
N 380 -200 450 -200 { lab=Vctrl}
N 310 -90 310 -40 { lab=gnd}
N 310 -40 350 -40 { lab=gnd}
N 350 -60 350 -40 { lab=gnd}
N 350 -90 350 -60 { lab=gnd}
N 350 -120 350 -90 { lab=gnd}
N 330 -40 330 -20 { lab=gnd}
N 220 -20 330 -20 { lab=gnd}
N 350 -90 350 -60 { lab=gnd}
N 350 -120 350 -90 { lab=gnd}
N 110 -270 110 -230 { lab=gnd}
N 110 -230 160 -230 { lab=gnd}
N 160 -270 160 -230 { lab=gnd}
N 150 -270 160 -270 { lab=gnd}
N 150 -300 160 -300 { lab=gnd}
N 160 -300 160 -270 { lab=gnd}
N 150 -240 150 -150 { lab=#net1}
N 150 -150 220 -150 { lab=#net1}
N 440 -270 440 -230 { lab=gnd}
N 390 -230 440 -230 { lab=gnd}
N 390 -270 390 -230 { lab=gnd}
N 390 -270 400 -270 { lab=gnd}
N 390 -300 400 -300 { lab=gnd}
N 390 -300 390 -270 { lab=gnd}
N 400 -240 400 -150 { lab=#net1}
N 300 -150 400 -150 { lab=#net1}
N 160 -250 250 -250 { lab=gnd}
N 250 -250 250 -200 { lab=gnd}
N 250 -250 390 -250 { lab=gnd}
N 430 -200 430 -190 { lab=Vctrl}
N 430 -130 430 -40 { lab=gnd}
N 350 -40 430 -40 { lab=gnd}
N 350 -350 390 -350 { lab=Vdd}
N 430 -40 510 -40 { lab=gnd}
N 510 -350 510 -40 { lab=gnd}
N 450 -350 510 -350 { lab=gnd}
N 300 -260 350 -260 { lab=Vdd}
N 350 -350 350 -260 { lab=Vdd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 -90 0 0 {name=M1
L=0.15
W=25.2
nf=30
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
C {devices/iopin.sym} 150 -90 2 0 {name=p1 lab=in}
C {devices/iopin.sym} 220 -270 3 0 {name=p2 lab=out}
C {devices/iopin.sym} 90 -200 2 0 {name=p3 lab=gate}
C {devices/iopin.sym} 300 -270 3 0 {name=p4 lab=Vdd}
C {devices/iopin.sym} 440 -200 0 0 {name=p5 lab=Vctrl}
C {devices/iopin.sym} 220 -10 1 0 {name=p6 lab=gnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 -200 0 0 {name=M2
L=0.15
W=25.2
nf=30
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 -200 0 1 {name=M3
L=0.15
W=25.2
nf=30
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 -90 0 0 {name=M5
L=0.15
W=0.84
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 -270 0 0 {name=M6
L=0.15
W=0.84
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 420 -270 0 1 {name=M7
L=0.15
W=0.84
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 430 -160 0 0 {name=C1 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 420 -350 3 0 {name=C2 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
