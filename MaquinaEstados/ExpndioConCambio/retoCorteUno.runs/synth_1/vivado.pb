
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:132default:default2
00:00:142default:default2
484.6992default:default2
200.9612default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/utils_1/imports/synth_1/Superior.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2m
YC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/utils_1/imports/synth_1/Superior.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
u
Command: %s
53*	vivadotcl2D
0synth_design -top Superior -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
216882default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1298.414 ; gain = 411.250
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
Superior2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
162default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Presenta2default:default2c
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
42default:default2
u02default:default2
Presenta2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
852default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Presenta2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
122default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Mux4a12default:default2a
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Mux4a1.vhd2default:default2
42default:default2
u12default:default2
Mux4a12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
522default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Mux4a12default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Mux4a1.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Mux4a12default:default2
02default:default2
12default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Mux4a1.vhd2default:default2
132default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
ModuloDisplay2default:default2h
TC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
42default:default2
u22default:default2!
ModuloDisplay2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
532default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
ModuloDisplay2default:default2j
TC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
ModuloDisplay2default:default2
02default:default2
12default:default2j
TC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
92default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Cuenta12default:default2b
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/cuenta1.vhd2default:default2
52default:default2
u32default:default2
Cuenta12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
542default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Cuenta12default:default2d
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/cuenta1.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Cuenta12default:default2
02default:default2
12default:default2d
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/cuenta1.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
negacion2default:default2c
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/negacion.vhd2default:default2
42default:default2
u42default:default2
negacion2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
552default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
negacion2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/negacion.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
negacion2default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/negacion.vhd2default:default2
92default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
divide12default:default2b
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/divide1.vhd2default:default2
42default:default2
u52default:default2
divide12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
562default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
divide12default:default2d
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/divide1.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
divide12default:default2
02default:default2
12default:default2d
NC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/divide1.vhd2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Presenta2default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/presenta.vhd2default:default2
122default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Temp1s2default:default2a
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp1s.vhd2default:default2
42default:default2
u12default:default2
Temp1s2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
862default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Temp1s2default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp1s.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Temp1s2default:default2
02default:default2
12default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp1s.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Temp5s2default:default2a
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp5s.vhd2default:default2
42default:default2
u22default:default2
Temp5s2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
872default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Temp5s2default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp5s.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Temp5s2default:default2
02default:default2
12default:default2c
MC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Temp5s.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

SupRebote12default:default2e
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote1.vhd2default:default2
52default:default2
u32default:default2

SupRebote12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
882default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

SupRebote12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote1.vhd2default:default2
122default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TempReb12default:default2c
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb1.vhd2default:default2
42default:default2
u02default:default2
TempReb12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote1.vhd2default:default2
342default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TempReb12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb1.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TempReb12default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb1.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
Maq_estadoReb12default:default2i
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb1.vhd2default:default2
42default:default2
u12default:default2"
Maq_estadoReb12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote1.vhd2default:default2
352default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
Maq_estadoReb12default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb1.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
Maq_estadoReb12default:default2
02default:default2
12default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb1.vhd2default:default2
132default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

SupRebote12default:default2
02default:default2
12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote1.vhd2default:default2
122default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

SupRebote22default:default2e
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote2.vhd2default:default2
52default:default2
u42default:default2

SupRebote22default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
892default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

SupRebote22default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote2.vhd2default:default2
122default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TempReb22default:default2c
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb2.vhd2default:default2
42default:default2
u02default:default2
TempReb22default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote2.vhd2default:default2
342default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TempReb22default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb2.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TempReb22default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb2.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
Maq_estadoReb22default:default2i
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb2.vhd2default:default2
42default:default2
u12default:default2"
Maq_estadoReb22default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote2.vhd2default:default2
352default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
Maq_estadoReb22default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb2.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
Maq_estadoReb22default:default2
02default:default2
12default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb2.vhd2default:default2
132default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

SupRebote22default:default2
02default:default2
12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote2.vhd2default:default2
122default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

SupRebote52default:default2e
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote5.vhd2default:default2
52default:default2
u52default:default2

SupRebote52default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
902default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

SupRebote52default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote5.vhd2default:default2
122default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TempReb52default:default2c
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb5.vhd2default:default2
42default:default2
u02default:default2
TempReb52default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote5.vhd2default:default2
342default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TempReb52default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb5.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TempReb52default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/TempReb5.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
Maq_estadoReb52default:default2i
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb5.vhd2default:default2
42default:default2
u12default:default2"
Maq_estadoReb52default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote5.vhd2default:default2
352default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
Maq_estadoReb52default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb5.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
Maq_estadoReb52default:default2
02default:default2
12default:default2k
UC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Maq_estadoReb5.vhd2default:default2
132default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

