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
load symbol RTL_ROM6 work GEN pinBus A input.left [3:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_ROM2 work GEN pinBus A input.left [31:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_ROM4 work GEN pinBus A input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ROM5 work GEN pin O output.right pinBus A input.left [31:0] fillcolor 1
load symbol RTL_MUX24 work MUX pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus I2 input.left [6:0] pinBus I3 input.left [6:0] pinBus I4 input.left [6:0] pinBus I5 input.left [6:0] pinBus O output.right [6:0] pinBus S input.bot [31:0] fillcolor 1
load symbol RTL_REG__BREG_22 work[31:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG__BREG_24 work[7:0]sww GEN pin C input.clk.left pinBus D input.left [7:0] pinBus Q output.right [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_REG__BREG_22 work[6:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [6:0] pinBus Q output.right [6:0] fillcolor 1 sandwich 3 prop @bundle 7
load inst display bin2segMult work:bin2segMult:NOFILE -autohide -attr @cell(#000000) bin2segMult -attr @fillcolor #fafafa -pinBusAttr POS_OUT @name POS_OUT[7:0] -pinBusAttr hundreds_1 @name hundreds_1[3:0] -pinBusAttr hundreds_2 @name hundreds_2[3:0] -pinBusAttr ones_1 @name ones_1[3:0] -pinBusAttr ones_2 @name ones_2[3:0] -pinBusAttr seg @name seg[6:0] -pinBusAttr tens_1 @name tens_1[3:0] -pinBusAttr tens_2 @name tens_2[3:0] -pg 1 -lvl 1 -x 110 -y 58
load inst display|Bin2Seg_i RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 468
load inst display|Bin2Seg_i__0 RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i__0 -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 288
load inst display|Bin2Seg_i__1 RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i__1 -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 378
load inst display|Bin2Seg_i__2 RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i__2 -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 558
load inst display|Bin2Seg_i__3 RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i__3 -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 648
load inst display|Bin2Seg_i__4 RTL_ROM6 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Bin2Seg_i__4 -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 420 -y 738
load inst display|POS_OUT_i RTL_ROM2 work -hier display -attr @cell(#000000) RTL_ROM -attr @name POS_OUT_i -pinBusAttr A @name A[31:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 910 -y 288
load inst display|Pos_register_i RTL_ROM4 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Pos_register_i -pinBusAttr A @name A[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 180 -y 168
load inst display|Pos_register_i__0 RTL_ROM5 work -hier display -attr @cell(#000000) RTL_ROM -attr @name Pos_register_i__0 -pinBusAttr A @name A[31:0] -pg 1 -lvl 1 -x 180 -y 78
load inst display|seg_i RTL_MUX24 work -hier display -attr @cell(#000000) RTL_MUX -attr @name seg_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=32'b00000000000000000000000000000000 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=32'b00000000000000000000000000000001 -pinBusAttr I2 @name I2[6:0] -pinBusAttr I2 @attr S=32'b00000000000000000000000000000010 -pinBusAttr I3 @name I3[6:0] -pinBusAttr I3 @attr S=32'b00000000000000000000000000000100 -pinBusAttr I4 @name I4[6:0] -pinBusAttr I4 @attr S=32'b00000000000000000000000000000101 -pinBusAttr I5 @name I5[6:0] -pinBusAttr I5 @attr S=32'b00000000000000000000000000000110 -pinBusAttr O @name O[6:0] -pinBusAttr S @name S[31:0] -pg 1 -lvl 3 -x 910 -y 548
load inst display|seg_i__0 RTL_ROM5 work -hier display -attr @cell(#000000) RTL_ROM -attr @name seg_i__0 -pinBusAttr A @name A[31:0] -pg 1 -lvl 3 -x 910 -y 408
load inst display|Pos_register_reg[31:0] RTL_REG__BREG_22 work[31:0]ssww -hier display -attr @cell(#000000) RTL_REG -attr @name Pos_register_reg[31:0] -pg 1 -lvl 2 -x 420 -y 138
load inst display|POS_OUT_reg[7:0] RTL_REG__BREG_24 work[7:0]sww -hier display -attr @cell(#000000) RTL_REG -attr @name POS_OUT_reg[7:0] -pg 1 -lvl 4 -x 1110 -y 278
load inst display|seg_reg[6:0] RTL_REG__BREG_22 work[6:0]ssww -hier display -attr @cell(#000000) RTL_REG -attr @name seg_reg[6:0] -pg 1 -lvl 4 -x 1110 -y 408
load net display|Bin2Seg[0] -attr @rip(#000000) O[6] -attr @name Bin2Seg[0] -pin display|Bin2Seg_i O[6] -pin display|seg_i I0[6]
load net display|Bin2Seg[1] -attr @rip(#000000) O[5] -attr @name Bin2Seg[1] -pin display|Bin2Seg_i O[5] -pin display|seg_i I0[5]
load net display|Bin2Seg[2] -attr @rip(#000000) O[4] -attr @name Bin2Seg[2] -pin display|Bin2Seg_i O[4] -pin display|seg_i I0[4]
load net display|Bin2Seg[3] -attr @rip(#000000) O[3] -attr @name Bin2Seg[3] -pin display|Bin2Seg_i O[3] -pin display|seg_i I0[3]
load net display|Bin2Seg[4] -attr @rip(#000000) O[2] -attr @name Bin2Seg[4] -pin display|Bin2Seg_i O[2] -pin display|seg_i I0[2]
load net display|Bin2Seg[5] -attr @rip(#000000) O[1] -attr @name Bin2Seg[5] -pin display|Bin2Seg_i O[1] -pin display|seg_i I0[1]
load net display|Bin2Seg[6] -attr @rip(#000000) O[0] -attr @name Bin2Seg[6] -pin display|Bin2Seg_i O[0] -pin display|seg_i I0[0]
load net display|Bin2Seg_i__0_n_0 -attr @rip(#000000) O[6] -attr @name Bin2Seg_i__0_n_0 -pin display|Bin2Seg_i__0 O[6] -pin display|seg_i I1[6]
load net display|Bin2Seg_i__0_n_1 -attr @rip(#000000) O[5] -attr @name Bin2Seg_i__0_n_1 -pin display|Bin2Seg_i__0 O[5] -pin display|seg_i I1[5]
load net display|Bin2Seg_i__0_n_2 -attr @rip(#000000) O[4] -attr @name Bin2Seg_i__0_n_2 -pin display|Bin2Seg_i__0 O[4] -pin display|seg_i I1[4]
load net display|Bin2Seg_i__0_n_3 -attr @rip(#000000) O[3] -attr @name Bin2Seg_i__0_n_3 -pin display|Bin2Seg_i__0 O[3] -pin display|seg_i I1[3]
load net display|Bin2Seg_i__0_n_4 -attr @rip(#000000) O[2] -attr @name Bin2Seg_i__0_n_4 -pin display|Bin2Seg_i__0 O[2] -pin display|seg_i I1[2]
load net display|Bin2Seg_i__0_n_5 -attr @rip(#000000) O[1] -attr @name Bin2Seg_i__0_n_5 -pin display|Bin2Seg_i__0 O[1] -pin display|seg_i I1[1]
load net display|Bin2Seg_i__0_n_6 -attr @rip(#000000) O[0] -attr @name Bin2Seg_i__0_n_6 -pin display|Bin2Seg_i__0 O[0] -pin display|seg_i I1[0]
load net display|Bin2Seg_i__1_n_0 -attr @rip(#000000) O[6] -attr @name Bin2Seg_i__1_n_0 -pin display|Bin2Seg_i__1 O[6] -pin display|seg_i I2[6]
load net display|Bin2Seg_i__1_n_1 -attr @rip(#000000) O[5] -attr @name Bin2Seg_i__1_n_1 -pin display|Bin2Seg_i__1 O[5] -pin display|seg_i I2[5]
load net display|Bin2Seg_i__1_n_2 -attr @rip(#000000) O[4] -attr @name Bin2Seg_i__1_n_2 -pin display|Bin2Seg_i__1 O[4] -pin display|seg_i I2[4]
load net display|Bin2Seg_i__1_n_3 -attr @rip(#000000) O[3] -attr @name Bin2Seg_i__1_n_3 -pin display|Bin2Seg_i__1 O[3] -pin display|seg_i I2[3]
load net display|Bin2Seg_i__1_n_4 -attr @rip(#000000) O[2] -attr @name Bin2Seg_i__1_n_4 -pin display|Bin2Seg_i__1 O[2] -pin display|seg_i I2[2]
load net display|Bin2Seg_i__1_n_5 -attr @rip(#000000) O[1] -attr @name Bin2Seg_i__1_n_5 -pin display|Bin2Seg_i__1 O[1] -pin display|seg_i I2[1]
load net display|Bin2Seg_i__1_n_6 -attr @rip(#000000) O[0] -attr @name Bin2Seg_i__1_n_6 -pin display|Bin2Seg_i__1 O[0] -pin display|seg_i I2[0]
load net display|Bin2Seg_i__2_n_0 -attr @rip(#000000) O[6] -attr @name Bin2Seg_i__2_n_0 -pin display|Bin2Seg_i__2 O[6] -pin display|seg_i I3[6]
load net display|Bin2Seg_i__2_n_1 -attr @rip(#000000) O[5] -attr @name Bin2Seg_i__2_n_1 -pin display|Bin2Seg_i__2 O[5] -pin display|seg_i I3[5]
load net display|Bin2Seg_i__2_n_2 -attr @rip(#000000) O[4] -attr @name Bin2Seg_i__2_n_2 -pin display|Bin2Seg_i__2 O[4] -pin display|seg_i I3[4]
load net display|Bin2Seg_i__2_n_3 -attr @rip(#000000) O[3] -attr @name Bin2Seg_i__2_n_3 -pin display|Bin2Seg_i__2 O[3] -pin display|seg_i I3[3]
load net display|Bin2Seg_i__2_n_4 -attr @rip(#000000) O[2] -attr @name Bin2Seg_i__2_n_4 -pin display|Bin2Seg_i__2 O[2] -pin display|seg_i I3[2]
load net display|Bin2Seg_i__2_n_5 -attr @rip(#000000) O[1] -attr @name Bin2Seg_i__2_n_5 -pin display|Bin2Seg_i__2 O[1] -pin display|seg_i I3[1]
load net display|Bin2Seg_i__2_n_6 -attr @rip(#000000) O[0] -attr @name Bin2Seg_i__2_n_6 -pin display|Bin2Seg_i__2 O[0] -pin display|seg_i I3[0]
load net display|Bin2Seg_i__3_n_0 -attr @rip(#000000) O[6] -attr @name Bin2Seg_i__3_n_0 -pin display|Bin2Seg_i__3 O[6] -pin display|seg_i I4[6]
load net display|Bin2Seg_i__3_n_1 -attr @rip(#000000) O[5] -attr @name Bin2Seg_i__3_n_1 -pin display|Bin2Seg_i__3 O[5] -pin display|seg_i I4[5]
load net display|Bin2Seg_i__3_n_2 -attr @rip(#000000) O[4] -attr @name Bin2Seg_i__3_n_2 -pin display|Bin2Seg_i__3 O[4] -pin display|seg_i I4[4]
load net display|Bin2Seg_i__3_n_3 -attr @rip(#000000) O[3] -attr @name Bin2Seg_i__3_n_3 -pin display|Bin2Seg_i__3 O[3] -pin display|seg_i I4[3]
load net display|Bin2Seg_i__3_n_4 -attr @rip(#000000) O[2] -attr @name Bin2Seg_i__3_n_4 -pin display|Bin2Seg_i__3 O[2] -pin display|seg_i I4[2]
load net display|Bin2Seg_i__3_n_5 -attr @rip(#000000) O[1] -attr @name Bin2Seg_i__3_n_5 -pin display|Bin2Seg_i__3 O[1] -pin display|seg_i I4[1]
load net display|Bin2Seg_i__3_n_6 -attr @rip(#000000) O[0] -attr @name Bin2Seg_i__3_n_6 -pin display|Bin2Seg_i__3 O[0] -pin display|seg_i I4[0]
load net display|Bin2Seg_i__4_n_0 -attr @rip(#000000) O[6] -attr @name Bin2Seg_i__4_n_0 -pin display|Bin2Seg_i__4 O[6] -pin display|seg_i I5[6]
load net display|Bin2Seg_i__4_n_1 -attr @rip(#000000) O[5] -attr @name Bin2Seg_i__4_n_1 -pin display|Bin2Seg_i__4 O[5] -pin display|seg_i I5[5]
load net display|Bin2Seg_i__4_n_2 -attr @rip(#000000) O[4] -attr @name Bin2Seg_i__4_n_2 -pin display|Bin2Seg_i__4 O[4] -pin display|seg_i I5[4]
load net display|Bin2Seg_i__4_n_3 -attr @rip(#000000) O[3] -attr @name Bin2Seg_i__4_n_3 -pin display|Bin2Seg_i__4 O[3] -pin display|seg_i I5[3]
load net display|Bin2Seg_i__4_n_4 -attr @rip(#000000) O[2] -attr @name Bin2Seg_i__4_n_4 -pin display|Bin2Seg_i__4 O[2] -pin display|seg_i I5[2]
load net display|Bin2Seg_i__4_n_5 -attr @rip(#000000) O[1] -attr @name Bin2Seg_i__4_n_5 -pin display|Bin2Seg_i__4 O[1] -pin display|seg_i I5[1]
load net display|Bin2Seg_i__4_n_6 -attr @rip(#000000) O[0] -attr @name Bin2Seg_i__4_n_6 -pin display|Bin2Seg_i__4 O[0] -pin display|seg_i I5[0]
load net display|POS_OUT[0] -attr @rip(#000000) 0 -attr @name POS_OUT[0] -hierPin display POS_OUT[0] -pin display|POS_OUT_reg[7:0] Q[0]
load net display|POS_OUT[1] -attr @rip(#000000) 1 -attr @name POS_OUT[1] -hierPin display POS_OUT[1] -pin display|POS_OUT_reg[7:0] Q[1]
load net display|POS_OUT[2] -attr @rip(#000000) 2 -attr @name POS_OUT[2] -hierPin display POS_OUT[2] -pin display|POS_OUT_reg[7:0] Q[2]
load net display|POS_OUT[3] -attr @rip(#000000) 3 -attr @name POS_OUT[3] -hierPin display POS_OUT[3] -pin display|POS_OUT_reg[7:0] Q[3]
load net display|POS_OUT[4] -attr @rip(#000000) 4 -attr @name POS_OUT[4] -hierPin display POS_OUT[4] -pin display|POS_OUT_reg[7:0] Q[4]
load net display|POS_OUT[5] -attr @rip(#000000) 5 -attr @name POS_OUT[5] -hierPin display POS_OUT[5] -pin display|POS_OUT_reg[7:0] Q[5]
load net display|POS_OUT[6] -attr @rip(#000000) 6 -attr @name POS_OUT[6] -hierPin display POS_OUT[6] -pin display|POS_OUT_reg[7:0] Q[6]
load net display|POS_OUT[7] -attr @rip(#000000) 7 -attr @name POS_OUT[7] -hierPin display POS_OUT[7] -pin display|POS_OUT_reg[7:0] Q[7]
load net display|POS_OUT_i_n_0 -attr @rip(#000000) O[7] -attr @name POS_OUT_i_n_0 -pin display|POS_OUT_i O[7] -pin display|POS_OUT_reg[7:0] D[7]
load net display|POS_OUT_i_n_1 -attr @rip(#000000) O[6] -attr @name POS_OUT_i_n_1 -pin display|POS_OUT_i O[6] -pin display|POS_OUT_reg[7:0] D[6]
load net display|POS_OUT_i_n_2 -attr @rip(#000000) O[5] -attr @name POS_OUT_i_n_2 -pin display|POS_OUT_i O[5] -pin display|POS_OUT_reg[7:0] D[5]
load net display|POS_OUT_i_n_3 -attr @rip(#000000) O[4] -attr @name POS_OUT_i_n_3 -pin display|POS_OUT_i O[4] -pin display|POS_OUT_reg[7:0] D[4]
load net display|POS_OUT_i_n_4 -attr @rip(#000000) O[3] -attr @name POS_OUT_i_n_4 -pin display|POS_OUT_i O[3] -pin display|POS_OUT_reg[7:0] D[3]
load net display|POS_OUT_i_n_5 -attr @rip(#000000) O[2] -attr @name POS_OUT_i_n_5 -pin display|POS_OUT_i O[2] -pin display|POS_OUT_reg[7:0] D[2]
load net display|POS_OUT_i_n_6 -attr @rip(#000000) O[1] -attr @name POS_OUT_i_n_6 -pin display|POS_OUT_i O[1] -pin display|POS_OUT_reg[7:0] D[1]
load net display|POS_OUT_i_n_7 -attr @rip(#000000) O[0] -attr @name POS_OUT_i_n_7 -pin display|POS_OUT_i O[0] -pin display|POS_OUT_reg[7:0] D[0]
load net display|Pos_register0_out[0] -attr @rip(#000000) O[0] -attr @name Pos_register0_out[0] -pin display|Pos_register_i O[0] -pin display|Pos_register_reg[31:0] D[0]
load net display|Pos_register0_out[10] -attr @rip(#000000) O[10] -attr @name Pos_register0_out[10] -pin display|Pos_register_i O[10] -pin display|Pos_register_reg[31:0] D[10]
load net display|Pos_register0_out[11] -attr @rip(#000000) O[11] -attr @name Pos_register0_out[11] -pin display|Pos_register_i O[11] -pin display|Pos_register_reg[31:0] D[11]
load net display|Pos_register0_out[12] -attr @rip(#000000) O[12] -attr @name Pos_register0_out[12] -pin display|Pos_register_i O[12] -pin display|Pos_register_reg[31:0] D[12]
load net display|Pos_register0_out[13] -attr @rip(#000000) O[13] -attr @name Pos_register0_out[13] -pin display|Pos_register_i O[13] -pin display|Pos_register_reg[31:0] D[13]
load net display|Pos_register0_out[14] -attr @rip(#000000) O[14] -attr @name Pos_register0_out[14] -pin display|Pos_register_i O[14] -pin display|Pos_register_reg[31:0] D[14]
load net display|Pos_register0_out[15] -attr @rip(#000000) O[15] -attr @name Pos_register0_out[15] -pin display|Pos_register_i O[15] -pin display|Pos_register_reg[31:0] D[15]
load net display|Pos_register0_out[16] -attr @rip(#000000) O[16] -attr @name Pos_register0_out[16] -pin display|Pos_register_i O[16] -pin display|Pos_register_reg[31:0] D[16]
load net display|Pos_register0_out[17] -attr @rip(#000000) O[17] -attr @name Pos_register0_out[17] -pin display|Pos_register_i O[17] -pin display|Pos_register_reg[31:0] D[17]
load net display|Pos_register0_out[18] -attr @rip(#000000) O[18] -attr @name Pos_register0_out[18] -pin display|Pos_register_i O[18] -pin display|Pos_register_reg[31:0] D[18]
load net display|Pos_register0_out[19] -attr @rip(#000000) O[19] -attr @name Pos_register0_out[19] -pin display|Pos_register_i O[19] -pin display|Pos_register_reg[31:0] D[19]
load net display|Pos_register0_out[1] -attr @rip(#000000) O[1] -attr @name Pos_register0_out[1] -pin display|Pos_register_i O[1] -pin display|Pos_register_reg[31:0] D[1]
load net display|Pos_register0_out[20] -attr @rip(#000000) O[20] -attr @name Pos_register0_out[20] -pin display|Pos_register_i O[20] -pin display|Pos_register_reg[31:0] D[20]
load net display|Pos_register0_out[21] -attr @rip(#000000) O[21] -attr @name Pos_register0_out[21] -pin display|Pos_register_i O[21] -pin display|Pos_register_reg[31:0] D[21]
load net display|Pos_register0_out[22] -attr @rip(#000000) O[22] -attr @name Pos_register0_out[22] -pin display|Pos_register_i O[22] -pin display|Pos_register_reg[31:0] D[22]
load net display|Pos_register0_out[23] -attr @rip(#000000) O[23] -attr @name Pos_register0_out[23] -pin display|Pos_register_i O[23] -pin display|Pos_register_reg[31:0] D[23]
load net display|Pos_register0_out[24] -attr @rip(#000000) O[24] -attr @name Pos_register0_out[24] -pin display|Pos_register_i O[24] -pin display|Pos_register_reg[31:0] D[24]
load net display|Pos_register0_out[25] -attr @rip(#000000) O[25] -attr @name Pos_register0_out[25] -pin display|Pos_register_i O[25] -pin display|Pos_register_reg[31:0] D[25]
load net display|Pos_register0_out[26] -attr @rip(#000000) O[26] -attr @name Pos_register0_out[26] -pin display|Pos_register_i O[26] -pin display|Pos_register_reg[31:0] D[26]
load net display|Pos_register0_out[27] -attr @rip(#000000) O[27] -attr @name Pos_register0_out[27] -pin display|Pos_register_i O[27] -pin display|Pos_register_reg[31:0] D[27]
load net display|Pos_register0_out[28] -attr @rip(#000000) O[28] -attr @name Pos_register0_out[28] -pin display|Pos_register_i O[28] -pin display|Pos_register_reg[31:0] D[28]
load net display|Pos_register0_out[29] -attr @rip(#000000) O[29] -attr @name Pos_register0_out[29] -pin display|Pos_register_i O[29] -pin display|Pos_register_reg[31:0] D[29]
load net display|Pos_register0_out[2] -attr @rip(#000000) O[2] -attr @name Pos_register0_out[2] -pin display|Pos_register_i O[2] -pin display|Pos_register_reg[31:0] D[2]
load net display|Pos_register0_out[30] -attr @rip(#000000) O[30] -attr @name Pos_register0_out[30] -pin display|Pos_register_i O[30] -pin display|Pos_register_reg[31:0] D[30]
load net display|Pos_register0_out[31] -attr @rip(#000000) O[31] -attr @name Pos_register0_out[31] -pin display|Pos_register_i O[31] -pin display|Pos_register_reg[31:0] D[31]
load net display|Pos_register0_out[3] -attr @rip(#000000) O[3] -attr @name Pos_register0_out[3] -pin display|Pos_register_i O[3] -pin display|Pos_register_reg[31:0] D[3]
load net display|Pos_register0_out[4] -attr @rip(#000000) O[4] -attr @name Pos_register0_out[4] -pin display|Pos_register_i O[4] -pin display|Pos_register_reg[31:0] D[4]
load net display|Pos_register0_out[5] -attr @rip(#000000) O[5] -attr @name Pos_register0_out[5] -pin display|Pos_register_i O[5] -pin display|Pos_register_reg[31:0] D[5]
load net display|Pos_register0_out[6] -attr @rip(#000000) O[6] -attr @name Pos_register0_out[6] -pin display|Pos_register_i O[6] -pin display|Pos_register_reg[31:0] D[6]
load net display|Pos_register0_out[7] -attr @rip(#000000) O[7] -attr @name Pos_register0_out[7] -pin display|Pos_register_i O[7] -pin display|Pos_register_reg[31:0] D[7]
load net display|Pos_register0_out[8] -attr @rip(#000000) O[8] -attr @name Pos_register0_out[8] -pin display|Pos_register_i O[8] -pin display|Pos_register_reg[31:0] D[8]
load net display|Pos_register0_out[9] -attr @rip(#000000) O[9] -attr @name Pos_register0_out[9] -pin display|Pos_register_i O[9] -pin display|Pos_register_reg[31:0] D[9]
load net display|Pos_register[0] -attr @rip(#000000) 0 -attr @name Pos_register[0] -pin display|POS_OUT_i A[0] -pin display|Pos_register_i A[0] -pin display|Pos_register_i__0 A[0] -pin display|Pos_register_reg[31:0] Q[0] -pin display|seg_i S[0] -pin display|seg_i__0 A[0]
load net display|Pos_register[10] -attr @rip(#000000) 10 -attr @name Pos_register[10] -pin display|POS_OUT_i A[10] -pin display|Pos_register_i A[10] -pin display|Pos_register_i__0 A[10] -pin display|Pos_register_reg[31:0] Q[10] -pin display|seg_i S[10] -pin display|seg_i__0 A[10]
load net display|Pos_register[11] -attr @rip(#000000) 11 -attr @name Pos_register[11] -pin display|POS_OUT_i A[11] -pin display|Pos_register_i A[11] -pin display|Pos_register_i__0 A[11] -pin display|Pos_register_reg[31:0] Q[11] -pin display|seg_i S[11] -pin display|seg_i__0 A[11]
load net display|Pos_register[12] -attr @rip(#000000) 12 -attr @name Pos_register[12] -pin display|POS_OUT_i A[12] -pin display|Pos_register_i A[12] -pin display|Pos_register_i__0 A[12] -pin display|Pos_register_reg[31:0] Q[12] -pin display|seg_i S[12] -pin display|seg_i__0 A[12]
load net display|Pos_register[13] -attr @rip(#000000) 13 -attr @name Pos_register[13] -pin display|POS_OUT_i A[13] -pin display|Pos_register_i A[13] -pin display|Pos_register_i__0 A[13] -pin display|Pos_register_reg[31:0] Q[13] -pin display|seg_i S[13] -pin display|seg_i__0 A[13]
load net display|Pos_register[14] -attr @rip(#000000) 14 -attr @name Pos_register[14] -pin display|POS_OUT_i A[14] -pin display|Pos_register_i A[14] -pin display|Pos_register_i__0 A[14] -pin display|Pos_register_reg[31:0] Q[14] -pin display|seg_i S[14] -pin display|seg_i__0 A[14]
load net display|Pos_register[15] -attr @rip(#000000) 15 -attr @name Pos_register[15] -pin display|POS_OUT_i A[15] -pin display|Pos_register_i A[15] -pin display|Pos_register_i__0 A[15] -pin display|Pos_register_reg[31:0] Q[15] -pin display|seg_i S[15] -pin display|seg_i__0 A[15]
load net display|Pos_register[16] -attr @rip(#000000) 16 -attr @name Pos_register[16] -pin display|POS_OUT_i A[16] -pin display|Pos_register_i A[16] -pin display|Pos_register_i__0 A[16] -pin display|Pos_register_reg[31:0] Q[16] -pin display|seg_i S[16] -pin display|seg_i__0 A[16]
load net display|Pos_register[17] -attr @rip(#000000) 17 -attr @name Pos_register[17] -pin display|POS_OUT_i A[17] -pin display|Pos_register_i A[17] -pin display|Pos_register_i__0 A[17] -pin display|Pos_register_reg[31:0] Q[17] -pin display|seg_i S[17] -pin display|seg_i__0 A[17]
load net display|Pos_register[18] -attr @rip(#000000) 18 -attr @name Pos_register[18] -pin display|POS_OUT_i A[18] -pin display|Pos_register_i A[18] -pin display|Pos_register_i__0 A[18] -pin display|Pos_register_reg[31:0] Q[18] -pin display|seg_i S[18] -pin display|seg_i__0 A[18]
load net display|Pos_register[19] -attr @rip(#000000) 19 -attr @name Pos_register[19] -pin display|POS_OUT_i A[19] -pin display|Pos_register_i A[19] -pin display|Pos_register_i__0 A[19] -pin display|Pos_register_reg[31:0] Q[19] -pin display|seg_i S[19] -pin display|seg_i__0 A[19]
load net display|Pos_register[1] -attr @rip(#000000) 1 -attr @name Pos_register[1] -pin display|POS_OUT_i A[1] -pin display|Pos_register_i A[1] -pin display|Pos_register_i__0 A[1] -pin display|Pos_register_reg[31:0] Q[1] -pin display|seg_i S[1] -pin display|seg_i__0 A[1]
load net display|Pos_register[20] -attr @rip(#000000) 20 -attr @name Pos_register[20] -pin display|POS_OUT_i A[20] -pin display|Pos_register_i A[20] -pin display|Pos_register_i__0 A[20] -pin display|Pos_register_reg[31:0] Q[20] -pin display|seg_i S[20] -pin display|seg_i__0 A[20]
load net display|Pos_register[21] -attr @rip(#000000) 21 -attr @name Pos_register[21] -pin display|POS_OUT_i A[21] -pin display|Pos_register_i A[21] -pin display|Pos_register_i__0 A[21] -pin display|Pos_register_reg[31:0] Q[21] -pin display|seg_i S[21] -pin display|seg_i__0 A[21]
load net display|Pos_register[22] -attr @rip(#000000) 22 -attr @name Pos_register[22] -pin display|POS_OUT_i A[22] -pin display|Pos_register_i A[22] -pin display|Pos_register_i__0 A[22] -pin display|Pos_register_reg[31:0] Q[22] -pin display|seg_i S[22] -pin display|seg_i__0 A[22]
load net display|Pos_register[23] -attr @rip(#000000) 23 -attr @name Pos_register[23] -pin display|POS_OUT_i A[23] -pin display|Pos_register_i A[23] -pin display|Pos_register_i__0 A[23] -pin display|Pos_register_reg[31:0] Q[23] -pin display|seg_i S[23] -pin display|seg_i__0 A[23]
load net display|Pos_register[24] -attr @rip(#000000) 24 -attr @name Pos_register[24] -pin display|POS_OUT_i A[24] -pin display|Pos_register_i A[24] -pin display|Pos_register_i__0 A[24] -pin display|Pos_register_reg[31:0] Q[24] -pin display|seg_i S[24] -pin display|seg_i__0 A[24]
load net display|Pos_register[25] -attr @rip(#000000) 25 -attr @name Pos_register[25] -pin display|POS_OUT_i A[25] -pin display|Pos_register_i A[25] -pin display|Pos_register_i__0 A[25] -pin display|Pos_register_reg[31:0] Q[25] -pin display|seg_i S[25] -pin display|seg_i__0 A[25]
load net display|Pos_register[26] -attr @rip(#000000) 26 -attr @name Pos_register[26] -pin display|POS_OUT_i A[26] -pin display|Pos_register_i A[26] -pin display|Pos_register_i__0 A[26] -pin display|Pos_register_reg[31:0] Q[26] -pin display|seg_i S[26] -pin display|seg_i__0 A[26]
load net display|Pos_register[27] -attr @rip(#000000) 27 -attr @name Pos_register[27] -pin display|POS_OUT_i A[27] -pin display|Pos_register_i A[27] -pin display|Pos_register_i__0 A[27] -pin display|Pos_register_reg[31:0] Q[27] -pin display|seg_i S[27] -pin display|seg_i__0 A[27]
load net display|Pos_register[28] -attr @rip(#000000) 28 -attr @name Pos_register[28] -pin display|POS_OUT_i A[28] -pin display|Pos_register_i A[28] -pin display|Pos_register_i__0 A[28] -pin display|Pos_register_reg[31:0] Q[28] -pin display|seg_i S[28] -pin display|seg_i__0 A[28]
load net display|Pos_register[29] -attr @rip(#000000) 29 -attr @name Pos_register[29] -pin display|POS_OUT_i A[29] -pin display|Pos_register_i A[29] -pin display|Pos_register_i__0 A[29] -pin display|Pos_register_reg[31:0] Q[29] -pin display|seg_i S[29] -pin display|seg_i__0 A[29]
load net display|Pos_register[2] -attr @rip(#000000) 2 -attr @name Pos_register[2] -pin display|POS_OUT_i A[2] -pin display|Pos_register_i A[2] -pin display|Pos_register_i__0 A[2] -pin display|Pos_register_reg[31:0] Q[2] -pin display|seg_i S[2] -pin display|seg_i__0 A[2]
load net display|Pos_register[30] -attr @rip(#000000) 30 -attr @name Pos_register[30] -pin display|POS_OUT_i A[30] -pin display|Pos_register_i A[30] -pin display|Pos_register_i__0 A[30] -pin display|Pos_register_reg[31:0] Q[30] -pin display|seg_i S[30] -pin display|seg_i__0 A[30]
load net display|Pos_register[31] -attr @rip(#000000) 31 -attr @name Pos_register[31] -pin display|POS_OUT_i A[31] -pin display|Pos_register_i A[31] -pin display|Pos_register_i__0 A[31] -pin display|Pos_register_reg[31:0] Q[31] -pin display|seg_i S[31] -pin display|seg_i__0 A[31]
load net display|Pos_register[3] -attr @rip(#000000) 3 -attr @name Pos_register[3] -pin display|POS_OUT_i A[3] -pin display|Pos_register_i A[3] -pin display|Pos_register_i__0 A[3] -pin display|Pos_register_reg[31:0] Q[3] -pin display|seg_i S[3] -pin display|seg_i__0 A[3]
load net display|Pos_register[4] -attr @rip(#000000) 4 -attr @name Pos_register[4] -pin display|POS_OUT_i A[4] -pin display|Pos_register_i A[4] -pin display|Pos_register_i__0 A[4] -pin display|Pos_register_reg[31:0] Q[4] -pin display|seg_i S[4] -pin display|seg_i__0 A[4]
load net display|Pos_register[5] -attr @rip(#000000) 5 -attr @name Pos_register[5] -pin display|POS_OUT_i A[5] -pin display|Pos_register_i A[5] -pin display|Pos_register_i__0 A[5] -pin display|Pos_register_reg[31:0] Q[5] -pin display|seg_i S[5] -pin display|seg_i__0 A[5]
load net display|Pos_register[6] -attr @rip(#000000) 6 -attr @name Pos_register[6] -pin display|POS_OUT_i A[6] -pin display|Pos_register_i A[6] -pin display|Pos_register_i__0 A[6] -pin display|Pos_register_reg[31:0] Q[6] -pin display|seg_i S[6] -pin display|seg_i__0 A[6]
load net display|Pos_register[7] -attr @rip(#000000) 7 -attr @name Pos_register[7] -pin display|POS_OUT_i A[7] -pin display|Pos_register_i A[7] -pin display|Pos_register_i__0 A[7] -pin display|Pos_register_reg[31:0] Q[7] -pin display|seg_i S[7] -pin display|seg_i__0 A[7]
load net display|Pos_register[8] -attr @rip(#000000) 8 -attr @name Pos_register[8] -pin display|POS_OUT_i A[8] -pin display|Pos_register_i A[8] -pin display|Pos_register_i__0 A[8] -pin display|Pos_register_reg[31:0] Q[8] -pin display|seg_i S[8] -pin display|seg_i__0 A[8]
load net display|Pos_register[9] -attr @rip(#000000) 9 -attr @name Pos_register[9] -pin display|POS_OUT_i A[9] -pin display|Pos_register_i A[9] -pin display|Pos_register_i__0 A[9] -pin display|Pos_register_reg[31:0] Q[9] -pin display|seg_i S[9] -pin display|seg_i__0 A[9]
load net display|Pos_register_i__0_n_0 -attr @name Pos_register_i__0_n_0 -pin display|Pos_register_i__0 O -pin display|Pos_register_reg[31:0] CE
netloc display|Pos_register_i__0_n_0 1 1 1 330J 78n
load net display|clk -attr @name clk -hierPin display clk -pin display|POS_OUT_reg[7:0] C -pin display|Pos_register_reg[31:0] C -pin display|seg_reg[6:0] C
netloc display|clk 1 0 4 NJ 238 350 238 NJ 238 1050
load net display|hundreds_1[0] -attr @rip(#000000) hundreds_1[0] -attr @name hundreds_1[0] -hierPin display hundreds_1[0] -pin display|Bin2Seg_i__1 A[0]
load net display|hundreds_1[1] -attr @rip(#000000) hundreds_1[1] -attr @name hundreds_1[1] -hierPin display hundreds_1[1] -pin display|Bin2Seg_i__1 A[1]
load net display|hundreds_1[2] -attr @rip(#000000) hundreds_1[2] -attr @name hundreds_1[2] -hierPin display hundreds_1[2] -pin display|Bin2Seg_i__1 A[2]
load net display|hundreds_1[3] -attr @rip(#000000) hundreds_1[3] -attr @name hundreds_1[3] -hierPin display hundreds_1[3] -pin display|Bin2Seg_i__1 A[3]
load net display|hundreds_2[0] -attr @rip(#000000) hundreds_2[0] -attr @name hundreds_2[0] -hierPin display hundreds_2[0] -pin display|Bin2Seg_i__4 A[0]
load net display|hundreds_2[1] -attr @rip(#000000) hundreds_2[1] -attr @name hundreds_2[1] -hierPin display hundreds_2[1] -pin display|Bin2Seg_i__4 A[1]
load net display|hundreds_2[2] -attr @rip(#000000) hundreds_2[2] -attr @name hundreds_2[2] -hierPin display hundreds_2[2] -pin display|Bin2Seg_i__4 A[2]
load net display|hundreds_2[3] -attr @rip(#000000) hundreds_2[3] -attr @name hundreds_2[3] -hierPin display hundreds_2[3] -pin display|Bin2Seg_i__4 A[3]
load net display|ones_1[0] -attr @rip(#000000) ones_1[0] -attr @name ones_1[0] -hierPin display ones_1[0] -pin display|Bin2Seg_i A[0]
load net display|ones_1[1] -attr @rip(#000000) ones_1[1] -attr @name ones_1[1] -hierPin display ones_1[1] -pin display|Bin2Seg_i A[1]
load net display|ones_1[2] -attr @rip(#000000) ones_1[2] -attr @name ones_1[2] -hierPin display ones_1[2] -pin display|Bin2Seg_i A[2]
load net display|ones_1[3] -attr @rip(#000000) ones_1[3] -attr @name ones_1[3] -hierPin display ones_1[3] -pin display|Bin2Seg_i A[3]
load net display|ones_2[0] -attr @rip(#000000) ones_2[0] -attr @name ones_2[0] -hierPin display ones_2[0] -pin display|Bin2Seg_i__2 A[0]
load net display|ones_2[1] -attr @rip(#000000) ones_2[1] -attr @name ones_2[1] -hierPin display ones_2[1] -pin display|Bin2Seg_i__2 A[1]
load net display|ones_2[2] -attr @rip(#000000) ones_2[2] -attr @name ones_2[2] -hierPin display ones_2[2] -pin display|Bin2Seg_i__2 A[2]
load net display|ones_2[3] -attr @rip(#000000) ones_2[3] -attr @name ones_2[3] -hierPin display ones_2[3] -pin display|Bin2Seg_i__2 A[3]
load net display|seg[0] -attr @rip(#000000) 0 -attr @name seg[0] -hierPin display seg[0] -pin display|seg_reg[6:0] Q[0]
load net display|seg[1] -attr @rip(#000000) 1 -attr @name seg[1] -hierPin display seg[1] -pin display|seg_reg[6:0] Q[1]
load net display|seg[2] -attr @rip(#000000) 2 -attr @name seg[2] -hierPin display seg[2] -pin display|seg_reg[6:0] Q[2]
load net display|seg[3] -attr @rip(#000000) 3 -attr @name seg[3] -hierPin display seg[3] -pin display|seg_reg[6:0] Q[3]
load net display|seg[4] -attr @rip(#000000) 4 -attr @name seg[4] -hierPin display seg[4] -pin display|seg_reg[6:0] Q[4]
load net display|seg[5] -attr @rip(#000000) 5 -attr @name seg[5] -hierPin display seg[5] -pin display|seg_reg[6:0] Q[5]
load net display|seg[6] -attr @rip(#000000) 6 -attr @name seg[6] -hierPin display seg[6] -pin display|seg_reg[6:0] Q[6]
load net display|seg_i__0_n_0 -attr @name seg_i__0_n_0 -pin display|seg_i__0 O -pin display|seg_reg[6:0] CE
netloc display|seg_i__0_n_0 1 3 1 NJ 408
load net display|seg_i_n_0 -attr @rip(#000000) O[6] -attr @name seg_i_n_0 -pin display|seg_i O[6] -pin display|seg_reg[6:0] D[6]
load net display|seg_i_n_1 -attr @rip(#000000) O[5] -attr @name seg_i_n_1 -pin display|seg_i O[5] -pin display|seg_reg[6:0] D[5]
load net display|seg_i_n_2 -attr @rip(#000000) O[4] -attr @name seg_i_n_2 -pin display|seg_i O[4] -pin display|seg_reg[6:0] D[4]
load net display|seg_i_n_3 -attr @rip(#000000) O[3] -attr @name seg_i_n_3 -pin display|seg_i O[3] -pin display|seg_reg[6:0] D[3]
load net display|seg_i_n_4 -attr @rip(#000000) O[2] -attr @name seg_i_n_4 -pin display|seg_i O[2] -pin display|seg_reg[6:0] D[2]
load net display|seg_i_n_5 -attr @rip(#000000) O[1] -attr @name seg_i_n_5 -pin display|seg_i O[1] -pin display|seg_reg[6:0] D[1]
load net display|seg_i_n_6 -attr @rip(#000000) O[0] -attr @name seg_i_n_6 -pin display|seg_i O[0] -pin display|seg_reg[6:0] D[0]
load net display|tens_1[0] -attr @rip(#000000) tens_1[0] -attr @name tens_1[0] -hierPin display tens_1[0] -pin display|Bin2Seg_i__0 A[0]
load net display|tens_1[1] -attr @rip(#000000) tens_1[1] -attr @name tens_1[1] -hierPin display tens_1[1] -pin display|Bin2Seg_i__0 A[1]
load net display|tens_1[2] -attr @rip(#000000) tens_1[2] -attr @name tens_1[2] -hierPin display tens_1[2] -pin display|Bin2Seg_i__0 A[2]
load net display|tens_1[3] -attr @rip(#000000) tens_1[3] -attr @name tens_1[3] -hierPin display tens_1[3] -pin display|Bin2Seg_i__0 A[3]
load net display|tens_2[0] -attr @rip(#000000) tens_2[0] -attr @name tens_2[0] -hierPin display tens_2[0] -pin display|Bin2Seg_i__3 A[0]
load net display|tens_2[1] -attr @rip(#000000) tens_2[1] -attr @name tens_2[1] -hierPin display tens_2[1] -pin display|Bin2Seg_i__3 A[1]
load net display|tens_2[2] -attr @rip(#000000) tens_2[2] -attr @name tens_2[2] -hierPin display tens_2[2] -pin display|Bin2Seg_i__3 A[2]
load net display|tens_2[3] -attr @rip(#000000) tens_2[3] -attr @name tens_2[3] -hierPin display tens_2[3] -pin display|Bin2Seg_i__3 A[3]
load netBundle @display|hundreds_1 4 display|hundreds_1[3] display|hundreds_1[2] display|hundreds_1[1] display|hundreds_1[0] -autobundled
netbloc @display|hundreds_1 1 0 2 N 378 NJ
load netBundle @display|hundreds_2 4 display|hundreds_2[3] display|hundreds_2[2] display|hundreds_2[1] display|hundreds_2[0] -autobundled
netbloc @display|hundreds_2 1 0 2 140 738 NJ
load netBundle @display|ones_1 4 display|ones_1[3] display|ones_1[2] display|ones_1[1] display|ones_1[0] -autobundled
netbloc @display|ones_1 1 0 2 NJ 468 NJ
load netBundle @display|ones_2 4 display|ones_2[3] display|ones_2[2] display|ones_2[1] display|ones_2[0] -autobundled
netbloc @display|ones_2 1 0 2 NJ 558 N
load netBundle @display|tens_1 4 display|tens_1[3] display|tens_1[2] display|tens_1[1] display|tens_1[0] -autobundled
netbloc @display|tens_1 1 0 2 NJ 578 350
load netBundle @display|tens_2 4 display|tens_2[3] display|tens_2[2] display|tens_2[1] display|tens_2[0] -autobundled
netbloc @display|tens_2 1 0 2 NJ 758 330
load netBundle @display|Bin2Seg 7 display|Bin2Seg[0] display|Bin2Seg[1] display|Bin2Seg[2] display|Bin2Seg[3] display|Bin2Seg[4] display|Bin2Seg[5] display|Bin2Seg[6] -autobundled
netbloc @display|Bin2Seg 1 2 1 590 468n
load netBundle @display|Bin2Seg_i__0_n_ 7 display|Bin2Seg_i__0_n_0 display|Bin2Seg_i__0_n_1 display|Bin2Seg_i__0_n_2 display|Bin2Seg_i__0_n_3 display|Bin2Seg_i__0_n_4 display|Bin2Seg_i__0_n_5 display|Bin2Seg_i__0_n_6 -autobundled
netbloc @display|Bin2Seg_i__0_n_ 1 2 1 570 288n
load netBundle @display|Bin2Seg_i__1_n_ 7 display|Bin2Seg_i__1_n_0 display|Bin2Seg_i__1_n_1 display|Bin2Seg_i__1_n_2 display|Bin2Seg_i__1_n_3 display|Bin2Seg_i__1_n_4 display|Bin2Seg_i__1_n_5 display|Bin2Seg_i__1_n_6 -autobundled
netbloc @display|Bin2Seg_i__1_n_ 1 2 1 550 378n
load netBundle @display|Bin2Seg_i__2_n_ 7 display|Bin2Seg_i__2_n_0 display|Bin2Seg_i__2_n_1 display|Bin2Seg_i__2_n_2 display|Bin2Seg_i__2_n_3 display|Bin2Seg_i__2_n_4 display|Bin2Seg_i__2_n_5 display|Bin2Seg_i__2_n_6 -autobundled
netbloc @display|Bin2Seg_i__2_n_ 1 2 1 N 558
load netBundle @display|Bin2Seg_i__3_n_ 7 display|Bin2Seg_i__3_n_0 display|Bin2Seg_i__3_n_1 display|Bin2Seg_i__3_n_2 display|Bin2Seg_i__3_n_3 display|Bin2Seg_i__3_n_4 display|Bin2Seg_i__3_n_5 display|Bin2Seg_i__3_n_6 -autobundled
netbloc @display|Bin2Seg_i__3_n_ 1 2 1 570 578n
load netBundle @display|Bin2Seg_i__4_n_ 7 display|Bin2Seg_i__4_n_0 display|Bin2Seg_i__4_n_1 display|Bin2Seg_i__4_n_2 display|Bin2Seg_i__4_n_3 display|Bin2Seg_i__4_n_4 display|Bin2Seg_i__4_n_5 display|Bin2Seg_i__4_n_6 -autobundled
netbloc @display|Bin2Seg_i__4_n_ 1 2 1 630 598n
load netBundle @display|POS_OUT_i_n_ 8 display|POS_OUT_i_n_0 display|POS_OUT_i_n_1 display|POS_OUT_i_n_2 display|POS_OUT_i_n_3 display|POS_OUT_i_n_4 display|POS_OUT_i_n_5 display|POS_OUT_i_n_6 display|POS_OUT_i_n_7 -autobundled
netbloc @display|POS_OUT_i_n_ 1 3 1 NJ 288
load netBundle @display|Pos_register0_out 32 display|Pos_register0_out[31] display|Pos_register0_out[30] display|Pos_register0_out[29] display|Pos_register0_out[28] display|Pos_register0_out[27] display|Pos_register0_out[26] display|Pos_register0_out[25] display|Pos_register0_out[24] display|Pos_register0_out[23] display|Pos_register0_out[22] display|Pos_register0_out[21] display|Pos_register0_out[20] display|Pos_register0_out[19] display|Pos_register0_out[18] display|Pos_register0_out[17] display|Pos_register0_out[16] display|Pos_register0_out[15] display|Pos_register0_out[14] display|Pos_register0_out[13] display|Pos_register0_out[12] display|Pos_register0_out[11] display|Pos_register0_out[10] display|Pos_register0_out[9] display|Pos_register0_out[8] display|Pos_register0_out[7] display|Pos_register0_out[6] display|Pos_register0_out[5] display|Pos_register0_out[4] display|Pos_register0_out[3] display|Pos_register0_out[2] display|Pos_register0_out[1] display|Pos_register0_out[0] -autobundled
netbloc @display|Pos_register0_out 1 1 1 330J 158n
load netBundle @display|seg_i_n_ 7 display|seg_i_n_0 display|seg_i_n_1 display|seg_i_n_2 display|seg_i_n_3 display|seg_i_n_4 display|seg_i_n_5 display|seg_i_n_6 -autobundled
netbloc @display|seg_i_n_ 1 3 1 1050 428n
load netBundle @display|Pos_register 32 display|Pos_register[31] display|Pos_register[30] display|Pos_register[29] display|Pos_register[28] display|Pos_register[27] display|Pos_register[26] display|Pos_register[25] display|Pos_register[24] display|Pos_register[23] display|Pos_register[22] display|Pos_register[21] display|Pos_register[20] display|Pos_register[19] display|Pos_register[18] display|Pos_register[17] display|Pos_register[16] display|Pos_register[15] display|Pos_register[14] display|Pos_register[13] display|Pos_register[12] display|Pos_register[11] display|Pos_register[10] display|Pos_register[9] display|Pos_register[8] display|Pos_register[7] display|Pos_register[6] display|Pos_register[5] display|Pos_register[4] display|Pos_register[3] display|Pos_register[2] display|Pos_register[1] display|Pos_register[0] -autobundled
netbloc @display|Pos_register 1 0 3 140 218 NJ 218 610
load netBundle @display|POS_OUT 8 display|POS_OUT[7] display|POS_OUT[6] display|POS_OUT[5] display|POS_OUT[4] display|POS_OUT[3] display|POS_OUT[2] display|POS_OUT[1] display|POS_OUT[0] -autobundled
netbloc @display|POS_OUT 1 4 1 N 278
load netBundle @display|seg 7 display|seg[6] display|seg[5] display|seg[4] display|seg[3] display|seg[2] display|seg[1] display|seg[0] -autobundled
netbloc @display|seg 1 4 1 N 408
levelinfo -pg 1 0 110 1350
levelinfo -hier display * 180 420 910 1110 *
pagesize -pg 1 -db -bbox -sgen 0 -10 1350 820
pagesize -hier display -db -bbox -sgen 110 28 1240 788
show
fullfit
#
# initialize ictrl to current module top_level work:top_level:NOFILE
ictrl init topinfo |
