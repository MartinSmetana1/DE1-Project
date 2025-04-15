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
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [25:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [25:0] pinBus O output.right [25:0] fillcolor 1
load symbol RTL_LT work RTL(<) pin O output.right pinBus I0 input.left [25:0] pinBus I1 input.left [25:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_1 work[25:0]swws GEN pin C input.clk.left pinBus D input.left [25:0] pinBus Q output.right [25:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 26
load inst CLK_EN_100MS clock_enable work:clock_enable:NOFILE -autohide -attr @cell(#000000) clock_enable -attr @fillcolor #fafafa -pinAttr pulse @attr n/c -pg 1 -lvl 1 -x 60 -y 58
load inst CLK_EN_100MS|pulse_i RTL_ROM work -hier CLK_EN_100MS -attr @cell(#000000) RTL_ROM -attr @name pulse_i -pinBusAttr A @name A[25:0] -pg 1 -lvl 5 -x 1190 -y 108
load inst CLK_EN_100MS|sig_count0_i RTL_ADD work -hier CLK_EN_100MS -attr @cell(#000000) RTL_ADD -attr @name sig_count0_i -pinBusAttr I0 @name I0[25:0] -pinBusAttr O @name O[25:0] -pg 1 -lvl 3 -x 770 -y 118
load inst CLK_EN_100MS|sig_count1_i RTL_LT work -hier CLK_EN_100MS -attr @cell(#000000) RTL_LT -attr @name sig_count1_i -pinBusAttr I0 @name I0[25:0] -pinBusAttr I1 @name I1[25:0] -pinBusAttr I1 @attr V=X\"2FAF07F\" -pg 1 -lvl 1 -x 270 -y 288
load inst CLK_EN_100MS|sig_count_i RTL_MUX0 work -hier CLK_EN_100MS -attr @cell(#000000) RTL_MUX -attr @name sig_count_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 520 -y 228
load inst CLK_EN_100MS|sig_count_i__0 RTL_MUX0 work -hier CLK_EN_100MS -attr @cell(#000000) RTL_MUX -attr @name sig_count_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 770 -y 218
load inst CLK_EN_100MS|sig_count_reg[25:0] RTL_REG_SYNC__BREG_1 work[25:0]swws -hier CLK_EN_100MS -attr @cell(#000000) RTL_REG_SYNC -attr @name sig_count_reg[25:0] -pg 1 -lvl 4 -x 970 -y 108
load net CLK_EN_100MS|<const0> -ground -attr @name <const0> -pin CLK_EN_100MS|sig_count1_i I1[24] -pin CLK_EN_100MS|sig_count1_i I1[18] -pin CLK_EN_100MS|sig_count1_i I1[16] -pin CLK_EN_100MS|sig_count1_i I1[11] -pin CLK_EN_100MS|sig_count1_i I1[10] -pin CLK_EN_100MS|sig_count1_i I1[9] -pin CLK_EN_100MS|sig_count1_i I1[8] -pin CLK_EN_100MS|sig_count1_i I1[7] -pin CLK_EN_100MS|sig_count_i I0
load net CLK_EN_100MS|<const1> -power -attr @name <const1> -pin CLK_EN_100MS|sig_count0_i I1 -pin CLK_EN_100MS|sig_count1_i I1[25] -pin CLK_EN_100MS|sig_count1_i I1[23] -pin CLK_EN_100MS|sig_count1_i I1[22] -pin CLK_EN_100MS|sig_count1_i I1[21] -pin CLK_EN_100MS|sig_count1_i I1[20] -pin CLK_EN_100MS|sig_count1_i I1[19] -pin CLK_EN_100MS|sig_count1_i I1[17] -pin CLK_EN_100MS|sig_count1_i I1[15] -pin CLK_EN_100MS|sig_count1_i I1[14] -pin CLK_EN_100MS|sig_count1_i I1[13] -pin CLK_EN_100MS|sig_count1_i I1[12] -pin CLK_EN_100MS|sig_count1_i I1[6] -pin CLK_EN_100MS|sig_count1_i I1[5] -pin CLK_EN_100MS|sig_count1_i I1[4] -pin CLK_EN_100MS|sig_count1_i I1[3] -pin CLK_EN_100MS|sig_count1_i I1[2] -pin CLK_EN_100MS|sig_count1_i I1[1] -pin CLK_EN_100MS|sig_count1_i I1[0] -pin CLK_EN_100MS|sig_count_i I1 -pin CLK_EN_100MS|sig_count_i__0 I0
load net CLK_EN_100MS|clk -attr @name clk -hierPin CLK_EN_100MS clk -pin CLK_EN_100MS|sig_count_reg[25:0] C
netloc CLK_EN_100MS|clk 1 0 4 NJ 48 NJ 48 NJ 48 900
load net CLK_EN_100MS|pulse -attr @name pulse -hierPin CLK_EN_100MS pulse -pin CLK_EN_100MS|pulse_i O
netloc CLK_EN_100MS|pulse 1 5 1 NJ 108
load net CLK_EN_100MS|rst -attr @name rst -hierPin CLK_EN_100MS rst -pin CLK_EN_100MS|sig_count_i__0 S
netloc CLK_EN_100MS|rst 1 0 3 NJ 378 NJ 378 670
load net CLK_EN_100MS|sig_count0[0] -attr @rip(#000000) O[0] -attr @name sig_count0[0] -pin CLK_EN_100MS|sig_count0_i O[0] -pin CLK_EN_100MS|sig_count_reg[25:0] D[0]
load net CLK_EN_100MS|sig_count0[10] -attr @rip(#000000) O[10] -attr @name sig_count0[10] -pin CLK_EN_100MS|sig_count0_i O[10] -pin CLK_EN_100MS|sig_count_reg[25:0] D[10]
load net CLK_EN_100MS|sig_count0[11] -attr @rip(#000000) O[11] -attr @name sig_count0[11] -pin CLK_EN_100MS|sig_count0_i O[11] -pin CLK_EN_100MS|sig_count_reg[25:0] D[11]
load net CLK_EN_100MS|sig_count0[12] -attr @rip(#000000) O[12] -attr @name sig_count0[12] -pin CLK_EN_100MS|sig_count0_i O[12] -pin CLK_EN_100MS|sig_count_reg[25:0] D[12]
load net CLK_EN_100MS|sig_count0[13] -attr @rip(#000000) O[13] -attr @name sig_count0[13] -pin CLK_EN_100MS|sig_count0_i O[13] -pin CLK_EN_100MS|sig_count_reg[25:0] D[13]
load net CLK_EN_100MS|sig_count0[14] -attr @rip(#000000) O[14] -attr @name sig_count0[14] -pin CLK_EN_100MS|sig_count0_i O[14] -pin CLK_EN_100MS|sig_count_reg[25:0] D[14]
load net CLK_EN_100MS|sig_count0[15] -attr @rip(#000000) O[15] -attr @name sig_count0[15] -pin CLK_EN_100MS|sig_count0_i O[15] -pin CLK_EN_100MS|sig_count_reg[25:0] D[15]
load net CLK_EN_100MS|sig_count0[16] -attr @rip(#000000) O[16] -attr @name sig_count0[16] -pin CLK_EN_100MS|sig_count0_i O[16] -pin CLK_EN_100MS|sig_count_reg[25:0] D[16]
load net CLK_EN_100MS|sig_count0[17] -attr @rip(#000000) O[17] -attr @name sig_count0[17] -pin CLK_EN_100MS|sig_count0_i O[17] -pin CLK_EN_100MS|sig_count_reg[25:0] D[17]
load net CLK_EN_100MS|sig_count0[18] -attr @rip(#000000) O[18] -attr @name sig_count0[18] -pin CLK_EN_100MS|sig_count0_i O[18] -pin CLK_EN_100MS|sig_count_reg[25:0] D[18]
load net CLK_EN_100MS|sig_count0[19] -attr @rip(#000000) O[19] -attr @name sig_count0[19] -pin CLK_EN_100MS|sig_count0_i O[19] -pin CLK_EN_100MS|sig_count_reg[25:0] D[19]
load net CLK_EN_100MS|sig_count0[1] -attr @rip(#000000) O[1] -attr @name sig_count0[1] -pin CLK_EN_100MS|sig_count0_i O[1] -pin CLK_EN_100MS|sig_count_reg[25:0] D[1]
load net CLK_EN_100MS|sig_count0[20] -attr @rip(#000000) O[20] -attr @name sig_count0[20] -pin CLK_EN_100MS|sig_count0_i O[20] -pin CLK_EN_100MS|sig_count_reg[25:0] D[20]
load net CLK_EN_100MS|sig_count0[21] -attr @rip(#000000) O[21] -attr @name sig_count0[21] -pin CLK_EN_100MS|sig_count0_i O[21] -pin CLK_EN_100MS|sig_count_reg[25:0] D[21]
load net CLK_EN_100MS|sig_count0[22] -attr @rip(#000000) O[22] -attr @name sig_count0[22] -pin CLK_EN_100MS|sig_count0_i O[22] -pin CLK_EN_100MS|sig_count_reg[25:0] D[22]
load net CLK_EN_100MS|sig_count0[23] -attr @rip(#000000) O[23] -attr @name sig_count0[23] -pin CLK_EN_100MS|sig_count0_i O[23] -pin CLK_EN_100MS|sig_count_reg[25:0] D[23]
load net CLK_EN_100MS|sig_count0[24] -attr @rip(#000000) O[24] -attr @name sig_count0[24] -pin CLK_EN_100MS|sig_count0_i O[24] -pin CLK_EN_100MS|sig_count_reg[25:0] D[24]
load net CLK_EN_100MS|sig_count0[25] -attr @rip(#000000) O[25] -attr @name sig_count0[25] -pin CLK_EN_100MS|sig_count0_i O[25] -pin CLK_EN_100MS|sig_count_reg[25:0] D[25]
load net CLK_EN_100MS|sig_count0[2] -attr @rip(#000000) O[2] -attr @name sig_count0[2] -pin CLK_EN_100MS|sig_count0_i O[2] -pin CLK_EN_100MS|sig_count_reg[25:0] D[2]
load net CLK_EN_100MS|sig_count0[3] -attr @rip(#000000) O[3] -attr @name sig_count0[3] -pin CLK_EN_100MS|sig_count0_i O[3] -pin CLK_EN_100MS|sig_count_reg[25:0] D[3]
load net CLK_EN_100MS|sig_count0[4] -attr @rip(#000000) O[4] -attr @name sig_count0[4] -pin CLK_EN_100MS|sig_count0_i O[4] -pin CLK_EN_100MS|sig_count_reg[25:0] D[4]
load net CLK_EN_100MS|sig_count0[5] -attr @rip(#000000) O[5] -attr @name sig_count0[5] -pin CLK_EN_100MS|sig_count0_i O[5] -pin CLK_EN_100MS|sig_count_reg[25:0] D[5]
load net CLK_EN_100MS|sig_count0[6] -attr @rip(#000000) O[6] -attr @name sig_count0[6] -pin CLK_EN_100MS|sig_count0_i O[6] -pin CLK_EN_100MS|sig_count_reg[25:0] D[6]
load net CLK_EN_100MS|sig_count0[7] -attr @rip(#000000) O[7] -attr @name sig_count0[7] -pin CLK_EN_100MS|sig_count0_i O[7] -pin CLK_EN_100MS|sig_count_reg[25:0] D[7]
load net CLK_EN_100MS|sig_count0[8] -attr @rip(#000000) O[8] -attr @name sig_count0[8] -pin CLK_EN_100MS|sig_count0_i O[8] -pin CLK_EN_100MS|sig_count_reg[25:0] D[8]
load net CLK_EN_100MS|sig_count0[9] -attr @rip(#000000) O[9] -attr @name sig_count0[9] -pin CLK_EN_100MS|sig_count0_i O[9] -pin CLK_EN_100MS|sig_count_reg[25:0] D[9]
load net CLK_EN_100MS|sig_count1 -attr @name sig_count1 -pin CLK_EN_100MS|sig_count1_i O -pin CLK_EN_100MS|sig_count_i S
netloc CLK_EN_100MS|sig_count1 1 1 1 NJ 288
load net CLK_EN_100MS|sig_count[0] -attr @rip(#000000) 0 -attr @name sig_count[0] -pin CLK_EN_100MS|pulse_i A[0] -pin CLK_EN_100MS|sig_count0_i I0[0] -pin CLK_EN_100MS|sig_count1_i I0[0] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[0]
load net CLK_EN_100MS|sig_count[10] -attr @rip(#000000) 10 -attr @name sig_count[10] -pin CLK_EN_100MS|pulse_i A[10] -pin CLK_EN_100MS|sig_count0_i I0[10] -pin CLK_EN_100MS|sig_count1_i I0[10] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[10]
load net CLK_EN_100MS|sig_count[11] -attr @rip(#000000) 11 -attr @name sig_count[11] -pin CLK_EN_100MS|pulse_i A[11] -pin CLK_EN_100MS|sig_count0_i I0[11] -pin CLK_EN_100MS|sig_count1_i I0[11] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[11]
load net CLK_EN_100MS|sig_count[12] -attr @rip(#000000) 12 -attr @name sig_count[12] -pin CLK_EN_100MS|pulse_i A[12] -pin CLK_EN_100MS|sig_count0_i I0[12] -pin CLK_EN_100MS|sig_count1_i I0[12] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[12]
load net CLK_EN_100MS|sig_count[13] -attr @rip(#000000) 13 -attr @name sig_count[13] -pin CLK_EN_100MS|pulse_i A[13] -pin CLK_EN_100MS|sig_count0_i I0[13] -pin CLK_EN_100MS|sig_count1_i I0[13] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[13]
load net CLK_EN_100MS|sig_count[14] -attr @rip(#000000) 14 -attr @name sig_count[14] -pin CLK_EN_100MS|pulse_i A[14] -pin CLK_EN_100MS|sig_count0_i I0[14] -pin CLK_EN_100MS|sig_count1_i I0[14] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[14]
load net CLK_EN_100MS|sig_count[15] -attr @rip(#000000) 15 -attr @name sig_count[15] -pin CLK_EN_100MS|pulse_i A[15] -pin CLK_EN_100MS|sig_count0_i I0[15] -pin CLK_EN_100MS|sig_count1_i I0[15] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[15]
load net CLK_EN_100MS|sig_count[16] -attr @rip(#000000) 16 -attr @name sig_count[16] -pin CLK_EN_100MS|pulse_i A[16] -pin CLK_EN_100MS|sig_count0_i I0[16] -pin CLK_EN_100MS|sig_count1_i I0[16] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[16]
load net CLK_EN_100MS|sig_count[17] -attr @rip(#000000) 17 -attr @name sig_count[17] -pin CLK_EN_100MS|pulse_i A[17] -pin CLK_EN_100MS|sig_count0_i I0[17] -pin CLK_EN_100MS|sig_count1_i I0[17] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[17]
load net CLK_EN_100MS|sig_count[18] -attr @rip(#000000) 18 -attr @name sig_count[18] -pin CLK_EN_100MS|pulse_i A[18] -pin CLK_EN_100MS|sig_count0_i I0[18] -pin CLK_EN_100MS|sig_count1_i I0[18] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[18]
load net CLK_EN_100MS|sig_count[19] -attr @rip(#000000) 19 -attr @name sig_count[19] -pin CLK_EN_100MS|pulse_i A[19] -pin CLK_EN_100MS|sig_count0_i I0[19] -pin CLK_EN_100MS|sig_count1_i I0[19] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[19]
load net CLK_EN_100MS|sig_count[1] -attr @rip(#000000) 1 -attr @name sig_count[1] -pin CLK_EN_100MS|pulse_i A[1] -pin CLK_EN_100MS|sig_count0_i I0[1] -pin CLK_EN_100MS|sig_count1_i I0[1] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[1]
load net CLK_EN_100MS|sig_count[20] -attr @rip(#000000) 20 -attr @name sig_count[20] -pin CLK_EN_100MS|pulse_i A[20] -pin CLK_EN_100MS|sig_count0_i I0[20] -pin CLK_EN_100MS|sig_count1_i I0[20] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[20]
load net CLK_EN_100MS|sig_count[21] -attr @rip(#000000) 21 -attr @name sig_count[21] -pin CLK_EN_100MS|pulse_i A[21] -pin CLK_EN_100MS|sig_count0_i I0[21] -pin CLK_EN_100MS|sig_count1_i I0[21] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[21]
load net CLK_EN_100MS|sig_count[22] -attr @rip(#000000) 22 -attr @name sig_count[22] -pin CLK_EN_100MS|pulse_i A[22] -pin CLK_EN_100MS|sig_count0_i I0[22] -pin CLK_EN_100MS|sig_count1_i I0[22] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[22]
load net CLK_EN_100MS|sig_count[23] -attr @rip(#000000) 23 -attr @name sig_count[23] -pin CLK_EN_100MS|pulse_i A[23] -pin CLK_EN_100MS|sig_count0_i I0[23] -pin CLK_EN_100MS|sig_count1_i I0[23] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[23]
load net CLK_EN_100MS|sig_count[24] -attr @rip(#000000) 24 -attr @name sig_count[24] -pin CLK_EN_100MS|pulse_i A[24] -pin CLK_EN_100MS|sig_count0_i I0[24] -pin CLK_EN_100MS|sig_count1_i I0[24] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[24]
load net CLK_EN_100MS|sig_count[25] -attr @rip(#000000) 25 -attr @name sig_count[25] -pin CLK_EN_100MS|pulse_i A[25] -pin CLK_EN_100MS|sig_count0_i I0[25] -pin CLK_EN_100MS|sig_count1_i I0[25] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[25]
load net CLK_EN_100MS|sig_count[2] -attr @rip(#000000) 2 -attr @name sig_count[2] -pin CLK_EN_100MS|pulse_i A[2] -pin CLK_EN_100MS|sig_count0_i I0[2] -pin CLK_EN_100MS|sig_count1_i I0[2] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[2]
load net CLK_EN_100MS|sig_count[3] -attr @rip(#000000) 3 -attr @name sig_count[3] -pin CLK_EN_100MS|pulse_i A[3] -pin CLK_EN_100MS|sig_count0_i I0[3] -pin CLK_EN_100MS|sig_count1_i I0[3] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[3]
load net CLK_EN_100MS|sig_count[4] -attr @rip(#000000) 4 -attr @name sig_count[4] -pin CLK_EN_100MS|pulse_i A[4] -pin CLK_EN_100MS|sig_count0_i I0[4] -pin CLK_EN_100MS|sig_count1_i I0[4] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[4]
load net CLK_EN_100MS|sig_count[5] -attr @rip(#000000) 5 -attr @name sig_count[5] -pin CLK_EN_100MS|pulse_i A[5] -pin CLK_EN_100MS|sig_count0_i I0[5] -pin CLK_EN_100MS|sig_count1_i I0[5] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[5]
load net CLK_EN_100MS|sig_count[6] -attr @rip(#000000) 6 -attr @name sig_count[6] -pin CLK_EN_100MS|pulse_i A[6] -pin CLK_EN_100MS|sig_count0_i I0[6] -pin CLK_EN_100MS|sig_count1_i I0[6] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[6]
load net CLK_EN_100MS|sig_count[7] -attr @rip(#000000) 7 -attr @name sig_count[7] -pin CLK_EN_100MS|pulse_i A[7] -pin CLK_EN_100MS|sig_count0_i I0[7] -pin CLK_EN_100MS|sig_count1_i I0[7] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[7]
load net CLK_EN_100MS|sig_count[8] -attr @rip(#000000) 8 -attr @name sig_count[8] -pin CLK_EN_100MS|pulse_i A[8] -pin CLK_EN_100MS|sig_count0_i I0[8] -pin CLK_EN_100MS|sig_count1_i I0[8] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[8]
load net CLK_EN_100MS|sig_count[9] -attr @rip(#000000) 9 -attr @name sig_count[9] -pin CLK_EN_100MS|pulse_i A[9] -pin CLK_EN_100MS|sig_count0_i I0[9] -pin CLK_EN_100MS|sig_count1_i I0[9] -pin CLK_EN_100MS|sig_count_reg[25:0] Q[9]
load net CLK_EN_100MS|sig_count__0 -attr @name sig_count__0 -pin CLK_EN_100MS|sig_count_i__0 O -pin CLK_EN_100MS|sig_count_reg[25:0] RST
netloc CLK_EN_100MS|sig_count__0 1 3 1 920 48n
load net CLK_EN_100MS|sig_count_i_n_0 -attr @name sig_count_i_n_0 -pin CLK_EN_100MS|sig_count_i O -pin CLK_EN_100MS|sig_count_i__0 I1
netloc CLK_EN_100MS|sig_count_i_n_0 1 2 1 NJ 228
load netBundle @CLK_EN_100MS|sig_count0 26 CLK_EN_100MS|sig_count0[25] CLK_EN_100MS|sig_count0[24] CLK_EN_100MS|sig_count0[23] CLK_EN_100MS|sig_count0[22] CLK_EN_100MS|sig_count0[21] CLK_EN_100MS|sig_count0[20] CLK_EN_100MS|sig_count0[19] CLK_EN_100MS|sig_count0[18] CLK_EN_100MS|sig_count0[17] CLK_EN_100MS|sig_count0[16] CLK_EN_100MS|sig_count0[15] CLK_EN_100MS|sig_count0[14] CLK_EN_100MS|sig_count0[13] CLK_EN_100MS|sig_count0[12] CLK_EN_100MS|sig_count0[11] CLK_EN_100MS|sig_count0[10] CLK_EN_100MS|sig_count0[9] CLK_EN_100MS|sig_count0[8] CLK_EN_100MS|sig_count0[7] CLK_EN_100MS|sig_count0[6] CLK_EN_100MS|sig_count0[5] CLK_EN_100MS|sig_count0[4] CLK_EN_100MS|sig_count0[3] CLK_EN_100MS|sig_count0[2] CLK_EN_100MS|sig_count0[1] CLK_EN_100MS|sig_count0[0] -autobundled
netbloc @CLK_EN_100MS|sig_count0 1 3 1 NJ 118
load netBundle @CLK_EN_100MS|sig_count 26 CLK_EN_100MS|sig_count[25] CLK_EN_100MS|sig_count[24] CLK_EN_100MS|sig_count[23] CLK_EN_100MS|sig_count[22] CLK_EN_100MS|sig_count[21] CLK_EN_100MS|sig_count[20] CLK_EN_100MS|sig_count[19] CLK_EN_100MS|sig_count[18] CLK_EN_100MS|sig_count[17] CLK_EN_100MS|sig_count[16] CLK_EN_100MS|sig_count[15] CLK_EN_100MS|sig_count[14] CLK_EN_100MS|sig_count[13] CLK_EN_100MS|sig_count[12] CLK_EN_100MS|sig_count[11] CLK_EN_100MS|sig_count[10] CLK_EN_100MS|sig_count[9] CLK_EN_100MS|sig_count[8] CLK_EN_100MS|sig_count[7] CLK_EN_100MS|sig_count[6] CLK_EN_100MS|sig_count[5] CLK_EN_100MS|sig_count[4] CLK_EN_100MS|sig_count[3] CLK_EN_100MS|sig_count[2] CLK_EN_100MS|sig_count[1] CLK_EN_100MS|sig_count[0] -autobundled
netbloc @CLK_EN_100MS|sig_count 1 0 5 90 358 NJ 358 650 298 NJ 298 1160
levelinfo -pg 1 0 60 1400
levelinfo -hier CLK_EN_100MS * 270 520 770 970 1190 *
pagesize -pg 1 -db -bbox -sgen 0 -10 1400 420
pagesize -hier CLK_EN_100MS -db -bbox -sgen 60 28 1320 388
show
fullfit
#
# initialize ictrl to current module top_level work:top_level:NOFILE
ictrl init topinfo |
