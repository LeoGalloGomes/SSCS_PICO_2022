v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -110 230 -110 { lab=#net1}
N 80 -110 140 -110 { lab=in}
N 290 -110 310 -110 { lab=#net2}
N 310 -110 310 -90 { lab=#net2}
N 310 -30 310 -0 { lab=#net3}
N 310 60 310 80 { lab=gnd}
N 400 -110 430 -110 { lab=#net4}
N 310 -110 340 -110 { lab=#net2}
N 490 -110 540 -110 { lab=out}
N 310 80 310 110 { lab=gnd}
C {devices/ind.sym} 170 -110 1 0 {name=L1
m=1
value=0.98p
footprint=1206
device=inductor}
C {devices/capa.sym} 310 -60 0 0 {name=C1
m=1
value=0.777f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 260 -110 1 0 {name=R1
value=4.85m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 310 30 0 0 {name=R2
value=45.08
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 90 -110 2 0 {name=p1 lab=in}
C {devices/iopin.sym} 530 -110 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 310 100 1 0 {name=p3 lab=gnd}
C {devices/res.sym} 370 -110 1 0 {name=R3
value=4.85m
footprint=1206
device=resistor
m=1}
C {devices/ind.sym} 460 -110 1 0 {name=L2
m=1
value=0.98p
footprint=1206
device=inductor}
