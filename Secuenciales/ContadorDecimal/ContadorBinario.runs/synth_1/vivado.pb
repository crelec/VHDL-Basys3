
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:092default:default2
00:00:092default:default2
485.4262default:default2
194.9882default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/utils_1/imports/synth_1/SupContador.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
tD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/utils_1/imports/synth_1/SupContador.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
x
Command: %s
53*	vivadotcl2G
3synth_design -top SupContador -part xc7a35tcpg236-12default:defaultZ4-113h px� 
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
169002default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1299.449 ; gain = 411.020
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
SupContador2default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
112default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Divisor2default:default2z
fD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Divisor.vhd2default:default2
42default:default2
uo2default:default2
Divisor2default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
682default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Divisor2default:default2|
fD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Divisor.vhd2default:default2
102default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Divisor2default:default2
02default:default2
12default:default2|
fD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Divisor.vhd2default:default2
102default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Contador2default:default2{
gD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Contador.vhd2default:default2
52default:default2
u12default:default2
Contador2default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
692default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Contador2default:default2}
gD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Contador.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Contador2default:default2
02default:default2
12default:default2}
gD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/Contador.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
BinarioBCD_V22default:default2�
lD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/BinarioBCD_V2.vhd2default:default2
52default:default2
u22default:default2!
BinarioBCD_V22default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
702default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
BinarioBCD_V22default:default2�
lD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/BinarioBCD_V2.vhd2default:default2
102default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
BinarioBCD_V22default:default2
02default:default2
12default:default2�
lD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/BinarioBCD_V2.vhd2default:default2
102default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Mux4a12default:default2�
wD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/Mux4a1.vhd2default:default2
42default:default2
u32default:default2
Mux4a12default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
712default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Mux4a12default:default2�
wD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/Mux4a1.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Mux4a12default:default2
02default:default2
12default:default2�
wD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/Mux4a1.vhd2default:default2
132default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
cuenta12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/cuenta1.vhd2default:default2
52default:default2
u42default:default2
cuenta12default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
722default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
cuenta12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/cuenta1.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cuenta12default:default2
02default:default2
12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/cuenta1.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
divide12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/divide1.vhd2default:default2
52default:default2
u52default:default2
divide12default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
732default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
divide12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/divide1.vhd2default:default2
102default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
divide12default:default2
02default:default2
12default:default2�
xD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/divide1.vhd2default:default2
102default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
ModuloDisplay2default:default2�
�D:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/imports/Combinacionales/Display7segmento/Display7segmento.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
42default:default2
u62default:default2!
ModuloDisplay2default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
742default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
ModuloDisplay2default:default2�
�D:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/imports/Combinacionales/Display7segmento/Display7segmento.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
ModuloDisplay2default:default2
02default:default2
12default:default2�
�D:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/imports/Combinacionales/Display7segmento/Display7segmento.srcs/sources_1/new/ModuloDisplay.vhd2default:default2
92default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
negacion2default:default2�
yD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/negacion.vhd2default:default2
42default:default2
u72default:default2
negacion2default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
752default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
negacion2default:default2�
yD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/negacion.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
negacion2default:default2
02default:default2
12default:default2�
yD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/imports/sources_1/new/negacion.vhd2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SupContador2default:default2
02default:default2
12default:default2�
jD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/sources_1/new/SupContador.vhd2default:default2
112default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1391.668 ; gain = 503.238
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1391.668 ; gain = 503.238
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1391.668 ; gain = 503.238
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
00:00:00.0042default:default2
1391.6682default:default2
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
179*designutils2z
dD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/constrs_1/new/pines.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2z
dD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/constrs_1/new/pines.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2x
dD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.srcs/constrs_1/new/pines.xdc2default:default21
.Xil/SupContador_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1493.1642default:default2
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
00:00:00.0032default:default2
1493.1642default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
,	   2 Input   26 Bit       Adders := 1     
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
,	   2 Input    4 Bit       Adders := 31    
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
.	               26 Bit    Registers := 1     
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
.	                1 Bit    Registers := 4     
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
,	   2 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 22    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
}Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
|Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
vFinished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
|2     |CARRY4 |    16|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     5|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    38|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     8|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    12|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    13|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    52|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |    45|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    20|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     2|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |    11|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:36 . Memory (MB): peak = 1493.164 ; gain = 503.238
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1493.164 ; gain = 604.734
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
00:00:00.0022default:default2
1493.1642default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
162default:defaultZ29-17h px� 
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
00:00:002default:default2
1493.1642default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
e482df012default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
12default:default2
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
00:00:392default:default2
00:00:462default:default2
1493.1642default:default2
982.8552default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
dD:/Repo-Lenovo/VHDL-Basys3/Secuenciales/ContadorDecimal/ContadorBinario.runs/synth_1/SupContador.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file SupContador_utilization_synth.rpt -pb SupContador_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Oct 24 16:14:50 20232default:defaultZ17-206h px� 


End Record