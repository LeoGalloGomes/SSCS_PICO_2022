v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -880 540 -850 540 { lab=#net1}
N -880 540 -880 590 { lab=#net1}
N -690 500 -690 540 { lab=IN}
N -2090 540 -2060 540 { lab=GND}
N -2090 540 -2090 590 { lab=GND}
N -2000 540 -1990 540 { lab=#net2}
N -2090 590 -2090 650 { lab=GND}
N -300 -330 -270 -330 { lab=#net3}
N -300 -330 -300 -280 { lab=#net3}
N -210 -330 -200 -330 { lab=IN3}
N -200 -330 -120 -330 { lab=IN3}
N -120 -330 -120 -310 { lab=IN3}
N -120 -380 -120 -330 { lab=IN3}
N 240 350 270 350 { lab=GND}
N -1000 350 -970 350 { lab=#net4}
N -1070 350 -1060 350 { lab=IN1}
N -970 430 -970 460 { lab=GND}
N -970 350 -970 370 { lab=#net4}
N -790 540 -770 540 { lab=IN}
N -710 540 -690 540 { lab=IN}
N -1990 540 -1970 540 { lab=#net2}
N 170 350 180 350 { lab=#net5}
N -770 540 -710 540 { lab=IN}
N -1130 350 -1070 350 { lab=IN1}
N -1210 350 -1140 350 { lab=IN1}
N -1140 350 -1130 350 { lab=IN1}
N -1210 310 -1210 350 { lab=IN1}
N -40 330 -40 350 { lab=load}
N -1860 520 -1860 540 { lab=load1}
N -1910 540 -1890 540 { lab=load1}
N 30 350 60 350 { lab=load}
N 120 350 170 350 { lab=#net5}
N -40 350 30 350 { lab=load}
N -70 350 -40 350 { lab=load}
N -1240 350 -1210 350 { lab=IN1}
N -1890 540 -1860 540 { lab=load1}
N -1860 540 -1820 540 { lab=load1}
N -1340 350 -1300 350 { lab=#net6}
N -1500 -50 -1420 -50 { lab=#net7}
N -1550 -50 -1550 -30 { lab=#net7}
N -1620 -50 -1550 -50 { lab=#net7}
N -1620 -50 -1620 -40 { lab=#net7}
N -1550 -50 -1500 -50 { lab=#net7}
N -1820 540 -1800 540 { lab=load1}
N -1550 380 -1550 480 { lab=#net8}
N -1550 370 -1550 380 { lab=#net8}
N -1640 540 -1610 540 { lab=#net9}
N -1680 540 -1640 540 { lab=#net9}
N -1680 510 -1680 540 { lab=#net9}
N -1680 420 -1680 450 { lab=#net10}
N -1680 360 -1680 420 { lab=#net10}
N -1740 540 -1680 540 { lab=#net9}
N -1680 350 -1680 360 { lab=#net10}
N -1420 -50 -1330 -50 { lab=#net7}
N -470 540 -440 540 { lab=#net11}
N -510 540 -470 540 { lab=#net11}
N -510 510 -510 540 { lab=#net11}
N -510 420 -510 450 { lab=#net12}
N -510 360 -510 420 { lab=#net12}
N -570 540 -510 540 { lab=#net11}
N -510 350 -510 360 { lab=#net12}
N -690 540 -650 540 { lab=IN}
N -650 540 -630 540 { lab=IN}
N -1550 130 -1550 370 { lab=#net8}
N -1610 480 -1610 510 { lab=#net8}
N -1610 480 -1550 480 { lab=#net8}
N -1310 480 -1310 540 { lab=#net6}
N -1340 480 -1310 480 { lab=#net6}
N -1340 350 -1340 480 { lab=#net6}
N -1340 270 -1340 350 { lab=#net6}
N -1340 -50 -1340 210 { lab=#net7}
N -1550 70 -1550 130 { lab=#net8}
N -1550 -30 -1550 10 { lab=#net7}
N -170 350 -130 350 { lab=#net13}
N -330 -50 -250 -50 { lab=#net14}
N -380 -50 -380 -30 { lab=#net14}
N -450 -50 -380 -50 { lab=#net14}
N -450 -50 -450 -40 { lab=#net14}
N -380 -50 -330 -50 { lab=#net14}
N -380 380 -380 480 { lab=#net15}
N -380 370 -380 380 { lab=#net15}
N -250 -50 -160 -50 { lab=#net14}
N -380 130 -380 370 { lab=#net15}
N -440 480 -440 510 { lab=#net15}
N -440 480 -380 480 { lab=#net15}
N -140 480 -140 540 { lab=#net13}
N -170 480 -140 480 { lab=#net13}
N -170 350 -170 480 { lab=#net13}
N -170 270 -170 350 { lab=#net13}
N -170 -50 -170 210 { lab=#net14}
N -380 70 -380 130 { lab=#net15}
N -380 -30 -380 10 { lab=#net14}
C {devices/code.sym} -1300 -330 0 0 {name=TT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.option wnflag = 1
.lib /home/leonardo/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
* Corner
*.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/vsource.sym} -880 620 0 0 {name=Vin1 value="0 AC 1"}
C {devices/lab_pin.sym} -690 500 1 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/gnd.sym} -880 650 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -1120 -410 0 0 {name=s1 only_toplevel=false 
value=".save all
.control
*op
ac lin 201 500e6 200e9
let S11=(IN+50*I(Vin1))/(IN-50*I(Vin1))
let S21=(load-50*I(Vmeas))/(IN-50*I(Vin1))
let S22=(IN1+50*I(Vin2))/(IN1-50*I(Vin2))
let S12=(load1-50*I(Vmeas1))/(IN1-50*I(Vin2))
let S33=2*IN3-1
settype s-param S11 S21 S22 S12
let delta=(S11*S22)-(S21*S12)
let K=(1-(mag(S11))^2-(mag(S22))^2+(mag(delta))^2)/(2*mag(S12*S21))
let MSG=mag(S21)/mag(S12)*(K-sqrt(K^2-1))
let Rbase=50
plot dB(MSG)
save S11 S12 S21 S22
wrs2p sparam12.s2p
.endc
"}
C {devices/gnd.sym} -2090 650 0 0 {name=l10 lab=GND}
C {devices/res_ac.sym} -820 540 3 0 {name=Rsource
value=50
ac=50
m=1}
C {devices/res_ac.sym} -2030 540 3 0 {name=Rload2
value=50
ac=50
m=1}
C {devices/capa.sym} -120 -280 0 0 {name=C5
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -300 -250 0 0 {name=V7 value="0 AC 1"}
C {devices/gnd.sym} -300 -220 0 0 {name=l18 lab=GND}
C {devices/res_ac.sym} -240 -330 3 0 {name=R4
value=50
ac=50
m=1}
C {devices/gnd.sym} -120 -250 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} -120 -380 1 0 {name=l20 sig_type=std_logic lab=IN3}
C {devices/gnd.sym} 270 350 0 1 {name=l6 lab=GND}
C {devices/res_ac.sym} 210 350 3 0 {name=Rload
value=50
ac=50
m=1}
C {devices/vsource.sym} -970 400 0 0 {name=Vin2 value="0 AC 1"}
C {devices/gnd.sym} -970 460 0 1 {name=l13 lab=GND}
C {devices/res_ac.sym} -1030 350 3 0 {name=Rsource2
value=50
ac=50
m=1}
C {devices/lab_pin.sym} -1210 310 1 0 {name=l8 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -40 330 1 0 {name=l15 sig_type=std_logic lab=load}
C {devices/lab_pin.sym} -1860 520 1 0 {name=l16 sig_type=std_logic lab=load1}
C {devices/ammeter.sym} 90 350 1 0 {name=Vmeas}
C {devices/ammeter.sym} -1940 540 3 0 {name=Vmeas1}
C {devices/gnd.sym} -1680 290 2 1 {name=l11 lab=GND}
C {devices/vsource.sym} -1680 320 2 0 {name=V5 value=1.3}
C {devices/gnd.sym} -1680 290 2 1 {name=l29 lab=GND}
C {devices/gnd.sym} -1620 20 0 1 {name=l36 lab=GND}
C {devices/vsource.sym} -1620 -10 0 0 {name=V9 value=1.8}
C {devices/gnd.sym} -1620 20 0 1 {name=l37 lab=GND}
C {devices/gnd.sym} -1460 600 0 1 {name=l5 lab=GND}
C {devices/capa.sym} -1770 540 3 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} -1680 480 0 1 {name=L5
m=1
value=1m
footprint=1206
device=inductor}
C {devices/capa.sym} -1270 350 3 0 {name=C6
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -510 290 2 1 {name=l2 lab=GND}
C {devices/vsource.sym} -510 320 2 0 {name=V1 value=1.2}
C {devices/gnd.sym} -510 290 2 1 {name=l7 lab=GND}
C {devices/ind.sym} -510 480 0 1 {name=L2
m=1
value=1m
footprint=1206
device=inductor}
C {devices/capa.sym} -100 350 3 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -600 540 3 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -1640 200 1 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -1580 200 3 0 {name=C8
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -1670 200 1 1 {name=l25 lab=GND}
C {/home/leonardo/sky130_projects/SSCS_PICO/LNA_Vband/core_v3_PEX.sym} -1460 540 0 0 {name=x2}
C {devices/ind.sym} -1340 240 0 1 {name=L6
m=1
value=1m
footprint=1206
device=inductor}
C {devices/ind.sym} -1550 40 0 1 {name=L7
m=1
value=1m
footprint=1206
device=inductor}
C {devices/gnd.sym} -450 20 0 1 {name=l4 lab=GND}
C {devices/vsource.sym} -450 -10 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -450 20 0 1 {name=l9 lab=GND}
C {devices/gnd.sym} -290 600 0 1 {name=l12 lab=GND}
C {devices/res.sym} -470 200 1 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -410 200 3 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -500 200 1 1 {name=l14 lab=GND}
C {/home/leonardo/sky130_projects/SSCS_PICO/LNA_Vband/core_v3_PEX.sym} -290 540 0 0 {name=x1}
C {devices/ind.sym} -170 240 0 1 {name=L1
m=1
value=1m
footprint=1206
device=inductor}
C {devices/ind.sym} -380 40 0 1 {name=L3
m=1
value=1m
footprint=1206
device=inductor}
