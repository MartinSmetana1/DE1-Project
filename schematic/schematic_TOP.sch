# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top_level work:top_level:NOFILE -nosplit
load symbol clock_enable work:clock_enable:NOFILE HIERBOX pin clk input.left pin pulse output.right pin rst input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol pwm work:abstract:NOFILE HIERBOX pin btn_down input.left pin btn_up input.left pin clk input.left pin pwm_out output.right pin rst input.left pinBus hundreds_out output.right [3:0] pinBus ones_out output.right [3:0] pinBus tens_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pwm work:pwm:NOFILE HIERBOX pin btn_down input.left pin btn_up input.left pin clk input.left pin pwm_out output.right pin rst input.left pinBus hundreds_out output.right [3:0] pinBus ones_out output.right [3:0] pinBus tens_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol bin2segMult work:bin2segMult:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus POS_OUT output.right [7:0] pinBus hundreds_1 input.left [3:0] pinBus hundreds_2 input.left [3:0] pinBus ones_1 input.left [3:0] pinBus ones_2 input.left [3:0] pinBus seg output.right [6:0] pinBus tens_1 input.left [3:0] pinBus tens_2 input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port BTNC input -pg 1 -lvl 0 -x 0 -y 410
load port BTND input -pg 1 -lvl 0 -x 0 -y 50
load port BTNU input -pg 1 -lvl 0 -x 0 -y 320
load port CA output -pg 1 -lvl 4 -x 1160 -y 200
load port CB output -pg 1 -lvl 4 -x 1160 -y 140
load port CC output -pg 1 -lvl 4 -x 1160 -y 160
load port CD output -pg 1 -lvl 4 -x 1160 -y 180
load port CE output -pg 1 -lvl 4 -x 1160 -y 220
load port CF output -pg 1 -lvl 4 -x 1160 -y 240
load port CG output -pg 1 -lvl 4 -x 1160 -y 260
load port CLK100MHZ input -pg 1 -lvl 0 -x 0 -y 270
load port DP output -pg 1 -lvl 4 -x 1160 -y 320
load port LED16_B output -pg 1 -lvl 4 -x 1160 -y 20
load port LED16_R output -pg 1 -lvl 4 -x 1160 -y 280
load port SW input -pg 1 -lvl 0 -x 0 -y 120
load portBus AN output [7:0] -attr @name AN[7:0] -pg 1 -lvl 4 -x 1160 -y 120
load inst CLK_EN_100MS clock_enable work:clock_enable:NOFILE -autohide -attr @cell(#000000) clock_enable -pinAttr pulse @attr n/c -pg 1 -lvl 2 -x 480 -y 380
load inst PWM_IN_2 pwm work:abstract:NOFILE -autohide -attr @cell(#000000) pwm -pinBusAttr hundreds_out @name hundreds_out[3:0] -pinBusAttr ones_out @name ones_out[3:0] -pinBusAttr tens_out @name tens_out[3:0] -pg 1 -lvl 2 -x 480 -y 230
load inst PWM_in_1 pwm work:pwm:NOFILE -autohide -attr @cell(#000000) pwm -pinBusAttr hundreds_out @name hundreds_out[3:0] -pinBusAttr ones_out @name ones_out[3:0] -pinBusAttr tens_out @name tens_out[3:0] -pg 1 -lvl 2 -x 480 -y 70
load inst btn_down_pwm1_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 180 -y 60
load inst btn_down_pwm2_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 180 -y 180
load inst btn_up_pwm1_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 180 -y 330
load inst btn_up_pwm2_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 180 -y 470
load inst display bin2segMult work:bin2segMult:NOFILE -autohide -attr @cell(#000000) bin2segMult -pinBusAttr POS_OUT @name POS_OUT[7:0] -pinBusAttr hundreds_1 @name hundreds_1[3:0] -pinBusAttr hundreds_2 @name hundreds_2[3:0] -pinBusAttr ones_1 @name ones_1[3:0] -pinBusAttr ones_2 @name ones_2[3:0] -pinBusAttr seg @name seg[6:0] -pinBusAttr tens_1 @name tens_1[3:0] -pinBusAttr tens_2 @name tens_2[3:0] -pg 1 -lvl 3 -x 930 -y 70
load net <const0> -ground -pin btn_down_pwm1_i I1 -pin btn_down_pwm2_i I1 -pin btn_up_pwm1_i I1 -pin btn_up_pwm2_i I1
load net <const1> -power -port DP
load net AN[0] -attr @rip POS_OUT[0] -port AN[0] -pin display POS_OUT[0]
load net AN[1] -attr @rip POS_OUT[1] -port AN[1] -pin display POS_OUT[1]
load net AN[2] -attr @rip POS_OUT[2] -port AN[2] -pin display POS_OUT[2]
load net AN[3] -attr @rip POS_OUT[3] -port AN[3] -pin display POS_OUT[3]
load net AN[4] -attr @rip POS_OUT[4] -port AN[4] -pin display POS_OUT[4]
load net AN[5] -attr @rip POS_OUT[5] -port AN[5] -pin display POS_OUT[5]
load net AN[6] -attr @rip POS_OUT[6] -port AN[6] -pin display POS_OUT[6]
load net AN[7] -attr @rip POS_OUT[7] -port AN[7] -pin display POS_OUT[7]
load net BTNC -port BTNC -pin CLK_EN_100MS rst -pin PWM_IN_2 rst -pin PWM_in_1 rst -pin display reset
netloc BTNC 1 0 3 NJ 410 370 180 N
load net BTND -port BTND -pin btn_down_pwm1_i I0 -pin btn_down_pwm2_i I0
netloc BTND 1 0 1 60 50n
load net BTNU -port BTNU -pin btn_up_pwm1_i I0 -pin btn_up_pwm2_i I0
netloc BTNU 1 0 1 20 320n
load net CA -attr @rip seg[6] -port CA -pin display seg[6]
load net CB -attr @rip seg[5] -port CB -pin display seg[5]
load net CC -attr @rip seg[4] -port CC -pin display seg[4]
load net CD -attr @rip seg[3] -port CD -pin display seg[3]
load net CE -attr @rip seg[2] -port CE -pin display seg[2]
load net CF -attr @rip seg[1] -port CF -pin display seg[1]
load net CG -attr @rip seg[0] -port CG -pin display seg[0]
load net CLK100MHZ -port CLK100MHZ -pin CLK_EN_100MS clk -pin PWM_IN_2 clk -pin PWM_in_1 clk -pin display clk
netloc CLK100MHZ 1 0 3 NJ 270 350 20 730
load net LED16_B -port LED16_B -pin PWM_in_1 pwm_out
netloc LED16_B 1 2 2 750J 20 NJ
load net LED16_R -port LED16_R -pin PWM_IN_2 pwm_out
netloc LED16_R 1 2 2 NJ 280 NJ
load net SW -port SW -pin btn_down_pwm1_i S -pin btn_down_pwm2_i S -pin btn_up_pwm1_i S -pin btn_up_pwm2_i S
netloc SW 1 0 1 40 120n
load net btn_down -pin PWM_in_1 btn_down -pin btn_down_pwm1_i O
netloc btn_down 1 1 1 370 60n
load net btn_down_pwm2_i_n_0 -pin PWM_IN_2 btn_down -pin btn_down_pwm2_i O
netloc btn_down_pwm2_i_n_0 1 1 1 330 180n
load net btn_up -pin PWM_in_1 btn_up -pin btn_up_pwm1_i O
netloc btn_up 1 1 1 310 100n
load net btn_up_pwm2_i_n_0 -pin PWM_IN_2 btn_up -pin btn_up_pwm2_i O
netloc btn_up_pwm2_i_n_0 1 1 1 390 260n
load net hundreds_1[0] -attr @rip hundreds_out[0] -pin PWM_in_1 hundreds_out[0] -pin display hundreds_1[0]
load net hundreds_1[1] -attr @rip hundreds_out[1] -pin PWM_in_1 hundreds_out[1] -pin display hundreds_1[1]
load net hundreds_1[2] -attr @rip hundreds_out[2] -pin PWM_in_1 hundreds_out[2] -pin display hundreds_1[2]
load net hundreds_1[3] -attr @rip hundreds_out[3] -pin PWM_in_1 hundreds_out[3] -pin display hundreds_1[3]
load net hundreds_2[0] -attr @rip hundreds_out[0] -pin PWM_IN_2 hundreds_out[0] -pin display hundreds_2[0]
load net hundreds_2[1] -attr @rip hundreds_out[1] -pin PWM_IN_2 hundreds_out[1] -pin display hundreds_2[1]
load net hundreds_2[2] -attr @rip hundreds_out[2] -pin PWM_IN_2 hundreds_out[2] -pin display hundreds_2[2]
load net hundreds_2[3] -attr @rip hundreds_out[3] -pin PWM_IN_2 hundreds_out[3] -pin display hundreds_2[3]
load net ones_1[0] -attr @rip ones_out[0] -pin PWM_in_1 ones_out[0] -pin display ones_1[0]
load net ones_1[1] -attr @rip ones_out[1] -pin PWM_in_1 ones_out[1] -pin display ones_1[1]
load net ones_1[2] -attr @rip ones_out[2] -pin PWM_in_1 ones_out[2] -pin display ones_1[2]
load net ones_1[3] -attr @rip ones_out[3] -pin PWM_in_1 ones_out[3] -pin display ones_1[3]
load net ones_2[0] -attr @rip ones_out[0] -pin PWM_IN_2 ones_out[0] -pin display ones_2[0]
load net ones_2[1] -attr @rip ones_out[1] -pin PWM_IN_2 ones_out[1] -pin display ones_2[1]
load net ones_2[2] -attr @rip ones_out[2] -pin PWM_IN_2 ones_out[2] -pin display ones_2[2]
load net ones_2[3] -attr @rip ones_out[3] -pin PWM_IN_2 ones_out[3] -pin display ones_2[3]
load net tens_1[0] -attr @rip tens_out[0] -pin PWM_in_1 tens_out[0] -pin display tens_1[0]
load net tens_1[1] -attr @rip tens_out[1] -pin PWM_in_1 tens_out[1] -pin display tens_1[1]
load net tens_1[2] -attr @rip tens_out[2] -pin PWM_in_1 tens_out[2] -pin display tens_1[2]
load net tens_1[3] -attr @rip tens_out[3] -pin PWM_in_1 tens_out[3] -pin display tens_1[3]
load net tens_2[0] -attr @rip tens_out[0] -pin PWM_IN_2 tens_out[0] -pin display tens_2[0]
load net tens_2[1] -attr @rip tens_out[1] -pin PWM_IN_2 tens_out[1] -pin display tens_2[1]
load net tens_2[2] -attr @rip tens_out[2] -pin PWM_IN_2 tens_out[2] -pin display tens_2[2]
load net tens_2[3] -attr @rip tens_out[3] -pin PWM_IN_2 tens_out[3] -pin display tens_2[3]
load netBundle @AN 8 AN[7] AN[6] AN[5] AN[4] AN[3] AN[2] AN[1] AN[0] -autobundled
netbloc @AN 1 3 1 1110J 120n
load netBundle @hundreds_2 4 hundreds_2[3] hundreds_2[2] hundreds_2[1] hundreds_2[0] -autobundled
netbloc @hundreds_2 1 2 1 770 120n
load netBundle @ones_2 4 ones_2[3] ones_2[2] ones_2[1] ones_2[0] -autobundled
netbloc @ones_2 1 2 1 790 160n
load netBundle @tens_2 4 tens_2[3] tens_2[2] tens_2[1] tens_2[0] -autobundled
netbloc @tens_2 1 2 1 810 220n
load netBundle @hundreds_1 4 hundreds_1[3] hundreds_1[2] hundreds_1[1] hundreds_1[0] -autobundled
netbloc @hundreds_1 1 2 1 710 80n
load netBundle @ones_1 4 ones_1[3] ones_1[2] ones_1[1] ones_1[0] -autobundled
netbloc @ones_1 1 2 1 690 100n
load netBundle @tens_1 4 tens_1[3] tens_1[2] tens_1[1] tens_1[0] -autobundled
netbloc @tens_1 1 2 1 670 140n
load netBundle @CA,CB,CC,CD,CE,CF,CG 7 CA CB CC CD CE CF CG -autobundled
netbloc @CA,CB,CC,CD,CE,CF,CG 1 3 1 1130 140n
levelinfo -pg 1 0 180 480 930 1160
pagesize -pg 1 -db -bbox -sgen -140 0 1280 560
show
fullfit
#
# initialize ictrl to current module top_level work:top_level:NOFILE
ictrl init topinfo |