SupRebote52default:default2
02default:default2
12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/SupRebote5.vhd2default:default2
122default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

MaqEstados2default:default2e
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
42default:default2
u62default:default2

MaqEstados2default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
912default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

MaqEstados2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
182default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
In_fin1s2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
332default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
In_fin5s2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
332default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

MaqEstados2default:default2
02default:default2
12default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
182default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Superior2default:default2
02default:default2
12default:default2e
OC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/Superior.vhd2default:default2
162default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1393.086 ; gain = 505.922
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1393.086 ; gain = 505.922
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1393.086 ; gain = 505.922
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1393.0862default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2b
LC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/constrs_1/new/pines.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2b
LC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/constrs_1/new/pines.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
LC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/constrs_1/new/pines.xdc2default:default2.
.Xil/Superior_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1493.1372default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1493.1372default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
estadoActual_reg2default:default2"
Maq_estadoReb12default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
estadoActual_reg2default:default2"
Maq_estadoReb22default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
estadoActual_reg2default:default2"
Maq_estadoReb52default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
estadoActual_reg2default:default2

MaqEstados2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
estadoActual_reg2default:default2

sequential2default:default2"
Maq_estadoReb12default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
estadoActual_reg2default:default2

sequential2default:default2"
Maq_estadoReb22default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
estadoActual_reg2default:default2

sequential2default:default2"
Maq_estadoReb52default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |         000000000000000000000001 |                            00000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s100 |         000000000000000000000010 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s200 |         000000000000000000000100 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s300 |         000000000000000000001000 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s400 |         000000000000000000010000 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s500 |         000000000000000000100000 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s600 |         000000000000000001000000 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s700 |         000000000000000010000000 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s800 |         000000000000000100000000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s900 |         000000000000001000000000 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1000 |         000000000000010000000000 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1100 |         000000000000100000000000 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1200 |         000000000001000000000000 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1300 |         000000000010000000000000 |                            01101
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1800 |         000000000100000000000000 |                            10010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   v1800 |         000000001000000000000000 |                            10110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1400 |         000000010000000000000000 |                            01110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1600 |         000000100000000000000000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   v1600 |         000001000000000000000000 |                            10100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1900 |         000010000000000000000000 |                            10011
2default:defaulth p
x
� 
�
%s
*synth2s
_                   v1900 |         000100000000000000000000 |                            10111
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1700 |         001000000000000000000000 |                            10001
2default:defaulth p
x
� 
�
%s
*synth2s
_                   v1700 |         010000000000000000000000 |                            10101
2default:defaulth p
x
� 
�
%s
*synth2s
_                   s1500 |         100000000000000000000000 |                            01111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
estadoActual_reg2default:default2
one-hot2default:default2

MaqEstados2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
LEDS_reg2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
2722default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Ce1s_reg2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
2922default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Ce5s_reg2default:default2g
QC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.srcs/sources_1/new/MaqEstados.vhd2default:default2
3172default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   29 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   27 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   29 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   27 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 60    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  24 Input   24 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  24 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  24 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  24 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
u6/Ce1s_reg2default:default2
Superior2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
u6/Ce5s_reg2default:default2
Superior2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:52 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:52 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    37|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     5|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    19|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     7|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    96|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    30|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |   133|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |   165|
2default:defaulth px� 
D
%s*synth2,
|10    |FDPE   |     1|
2default:defaulth px� 
D
%s*synth2,
|11    |FDRE   |    20|
2default:defaulth px� 
D
%s*synth2,
|12    |LD     |     4|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |     5|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |    15|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:53 . Memory (MB): peak = 1493.137 ; gain = 505.922
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:53 ; elapsed = 00:00:56 . Memory (MB): peak = 1493.137 ; gain = 605.973
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1493.1372default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
412default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1493.1372default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 4 instances were transformed.
  LD => LDCE: 4 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
47e413af2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
852default:default2
82default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:012default:default2
00:01:072default:default2
1493.1372default:default2
983.5822default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2]
IC:/Repo-Asus-2024/ExpndioConCambio/retoCorteUno.runs/synth_1/Superior.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file Superior_utilization_synth.rpt -pb Superior_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr  1 15:24:42 20252default:defaultZ17-206h px� 


End Record