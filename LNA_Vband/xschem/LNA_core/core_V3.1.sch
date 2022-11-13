v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 10 -1180 220 -1180 {}
L 4 220 -1180 220 -740 {}
L 4 10 -740 220 -740 {}
L 4 10 -1180 10 -740 {}
N 420 -890 450 -890 { lab=source}
N 450 -780 450 -760 { lab=source}
N 420 -760 450 -760 { lab=source}
N 340 -890 380 -890 { lab=bias1_input}
N 420 -860 420 -760 { lab=source}
N 450 -890 450 -840 { lab=source}
N 420 -760 420 -740 { lab=source}
N 420 -980 420 -920 { lab=#net1}
N 420 -1010 450 -1010 { lab=source}
N 450 -1010 450 -890 { lab=source}
N 310 -1010 380 -1010 { lab=bias2}
N 450 -840 450 -780 { lab=source}
N 120 -1030 120 -970 { lab=source}
N 30 -970 120 -970 { lab=source}
N 30 -1060 30 -970 { lab=source}
N 30 -1060 80 -1060 { lab=source}
N 120 -1130 120 -1090 { lab=source}
N 30 -1130 120 -1130 { lab=source}
N 30 -1130 30 -1060 { lab=source}
N 120 -1060 200 -1060 { lab=source}
N 200 -1060 200 -970 { lab=source}
N 120 -970 200 -970 { lab=source}
N 120 -850 120 -790 { lab=source}
N 30 -790 120 -790 { lab=source}
N 30 -880 30 -790 { lab=source}
N 30 -880 80 -880 { lab=source}
N 120 -950 120 -910 { lab=source}
N 30 -950 120 -950 { lab=source}
N 30 -950 30 -880 { lab=source}
N 120 -880 200 -880 { lab=source}
N 200 -880 200 -790 { lab=source}
N 120 -790 200 -790 { lab=source}
N 360 -790 360 -760 { lab=source}
N 360 -760 420 -760 { lab=source}
N 360 -890 360 -850 { lab=bias1_input}
N 330 -1010 330 -990 { lab=bias2}
N 330 -930 330 -760 { lab=source}
N 330 -760 360 -760 { lab=source}
N 420 -1110 420 -1040 { lab=tank_out}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 -890 0 0 {name=M1
L=0.15
W=28
nf=28
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 -1010 0 0 {name=M2
L=0.15
W=28
nf=28
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
C {devices/iopin.sym} 420 -1110 3 0 {name=p1 lab=tank_out}
C {devices/iopin.sym} 320 -1010 2 0 {name=p2 lab=bias2}
C {devices/iopin.sym} 350 -890 2 0 {name=p4 lab=bias1_input}
C {devices/iopin.sym} 420 -750 1 0 {name=p5 lab=source}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 -1010 0 0 {name=M3
L=0.15
W=20
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -1060 0 0 {name=M4
L=0.15
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -1000 0 0 {name=l1 sig_type=std_logic lab=source}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -880 0 0 {name=M5
L=0.15
W=28
nf=28
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
C {devices/lab_pin.sym} 200 -820 0 0 {name=l2 sig_type=std_logic lab=source}
C {sky130_fd_pr/diode.sym} 360 -820 0 0 {name=D2
model=diode_pw2nd_05v5
area=202.5m
}
C {sky130_fd_pr/diode.sym} 330 -960 0 0 {name=D1
model=diode_pw2nd_05v5
area=202.5m
}
