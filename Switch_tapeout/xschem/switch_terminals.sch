v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -30 -50 -30 0 { lab=#net1}
N -30 0 20 -0 { lab=#net1}
N 60 30 60 90 { lab=Gnd}
N 60 -140 60 -30 { lab=Port2}
N -30 -410 -30 -360 { lab=#net2}
N -30 -410 20 -410 { lab=#net2}
N 60 -500 60 -440 { lab=Gnd}
N 60 -380 60 -270 { lab=Port2}
N -30 -360 -30 -110 { lab=#net2}
N 60 -270 60 -140 { lab=Port2}
N 60 -240 270 -240 { lab=Port2}
N -110 -80 -50 -80 { lab=Gnd}
N -30 -510 -30 -410 { lab=#net2}
N -110 -540 -50 -540 { lab=Gnd}
N -30 -640 -30 -570 { lab=#net3}
N -170 -820 -30 -820 { lab=#net4}
N -480 -820 -340 -820 { lab=#net5}
N -340 -640 -170 -640 { lab=#net6}
N -650 -640 -480 -640 { lab=#net7}
N -650 -900 -650 -820 { lab=Enable}
N -160 -240 60 -240 { lab=Port2}
N -290 -240 -220 -240 { lab=Port1}
N 270 -240 270 -160 { lab=Port2}
N 270 -100 270 -50 { lab=Port3}
N 460 -50 460 0 { lab=#net8}
N 410 0 460 0 { lab=#net8}
N 370 30 370 90 { lab=Gnd}
N 370 -140 370 -30 { lab=Port2}
N 460 -410 460 -360 { lab=#net9}
N 410 -410 460 -410 { lab=#net9}
N 370 -500 370 -440 { lab=Gnd}
N 370 -380 370 -270 { lab=Port2}
N 460 -360 460 -110 { lab=#net9}
N 370 -270 370 -140 { lab=Port2}
N 480 -80 540 -80 { lab=Gnd}
N 460 -510 460 -410 { lab=#net9}
N 480 -540 540 -540 { lab=Gnd}
N 460 -640 460 -570 { lab=#net10}
N 460 -820 600 -820 { lab=#net11}
N 770 -820 910 -820 { lab=#net12}
N 600 -640 770 -640 { lab=#net13}
N 910 -640 1080 -640 { lab=#net14}
N 1080 -900 1080 -820 { lab=/Enable}
N 270 -240 370 -240 { lab=Port2}
N 370 -240 650 -240 { lab=Port2}
N 60 0 120 0 { lab=Gnd}
N 310 0 370 0 { lab=Gnd}
N 60 -410 120 -410 { lab=Gnd}
N 310 -410 370 -410 { lab=Gnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 0 0 0 {name=M1
L=0.15
W=76
nf=19
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
C {sky130_fd_pr/res_xhigh_po.sym} -30 -80 0 0 {name=R1
W=0.35
L=48.145
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 60 90 0 0 {name=l1 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 -410 2 1 {name=M2
L=0.15
W=76
nf=19
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
C {devices/lab_pin.sym} 60 -500 2 1 {name=l2 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} -110 -80 1 0 {name=l3 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -30 -540 0 0 {name=R2
W=0.35
L=50.495
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -110 -540 1 0 {name=l4 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -30 -670 0 0 {name=R3
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -50 -670 0 0 {name=l5 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -30 -730 0 0 {name=R4
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -50 -730 0 0 {name=l6 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -30 -790 0 0 {name=R5
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -50 -790 0 0 {name=l7 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -170 -670 0 1 {name=R6
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -150 -670 0 1 {name=l8 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -170 -730 0 1 {name=R7
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -150 -730 0 1 {name=l9 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -170 -790 0 1 {name=R8
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -150 -790 0 1 {name=l10 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -340 -670 0 0 {name=R9
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -360 -670 0 0 {name=l11 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -340 -730 0 0 {name=R10
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -360 -730 0 0 {name=l12 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -340 -790 0 0 {name=R11
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -360 -790 0 0 {name=l13 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -480 -670 0 1 {name=R12
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -460 -670 0 1 {name=l14 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -480 -730 0 1 {name=R13
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -460 -730 0 1 {name=l15 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -480 -790 0 1 {name=R14
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -460 -790 0 1 {name=l16 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -650 -670 0 0 {name=R15
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -670 -670 0 0 {name=l17 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -650 -730 0 0 {name=R16
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -670 -730 0 0 {name=l18 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} -650 -790 0 0 {name=R17
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -670 -790 0 0 {name=l19 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_generic_m1.sym} -190 -240 1 0 {name=R18
W=23.5
L=2
model=res_generic_m1
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 270 -130 2 0 {name=R19
W=23.5
L=2
model=res_generic_m1
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 0 0 1 {name=M3
L=0.15
W=76
nf=19
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
C {sky130_fd_pr/res_xhigh_po.sym} 460 -80 0 1 {name=R20
W=0.35
L=48.145
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 370 90 0 1 {name=l20 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 -410 2 0 {name=M4
L=0.15
W=76
nf=19
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
C {devices/lab_pin.sym} 370 -500 2 0 {name=l21 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 540 -80 3 1 {name=l22 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 460 -540 0 1 {name=R21
W=0.35
L=50.495
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 540 -540 3 1 {name=l23 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 460 -670 0 1 {name=R22
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 480 -670 0 1 {name=l24 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 460 -730 0 1 {name=R23
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 480 -730 0 1 {name=l25 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 460 -790 0 1 {name=R24
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 480 -790 0 1 {name=l26 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -670 0 0 {name=R25
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 580 -670 0 0 {name=l27 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -730 0 0 {name=R26
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 580 -730 0 0 {name=l28 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -790 0 0 {name=R27
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 580 -790 0 0 {name=l29 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 770 -670 0 1 {name=R28
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 790 -670 0 1 {name=l30 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 770 -730 0 1 {name=R29
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 790 -730 0 1 {name=l31 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 770 -790 0 1 {name=R30
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 790 -790 0 1 {name=l32 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 910 -670 0 0 {name=R31
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 890 -670 0 0 {name=l33 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 910 -730 0 0 {name=R32
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 890 -730 0 0 {name=l34 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 910 -790 0 0 {name=R33
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 890 -790 0 0 {name=l35 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 1080 -670 0 1 {name=R34
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1100 -670 0 1 {name=l36 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 1080 -730 0 1 {name=R35
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1100 -730 0 1 {name=l37 sig_type=std_logic lab=Gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 1080 -790 0 1 {name=R36
W=0.35
L=45
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1100 -790 0 1 {name=l38 sig_type=std_logic lab=Gnd}
C {devices/iopin.sym} -290 -240 2 0 {name=p1 lab=Port1}
C {devices/iopin.sym} 650 -240 0 0 {name=p2 lab=Port2}
C {devices/iopin.sym} 270 -50 1 0 {name=p3 lab=Port3}
C {devices/lab_pin.sym} 120 0 3 0 {name=l39 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 310 0 1 0 {name=l40 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 120 -410 3 0 {name=l41 sig_type=std_logic lab=Gnd}
C {devices/lab_pin.sym} 310 -410 1 0 {name=l42 sig_type=std_logic lab=Gnd}
C {devices/iopin.sym} -650 -900 3 0 {name=p4 lab=Enable}
C {devices/iopin.sym} 1080 -900 3 0 {name=p5 lab=/Enable}
C {devices/iopin.sym} 220 -730 3 0 {name=p6 lab=Gnd}
