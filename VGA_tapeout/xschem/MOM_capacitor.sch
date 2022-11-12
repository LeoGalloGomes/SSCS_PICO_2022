v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -0 90 -0 { lab=in}
N 150 -0 210 0 { lab=in_dummy}
N 570 0 630 0 { lab=in}
N 450 0 510 0 { lab=out_dummy}
C {sky130_fd_pr/res_generic_m1.sym} 120 0 3 0 {name=R1
W=1.145
L=7.82
model=res_generic_m5
spiceprefix=X
mult=1}
C {devices/iopin.sym} 40 0 2 0 {name=p1 lab=in}
C {devices/iopin.sym} 200 0 0 0 {name=p2 lab=in_dummy}
C {sky130_fd_pr/res_generic_m1.sym} 540 0 1 0 {name=R2
W=1.145
L=7.82
model=res_generic_m5
spiceprefix=X
mult=1}
C {devices/iopin.sym} 620 0 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 460 0 2 0 {name=p4 lab=out_dummy}
