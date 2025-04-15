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
load symbol RTL_GEQ work RTL(>=) pin O output.right pinBus I0 input.left [23:0] pinBus I1 input.left [23:0] fillcolor 1
load symbol RTL_AND1 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_XOR work XOR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_EQ work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_MUX18 work MUX pin S input.bot pinBus I0 input.left [23:0] pinBus I1 input.left [23:0] pinBus O output.right [23:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_2 work GEN pin C input.clk.left pin CE input.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_ADD1 work RTL(+) pin I1 input.left pinBus I0 input.left [16:0] pinBus O output.right [16:0] fillcolor 1
load symbol RTL_LT3 work RTL(<) pin O output.right pinBus I0 input.left [17:0] pinBus I1 input.left [17:0] fillcolor 1
load symbol RTL_MUX3 work MUX pin S input.bot pinBus I0 input.left [16:0] pinBus I1 input.left [16:0] pinBus O output.right [16:0] fillcolor 1
load symbol RTL_ROM1 work GEN pin O output.right pinBus A input.left [17:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_3 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_LT0 work RTL(<) pin O output.right pinBus I0 input.left [18:0] pinBus I1 input.left [18:0] fillcolor 1
load symbol RTL_GT work RTL(>) pin O output.right pinBus I0 input.left [18:0] pinBus I1 input.left [18:0] fillcolor 1
load symbol RTL_MUX10 work MUX pin S input.bot pinBus I0 input.left [18:0] pinBus I1 input.left [18:0] pinBus O output.right [18:0] fillcolor 1
load symbol RTL_MOD work RTL(%) pinBus I0 input.left [8:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_DIV work RTL(/) pinBus I0 input.left [8:0] pinBus I1 input.left [6:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_SUB0 work RTL(-) pin I1 input.left pinBus I0 input.left [18:0] pinBus O output.right [18:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [18:0] pinBus I1 input.left [4:0] pinBus O output.right [18:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [18:0] pinBus I1 input.left [6:0] pinBus O output.right [25:0] fillcolor 1
load symbol RTL_MOD1 work RTL(%) pinBus I0 input.left [8:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_ADD4 work RTL(+) pin I1 input.left pinBus I0 input.left [18:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_ADD2 work RTL(+) pinBus I0 input.left [18:0] pinBus I1 input.left [4:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_ADD3 work RTL(+) pin I1 input.left pinBus I0 input.left [23:0] pinBus O output.right [23:0] fillcolor 1
load symbol RTL_DIV0 work RTL(/) pinBus I0 input.left [25:0] pinBus I1 input.left [17:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_MOD0 work RTL(%) pinBus I0 input.left [8:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_DIV1 work RTL(/) pinBus I0 input.left [6:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_2 work[18:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [18:0] pinBus Q output.right [18:0] fillcolor 1 sandwich 3 prop @bundle 19
load symbol RTL_REG_ASYNC__BREG_2 work[16:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [16:0] pinBus Q output.right [16:0] fillcolor 1 sandwich 3 prop @bundle 17
load symbol RTL_REG_SYNC__BREG_1 work[18:0]swws GEN pin C input.clk.left pinBus D input.left [18:0] pinBus Q output.right [18:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 19
load symbol RTL_REG_ASYNC__BREG_2 work[23:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [23:0] pinBus Q output.right [23:0] fillcolor 1 sandwich 3 prop @bundle 24
load inst PWM_in_1 pwm work:pwm:NOFILE -autohide -attr @cell(#000000) pwm -attr @fillcolor #fafafa -pinBusAttr hundreds_out @name hundreds_out[3:0] -pinBusAttr ones_out @name ones_out[3:0] -pinBusAttr tens_out @name tens_out[3:0] -pg 1 -lvl 1 -x 80 -y 58
load inst PWM_in_1|accelerating0_i RTL_GEQ work -hier PWM_in_1 -attr @cell(#000000) RTL_GEQ -attr @name accelerating0_i -pinBusAttr I0 @name I0[23:0] -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr V=X\"07A120\" -pg 1 -lvl 11 -x 3690 -y 148
load inst PWM_in_1|accelerating_counter0_i RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name accelerating_counter0_i -pg 1 -lvl 8 -x 2380 -y 388
load inst PWM_in_1|accelerating_counter1_i RTL_XOR work -hier PWM_in_1 -attr @cell(#000000) RTL_XOR -attr @name accelerating_counter1_i -pg 1 -lvl 8 -x 2380 -y 488
load inst PWM_in_1|accelerating_counter1_i__0 RTL_XOR work -hier PWM_in_1 -attr @cell(#000000) RTL_XOR -attr @name accelerating_counter1_i__0 -pg 1 -lvl 7 -x 2060 -y 418
load inst PWM_in_1|accelerating_counter2_i RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name accelerating_counter2_i -pg 1 -lvl 7 -x 2060 -y 588
load inst PWM_in_1|accelerating_counter2_i__0 RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name accelerating_counter2_i__0 -pg 1 -lvl 7 -x 2060 -y 488
load inst PWM_in_1|accelerating_counter3_i RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name accelerating_counter3_i -pg 1 -lvl 6 -x 1720 -y 598
load inst PWM_in_1|accelerating_counter3_i__0 RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name accelerating_counter3_i__0 -pg 1 -lvl 6 -x 1720 -y 498
load inst PWM_in_1|accelerating_counter_i RTL_MUX18 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_counter_i -pinBusAttr I0 @name I0[23:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[23:0] -pg 1 -lvl 9 -x 2740 -y 158
load inst PWM_in_1|accelerating_counter_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_counter_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2740 -y 358
load inst PWM_in_1|accelerating_i RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 4080 -y 88
load inst PWM_in_1|accelerating_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 4080 -y 218
load inst PWM_in_1|accelerating_reg RTL_REG_ASYNC__BREG_2 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name accelerating_reg -pg 1 -lvl 13 -x 4560 -y 368
load inst PWM_in_1|btn_down_cnt0_i RTL_ADD1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name btn_down_cnt0_i -pinBusAttr I0 @name I0[16:0] -pinBusAttr O @name O[16:0] -pg 1 -lvl 1 -x 330 -y 608
load inst PWM_in_1|btn_down_cnt0_i__0 RTL_LT3 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name btn_down_cnt0_i__0 -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr I1 @attr V=X\"186A0\" -pg 1 -lvl 1 -x 330 -y 778
load inst PWM_in_1|btn_down_cnt_i RTL_MUX3 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_down_cnt_i -pinBusAttr I0 @name I0[16:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[16:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[16:0] -pg 1 -lvl 2 -x 730 -y 618
load inst PWM_in_1|btn_down_cnt_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_down_cnt_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 730 -y 788
load inst PWM_in_1|btn_down_db_i RTL_ROM1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ROM -attr @name btn_down_db_i -pinBusAttr A @name A[17:0] -pg 1 -lvl 4 -x 1250 -y 738
load inst PWM_in_1|btn_down_db_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_db_reg -pg 1 -lvl 5 -x 1450 -y 728
load inst PWM_in_1|btn_down_prev_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_prev_reg -pg 1 -lvl 10 -x 3170 -y 518
load inst PWM_in_1|btn_up_cnt0_i RTL_ADD1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name btn_up_cnt0_i -pinBusAttr I0 @name I0[16:0] -pinBusAttr O @name O[16:0] -pg 1 -lvl 1 -x 330 -y 428
load inst PWM_in_1|btn_up_cnt0_i__0 RTL_LT3 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name btn_up_cnt0_i__0 -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr I1 @attr V=X\"186A0\" -pg 1 -lvl 1 -x 330 -y 278
load inst PWM_in_1|btn_up_cnt_i RTL_MUX3 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_up_cnt_i -pinBusAttr I0 @name I0[16:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[16:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[16:0] -pg 1 -lvl 2 -x 730 -y 448
load inst PWM_in_1|btn_up_cnt_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_up_cnt_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 730 -y 288
load inst PWM_in_1|btn_up_db_i RTL_ROM1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ROM -attr @name btn_up_db_i -pinBusAttr A @name A[17:0] -pg 1 -lvl 4 -x 1250 -y 588
load inst PWM_in_1|btn_up_db_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_db_reg -pg 1 -lvl 5 -x 1450 -y 578
load inst PWM_in_1|btn_up_prev_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_prev_reg -pg 1 -lvl 8 -x 2380 -y 728
load inst PWM_in_1|counter1_i RTL_LT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name counter1_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr V=X\"30D3F\" -pg 1 -lvl 18 -x 6460 -y 758
load inst PWM_in_1|counter_i RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name counter_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 19 -x 6930 -y 738
load inst PWM_in_1|counter_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name counter_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 20 -x 7270 -y 498
load inst PWM_in_1|duty_cycle_internal1_i RTL_GT work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name duty_cycle_internal1_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pg 1 -lvl 11 -x 3690 -y 488
load inst PWM_in_1|duty_cycle_internal1_i__0 RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_cycle_internal1_i__0 -pg 1 -lvl 12 -x 4080 -y 608
load inst PWM_in_1|duty_cycle_internal1_i__1 RTL_LT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name duty_cycle_internal1_i__1 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr V=X\"30D3F\" -pg 1 -lvl 10 -x 3170 -y 978
load inst PWM_in_1|duty_cycle_internal1_i__2 RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_cycle_internal1_i__2 -pg 1 -lvl 14 -x 4960 -y 618
load inst PWM_in_1|duty_cycle_internal1_i__3 RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_cycle_internal1_i__3 -pg 1 -lvl 16 -x 5720 -y 558
load inst PWM_in_1|duty_cycle_internal1_i__4 RTL_AND1 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_cycle_internal1_i__4 -pg 1 -lvl 10 -x 3170 -y 1078
load inst PWM_in_1|duty_cycle_internal2_i RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name duty_cycle_internal2_i -pg 1 -lvl 11 -x 3690 -y 608
load inst PWM_in_1|duty_cycle_internal2_i__0 RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name duty_cycle_internal2_i__0 -pg 1 -lvl 9 -x 2740 -y 1088
load inst PWM_in_1|duty_cycle_internal_i RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 12 -x 4080 -y 718
load inst PWM_in_1|duty_cycle_internal_i__0 RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__0 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 13 -x 4560 -y 548
load inst PWM_in_1|duty_cycle_internal_i__1 RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__1 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 14 -x 4960 -y 768
load inst PWM_in_1|duty_cycle_internal_i__10 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__10 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 16 -x 5720 -y 888
load inst PWM_in_1|duty_cycle_internal_i__11 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__11 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 17 -x 6120 -y 798
load inst PWM_in_1|duty_cycle_internal_i__2 RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__2 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 15 -x 5380 -y 748
load inst PWM_in_1|duty_cycle_internal_i__3 RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__3 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 16 -x 5720 -y 728
load inst PWM_in_1|duty_cycle_internal_i__4 RTL_MUX10 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__4 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[18:0] -pg 1 -lvl 17 -x 6120 -y 638
load inst PWM_in_1|duty_cycle_internal_i__5 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__5 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -x 3690 -y 1018
load inst PWM_in_1|duty_cycle_internal_i__6 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__6 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 4080 -y 1038
load inst PWM_in_1|duty_cycle_internal_i__7 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__7 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -x 4560 -y 928
load inst PWM_in_1|duty_cycle_internal_i__8 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__8 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -x 4960 -y 918
load inst PWM_in_1|duty_cycle_internal_i__9 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_cycle_internal_i__9 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 15 -x 5380 -y 868
load inst PWM_in_1|hundreds_out0_i RTL_MOD work -hier PWM_in_1 -attr @cell(#000000) RTL_MOD -attr @name hundreds_out0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr V=B\"1111101000\" -pinBusAttr O @name O[9:0] -pg 1 -lvl 21 -x 7680 -y 868
load inst PWM_in_1|hundreds_out_i RTL_DIV work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name hundreds_out_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pinBusAttr O @name O[3:0] -pg 1 -lvl 22 -x 8050 -y 838
load inst PWM_in_1|minusOp_i RTL_SUB0 work -hier PWM_in_1 -attr @cell(#000000) RTL_SUB -attr @name minusOp_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr O @name O[18:0] -pg 1 -lvl 15 -x 5380 -y 998
load inst PWM_in_1|minusOp_i__0 RTL_SUB work -hier PWM_in_1 -attr @cell(#000000) RTL_SUB -attr @name minusOp_i__0 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr V=B\"10100\" -pinBusAttr O @name O[18:0] -pg 1 -lvl 11 -x 3690 -y 798
load inst PWM_in_1|multOp_i RTL_MULT work -hier PWM_in_1 -attr @cell(#000000) RTL_MULT -attr @name multOp_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pinBusAttr O @name O[25:0] -pg 1 -lvl 19 -x 6930 -y 638
load inst PWM_in_1|ones_out0_i RTL_MOD1 work -hier PWM_in_1 -attr @cell(#000000) RTL_MOD -attr @name ones_out0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pinBusAttr O @name O[3:0] -pg 1 -lvl 22 -x 8050 -y 928
load inst PWM_in_1|plusOp_i RTL_ADD4 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 13 -x 4560 -y 758
load inst PWM_in_1|plusOp_i__0 RTL_ADD2 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i__0 -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr V=B\"10100\" -pinBusAttr O @name O[17:0] -pg 1 -lvl 11 -x 3690 -y 708
load inst PWM_in_1|plusOp_i__1 RTL_ADD3 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i__1 -pinBusAttr I0 @name I0[23:0] -pinBusAttr O @name O[23:0] -pg 1 -lvl 8 -x 2380 -y 148
load inst PWM_in_1|plusOp_i__2 RTL_ADD4 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i__2 -pinBusAttr I0 @name I0[18:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 20 -x 7270 -y 768
load inst PWM_in_1|pwm_out0_i RTL_GT work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name pwm_out0_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pg 1 -lvl 22 -x 8050 -y 718
load inst PWM_in_1|temp_duty_precent_i RTL_DIV0 work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name temp_duty_precent_i -pinBusAttr I0 @name I0[25:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr I1 @attr V=X\"30D3F\" -pinBusAttr O @name O[8:0] -pg 1 -lvl 20 -x 7270 -y 648
load inst PWM_in_1|tens_out0_i RTL_MOD0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MOD -attr @name tens_out0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pinBusAttr O @name O[6:0] -pg 1 -lvl 21 -x 7680 -y 968
load inst PWM_in_1|tens_out_i RTL_DIV1 work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name tens_out_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pinBusAttr O @name O[3:0] -pg 1 -lvl 22 -x 8050 -y 1018
load inst PWM_in_1|duty_cycle_internal_reg[18:0] RTL_REG_ASYNC__BREG_2 work[18:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name duty_cycle_internal_reg[18:0] -pg 1 -lvl 18 -x 6460 -y 618
load inst PWM_in_1|btn_up_cnt_reg[16:0] RTL_REG_ASYNC__BREG_2 work[16:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_cnt_reg[16:0] -pg 1 -lvl 3 -x 980 -y 458
load inst PWM_in_1|btn_down_cnt_reg[16:0] RTL_REG_ASYNC__BREG_2 work[16:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_cnt_reg[16:0] -pg 1 -lvl 3 -x 980 -y 608
load inst PWM_in_1|counter_reg[18:0] RTL_REG_SYNC__BREG_1 work[18:0]swws -hier PWM_in_1 -attr @cell(#000000) RTL_REG_SYNC -attr @name counter_reg[18:0] -pg 1 -lvl 21 -x 7680 -y 728
load inst PWM_in_1|accelerating_counter_reg[23:0] RTL_REG_ASYNC__BREG_2 work[23:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name accelerating_counter_reg[23:0] -pg 1 -lvl 10 -x 3170 -y 358
load net PWM_in_1|<const0> -ground -attr @name <const0> -pin PWM_in_1|accelerating0_i I1[23] -pin PWM_in_1|accelerating0_i I1[22] -pin PWM_in_1|accelerating0_i I1[21] -pin PWM_in_1|accelerating0_i I1[20] -pin PWM_in_1|accelerating0_i I1[19] -pin PWM_in_1|accelerating0_i I1[14] -pin PWM_in_1|accelerating0_i I1[12] -pin PWM_in_1|accelerating0_i I1[11] -pin PWM_in_1|accelerating0_i I1[10] -pin PWM_in_1|accelerating0_i I1[9] -pin PWM_in_1|accelerating0_i I1[7] -pin PWM_in_1|accelerating0_i I1[6] -pin PWM_in_1|accelerating0_i I1[4] -pin PWM_in_1|accelerating0_i I1[3] -pin PWM_in_1|accelerating0_i I1[2] -pin PWM_in_1|accelerating0_i I1[1] -pin PWM_in_1|accelerating0_i I1[0] -pin PWM_in_1|accelerating_counter3_i I1 -pin PWM_in_1|accelerating_counter3_i__0 I1 -pin PWM_in_1|accelerating_counter_i I1[23] -pin PWM_in_1|accelerating_counter_i I1[22] -pin PWM_in_1|accelerating_counter_i I1[21] -pin PWM_in_1|accelerating_counter_i I1[20] -pin PWM_in_1|accelerating_counter_i I1[19] -pin PWM_in_1|accelerating_counter_i I1[18] -pin PWM_in_1|accelerating_counter_i I1[17] -pin PWM_in_1|accelerating_counter_i I1[16] -pin PWM_in_1|accelerating_counter_i I1[15] -pin PWM_in_1|accelerating_counter_i I1[14] -pin PWM_in_1|accelerating_counter_i I1[13] -pin PWM_in_1|accelerating_counter_i I1[12] -pin PWM_in_1|accelerating_counter_i I1[11] -pin PWM_in_1|accelerating_counter_i I1[10] -pin PWM_in_1|accelerating_counter_i I1[9] -pin PWM_in_1|accelerating_counter_i I1[8] -pin PWM_in_1|accelerating_counter_i I1[7] -pin PWM_in_1|accelerating_counter_i I1[6] -pin PWM_in_1|accelerating_counter_i I1[5] -pin PWM_in_1|accelerating_counter_i I1[4] -pin PWM_in_1|accelerating_counter_i I1[3] -pin PWM_in_1|accelerating_counter_i I1[2] -pin PWM_in_1|accelerating_counter_i I1[1] -pin PWM_in_1|accelerating_counter_i I1[0] -pin PWM_in_1|accelerating_i I1 -pin PWM_in_1|btn_down_cnt0_i__0 I0[17] -pin PWM_in_1|btn_down_cnt0_i__0 I1[17] -pin PWM_in_1|btn_down_cnt0_i__0 I1[14] -pin PWM_in_1|btn_down_cnt0_i__0 I1[13] -pin PWM_in_1|btn_down_cnt0_i__0 I1[12] -pin PWM_in_1|btn_down_cnt0_i__0 I1[11] -pin PWM_in_1|btn_down_cnt0_i__0 I1[8] -pin PWM_in_1|btn_down_cnt0_i__0 I1[6] -pin PWM_in_1|btn_down_cnt0_i__0 I1[4] -pin PWM_in_1|btn_down_cnt0_i__0 I1[3] -pin PWM_in_1|btn_down_cnt0_i__0 I1[2] -pin PWM_in_1|btn_down_cnt0_i__0 I1[1] -pin PWM_in_1|btn_down_cnt0_i__0 I1[0] -pin PWM_in_1|btn_down_cnt_i I1[16] -pin PWM_in_1|btn_down_cnt_i I1[15] -pin PWM_in_1|btn_down_cnt_i I1[14] -pin PWM_in_1|btn_down_cnt_i I1[13] -pin PWM_in_1|btn_down_cnt_i I1[12] -pin PWM_in_1|btn_down_cnt_i I1[11] -pin PWM_in_1|btn_down_cnt_i I1[10] -pin PWM_in_1|btn_down_cnt_i I1[9] -pin PWM_in_1|btn_down_cnt_i I1[8] -pin PWM_in_1|btn_down_cnt_i I1[7] -pin PWM_in_1|btn_down_cnt_i I1[6] -pin PWM_in_1|btn_down_cnt_i I1[5] -pin PWM_in_1|btn_down_cnt_i I1[4] -pin PWM_in_1|btn_down_cnt_i I1[3] -pin PWM_in_1|btn_down_cnt_i I1[2] -pin PWM_in_1|btn_down_cnt_i I1[1] -pin PWM_in_1|btn_down_cnt_i I1[0] -pin PWM_in_1|btn_down_db_i A[17] -pin PWM_in_1|btn_up_cnt0_i__0 I0[17] -pin PWM_in_1|btn_up_cnt0_i__0 I1[17] -pin PWM_in_1|btn_up_cnt0_i__0 I1[14] -pin PWM_in_1|btn_up_cnt0_i__0 I1[13] -pin PWM_in_1|btn_up_cnt0_i__0 I1[12] -pin PWM_in_1|btn_up_cnt0_i__0 I1[11] -pin PWM_in_1|btn_up_cnt0_i__0 I1[8] -pin PWM_in_1|btn_up_cnt0_i__0 I1[6] -pin PWM_in_1|btn_up_cnt0_i__0 I1[4] -pin PWM_in_1|btn_up_cnt0_i__0 I1[3] -pin PWM_in_1|btn_up_cnt0_i__0 I1[2] -pin PWM_in_1|btn_up_cnt0_i__0 I1[1] -pin PWM_in_1|btn_up_cnt0_i__0 I1[0] -pin PWM_in_1|btn_up_cnt_i I1[16] -pin PWM_in_1|btn_up_cnt_i I1[15] -pin PWM_in_1|btn_up_cnt_i I1[14] -pin PWM_in_1|btn_up_cnt_i I1[13] -pin PWM_in_1|btn_up_cnt_i I1[12] -pin PWM_in_1|btn_up_cnt_i I1[11] -pin PWM_in_1|btn_up_cnt_i I1[10] -pin PWM_in_1|btn_up_cnt_i I1[9] -pin PWM_in_1|btn_up_cnt_i I1[8] -pin PWM_in_1|btn_up_cnt_i I1[7] -pin PWM_in_1|btn_up_cnt_i I1[6] -pin PWM_in_1|btn_up_cnt_i I1[5] -pin PWM_in_1|btn_up_cnt_i I1[4] -pin PWM_in_1|btn_up_cnt_i I1[3] -pin PWM_in_1|btn_up_cnt_i I1[2] -pin PWM_in_1|btn_up_cnt_i I1[1] -pin PWM_in_1|btn_up_cnt_i I1[0] -pin PWM_in_1|btn_up_db_i A[17] -pin PWM_in_1|counter1_i I1[18] -pin PWM_in_1|counter1_i I1[15] -pin PWM_in_1|counter1_i I1[14] -pin PWM_in_1|counter1_i I1[13] -pin PWM_in_1|counter1_i I1[12] -pin PWM_in_1|counter1_i I1[9] -pin PWM_in_1|counter1_i I1[7] -pin PWM_in_1|counter1_i I1[6] -pin PWM_in_1|counter_i I0 -pin PWM_in_1|counter_reg[18:0] D[18] -pin PWM_in_1|duty_cycle_internal1_i I1[18] -pin PWM_in_1|duty_cycle_internal1_i I1[17] -pin PWM_in_1|duty_cycle_internal1_i I1[16] -pin PWM_in_1|duty_cycle_internal1_i I1[15] -pin PWM_in_1|duty_cycle_internal1_i I1[14] -pin PWM_in_1|duty_cycle_internal1_i I1[13] -pin PWM_in_1|duty_cycle_internal1_i I1[12] -pin PWM_in_1|duty_cycle_internal1_i I1[11] -pin PWM_in_1|duty_cycle_internal1_i I1[10] -pin PWM_in_1|duty_cycle_internal1_i I1[9] -pin PWM_in_1|duty_cycle_internal1_i I1[8] -pin PWM_in_1|duty_cycle_internal1_i I1[7] -pin PWM_in_1|duty_cycle_internal1_i I1[6] -pin PWM_in_1|duty_cycle_internal1_i I1[5] -pin PWM_in_1|duty_cycle_internal1_i I1[4] -pin PWM_in_1|duty_cycle_internal1_i I1[3] -pin PWM_in_1|duty_cycle_internal1_i I1[2] -pin PWM_in_1|duty_cycle_internal1_i I1[1] -pin PWM_in_1|duty_cycle_internal1_i I1[0] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[18] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[15] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[14] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[13] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[12] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[9] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[7] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[6] -pin PWM_in_1|duty_cycle_internal2_i I1 -pin PWM_in_1|duty_cycle_internal2_i__0 I1 -pin PWM_in_1|duty_cycle_internal_i I1[18] -pin PWM_in_1|duty_cycle_internal_i__0 I1[18] -pin PWM_in_1|duty_cycle_internal_i__1 I0[18] -pin PWM_in_1|duty_cycle_internal_i__5 I1 -pin PWM_in_1|hundreds_out0_i I1[4] -pin PWM_in_1|hundreds_out0_i I1[2] -pin PWM_in_1|hundreds_out0_i I1[1] -pin PWM_in_1|hundreds_out0_i I1[0] -pin PWM_in_1|hundreds_out_i I1[4] -pin PWM_in_1|hundreds_out_i I1[3] -pin PWM_in_1|hundreds_out_i I1[1] -pin PWM_in_1|hundreds_out_i I1[0] -pin PWM_in_1|minusOp_i__0 I1[3] -pin PWM_in_1|minusOp_i__0 I1[1] -pin PWM_in_1|minusOp_i__0 I1[0] -pin PWM_in_1|multOp_i I1[4] -pin PWM_in_1|multOp_i I1[3] -pin PWM_in_1|multOp_i I1[1] -pin PWM_in_1|multOp_i I1[0] -pin PWM_in_1|ones_out0_i I1[2] -pin PWM_in_1|ones_out0_i I1[0] -pin PWM_in_1|plusOp_i__0 I1[3] -pin PWM_in_1|plusOp_i__0 I1[1] -pin PWM_in_1|plusOp_i__0 I1[0] -pin PWM_in_1|temp_duty_precent_i I1[15] -pin PWM_in_1|temp_duty_precent_i I1[14] -pin PWM_in_1|temp_duty_precent_i I1[13] -pin PWM_in_1|temp_duty_precent_i I1[12] -pin PWM_in_1|temp_duty_precent_i I1[9] -pin PWM_in_1|temp_duty_precent_i I1[7] -pin PWM_in_1|temp_duty_precent_i I1[6] -pin PWM_in_1|tens_out0_i I1[4] -pin PWM_in_1|tens_out0_i I1[3] -pin PWM_in_1|tens_out0_i I1[1] -pin PWM_in_1|tens_out0_i I1[0] -pin PWM_in_1|tens_out_i I1[2] -pin PWM_in_1|tens_out_i I1[0]
load net PWM_in_1|<const1> -power -attr @name <const1> -pin PWM_in_1|accelerating0_i I1[18] -pin PWM_in_1|accelerating0_i I1[17] -pin PWM_in_1|accelerating0_i I1[16] -pin PWM_in_1|accelerating0_i I1[15] -pin PWM_in_1|accelerating0_i I1[13] -pin PWM_in_1|accelerating0_i I1[8] -pin PWM_in_1|accelerating0_i I1[5] -pin PWM_in_1|accelerating_counter_i__0 I0 -pin PWM_in_1|btn_down_cnt0_i I1 -pin PWM_in_1|btn_down_cnt0_i__0 I1[16] -pin PWM_in_1|btn_down_cnt0_i__0 I1[15] -pin PWM_in_1|btn_down_cnt0_i__0 I1[10] -pin PWM_in_1|btn_down_cnt0_i__0 I1[9] -pin PWM_in_1|btn_down_cnt0_i__0 I1[7] -pin PWM_in_1|btn_down_cnt0_i__0 I1[5] -pin PWM_in_1|btn_down_cnt_i__0 I1 -pin PWM_in_1|btn_up_cnt0_i I1 -pin PWM_in_1|btn_up_cnt0_i__0 I1[16] -pin PWM_in_1|btn_up_cnt0_i__0 I1[15] -pin PWM_in_1|btn_up_cnt0_i__0 I1[10] -pin PWM_in_1|btn_up_cnt0_i__0 I1[9] -pin PWM_in_1|btn_up_cnt0_i__0 I1[7] -pin PWM_in_1|btn_up_cnt0_i__0 I1[5] -pin PWM_in_1|btn_up_cnt_i__0 I1 -pin PWM_in_1|counter1_i I1[17] -pin PWM_in_1|counter1_i I1[16] -pin PWM_in_1|counter1_i I1[11] -pin PWM_in_1|counter1_i I1[10] -pin PWM_in_1|counter1_i I1[8] -pin PWM_in_1|counter1_i I1[5] -pin PWM_in_1|counter1_i I1[4] -pin PWM_in_1|counter1_i I1[3] -pin PWM_in_1|counter1_i I1[2] -pin PWM_in_1|counter1_i I1[1] -pin PWM_in_1|counter1_i I1[0] -pin PWM_in_1|counter_i I1 -pin PWM_in_1|counter_i__0 I0 -pin PWM_in_1|duty_cycle_internal1_i__1 I1[17] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[16] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[11] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[10] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[8] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[5] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[4] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[3] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[2] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[1] -pin PWM_in_1|duty_cycle_internal1_i__1 I1[0] -pin PWM_in_1|duty_cycle_internal_i__10 I0 -pin PWM_in_1|duty_cycle_internal_i__6 I0 -pin PWM_in_1|duty_cycle_internal_i__8 I0 -pin PWM_in_1|hundreds_out0_i I1[9] -pin PWM_in_1|hundreds_out0_i I1[8] -pin PWM_in_1|hundreds_out0_i I1[7] -pin PWM_in_1|hundreds_out0_i I1[6] -pin PWM_in_1|hundreds_out0_i I1[5] -pin PWM_in_1|hundreds_out0_i I1[3] -pin PWM_in_1|hundreds_out_i I1[6] -pin PWM_in_1|hundreds_out_i I1[5] -pin PWM_in_1|hundreds_out_i I1[2] -pin PWM_in_1|minusOp_i I1 -pin PWM_in_1|minusOp_i__0 I1[4] -pin PWM_in_1|minusOp_i__0 I1[2] -pin PWM_in_1|multOp_i I1[6] -pin PWM_in_1|multOp_i I1[5] -pin PWM_in_1|multOp_i I1[2] -pin PWM_in_1|ones_out0_i I1[3] -pin PWM_in_1|ones_out0_i I1[1] -pin PWM_in_1|plusOp_i I1 -pin PWM_in_1|plusOp_i__0 I1[4] -pin PWM_in_1|plusOp_i__0 I1[2] -pin PWM_in_1|plusOp_i__1 I1 -pin PWM_in_1|plusOp_i__2 I1 -pin PWM_in_1|temp_duty_precent_i I1[17] -pin PWM_in_1|temp_duty_precent_i I1[16] -pin PWM_in_1|temp_duty_precent_i I1[11] -pin PWM_in_1|temp_duty_precent_i I1[10] -pin PWM_in_1|temp_duty_precent_i I1[8] -pin PWM_in_1|temp_duty_precent_i I1[5] -pin PWM_in_1|temp_duty_precent_i I1[4] -pin PWM_in_1|temp_duty_precent_i I1[3] -pin PWM_in_1|temp_duty_precent_i I1[2] -pin PWM_in_1|temp_duty_precent_i I1[1] -pin PWM_in_1|temp_duty_precent_i I1[0] -pin PWM_in_1|tens_out0_i I1[6] -pin PWM_in_1|tens_out0_i I1[5] -pin PWM_in_1|tens_out0_i I1[2] -pin PWM_in_1|tens_out_i I1[3] -pin PWM_in_1|tens_out_i I1[1]
load net PWM_in_1|accelerating -attr @name accelerating -pin PWM_in_1|accelerating_counter0_i I1 -pin PWM_in_1|accelerating_reg Q -pin PWM_in_1|duty_cycle_internal1_i__2 I0 -pin PWM_in_1|duty_cycle_internal1_i__3 I0
netloc PWM_in_1|accelerating 1 7 9 2300 438 NJ 438 NJ 438 NJ 438 NJ 438 NJ 438 4770 548 NJ 548 N
load net PWM_in_1|accelerating0 -attr @name accelerating0 -pin PWM_in_1|accelerating0_i O -pin PWM_in_1|accelerating_i I0 -pin PWM_in_1|accelerating_i__0 I0
netloc PWM_in_1|accelerating0 1 11 1 3890 78n
load net PWM_in_1|accelerating__0 -attr @name accelerating__0 -pin PWM_in_1|accelerating_i O -pin PWM_in_1|accelerating_reg D
netloc PWM_in_1|accelerating__0 1 12 1 4310 88n
load net PWM_in_1|accelerating_counter0 -attr @name accelerating_counter0 -pin PWM_in_1|accelerating_counter0_i O -pin PWM_in_1|accelerating_counter_i__0 I1 -pin PWM_in_1|accelerating_i__0 I1
netloc PWM_in_1|accelerating_counter0 1 8 4 2590 268 NJ 268 NJ 268 3950
load net PWM_in_1|accelerating_counter1 -attr @name accelerating_counter1 -pin PWM_in_1|accelerating_counter1_i O -pin PWM_in_1|accelerating_counter_i S -pin PWM_in_1|accelerating_counter_i__0 S -pin PWM_in_1|accelerating_i S -pin PWM_in_1|accelerating_i__0 S
netloc PWM_in_1|accelerating_counter1 1 8 4 2570 218N NJ 218 NJ 218 3910
load net PWM_in_1|accelerating_counter1_i__0_n_0 -attr @name accelerating_counter1_i__0_n_0 -pin PWM_in_1|accelerating_counter0_i I0 -pin PWM_in_1|accelerating_counter1_i__0 O
netloc PWM_in_1|accelerating_counter1_i__0_n_0 1 7 1 2280 378n
load net PWM_in_1|accelerating_counter2 -attr @name accelerating_counter2 -pin PWM_in_1|accelerating_counter1_i I0 -pin PWM_in_1|accelerating_counter2_i O
netloc PWM_in_1|accelerating_counter2 1 7 1 2300 478n
load net PWM_in_1|accelerating_counter2_i__0_n_0 -attr @name accelerating_counter2_i__0_n_0 -pin PWM_in_1|accelerating_counter1_i I1 -pin PWM_in_1|accelerating_counter2_i__0 O
netloc PWM_in_1|accelerating_counter2_i__0_n_0 1 7 1 2280 488n
load net PWM_in_1|accelerating_counter[0] -attr @rip(#000000) 0 -attr @name accelerating_counter[0] -pin PWM_in_1|accelerating0_i I0[0] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[0] -pin PWM_in_1|plusOp_i__1 I0[0]
load net PWM_in_1|accelerating_counter[10] -attr @rip(#000000) 10 -attr @name accelerating_counter[10] -pin PWM_in_1|accelerating0_i I0[10] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[10] -pin PWM_in_1|plusOp_i__1 I0[10]
load net PWM_in_1|accelerating_counter[11] -attr @rip(#000000) 11 -attr @name accelerating_counter[11] -pin PWM_in_1|accelerating0_i I0[11] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[11] -pin PWM_in_1|plusOp_i__1 I0[11]
load net PWM_in_1|accelerating_counter[12] -attr @rip(#000000) 12 -attr @name accelerating_counter[12] -pin PWM_in_1|accelerating0_i I0[12] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[12] -pin PWM_in_1|plusOp_i__1 I0[12]
load net PWM_in_1|accelerating_counter[13] -attr @rip(#000000) 13 -attr @name accelerating_counter[13] -pin PWM_in_1|accelerating0_i I0[13] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[13] -pin PWM_in_1|plusOp_i__1 I0[13]
load net PWM_in_1|accelerating_counter[14] -attr @rip(#000000) 14 -attr @name accelerating_counter[14] -pin PWM_in_1|accelerating0_i I0[14] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[14] -pin PWM_in_1|plusOp_i__1 I0[14]
load net PWM_in_1|accelerating_counter[15] -attr @rip(#000000) 15 -attr @name accelerating_counter[15] -pin PWM_in_1|accelerating0_i I0[15] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[15] -pin PWM_in_1|plusOp_i__1 I0[15]
load net PWM_in_1|accelerating_counter[16] -attr @rip(#000000) 16 -attr @name accelerating_counter[16] -pin PWM_in_1|accelerating0_i I0[16] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[16] -pin PWM_in_1|plusOp_i__1 I0[16]
load net PWM_in_1|accelerating_counter[17] -attr @rip(#000000) 17 -attr @name accelerating_counter[17] -pin PWM_in_1|accelerating0_i I0[17] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[17] -pin PWM_in_1|plusOp_i__1 I0[17]
load net PWM_in_1|accelerating_counter[18] -attr @rip(#000000) 18 -attr @name accelerating_counter[18] -pin PWM_in_1|accelerating0_i I0[18] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[18] -pin PWM_in_1|plusOp_i__1 I0[18]
load net PWM_in_1|accelerating_counter[19] -attr @rip(#000000) 19 -attr @name accelerating_counter[19] -pin PWM_in_1|accelerating0_i I0[19] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[19] -pin PWM_in_1|plusOp_i__1 I0[19]
load net PWM_in_1|accelerating_counter[1] -attr @rip(#000000) 1 -attr @name accelerating_counter[1] -pin PWM_in_1|accelerating0_i I0[1] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[1] -pin PWM_in_1|plusOp_i__1 I0[1]
load net PWM_in_1|accelerating_counter[20] -attr @rip(#000000) 20 -attr @name accelerating_counter[20] -pin PWM_in_1|accelerating0_i I0[20] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[20] -pin PWM_in_1|plusOp_i__1 I0[20]
load net PWM_in_1|accelerating_counter[21] -attr @rip(#000000) 21 -attr @name accelerating_counter[21] -pin PWM_in_1|accelerating0_i I0[21] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[21] -pin PWM_in_1|plusOp_i__1 I0[21]
load net PWM_in_1|accelerating_counter[22] -attr @rip(#000000) 22 -attr @name accelerating_counter[22] -pin PWM_in_1|accelerating0_i I0[22] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[22] -pin PWM_in_1|plusOp_i__1 I0[22]
load net PWM_in_1|accelerating_counter[23] -attr @rip(#000000) 23 -attr @name accelerating_counter[23] -pin PWM_in_1|accelerating0_i I0[23] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[23] -pin PWM_in_1|plusOp_i__1 I0[23]
load net PWM_in_1|accelerating_counter[2] -attr @rip(#000000) 2 -attr @name accelerating_counter[2] -pin PWM_in_1|accelerating0_i I0[2] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[2] -pin PWM_in_1|plusOp_i__1 I0[2]
load net PWM_in_1|accelerating_counter[3] -attr @rip(#000000) 3 -attr @name accelerating_counter[3] -pin PWM_in_1|accelerating0_i I0[3] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[3] -pin PWM_in_1|plusOp_i__1 I0[3]
load net PWM_in_1|accelerating_counter[4] -attr @rip(#000000) 4 -attr @name accelerating_counter[4] -pin PWM_in_1|accelerating0_i I0[4] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[4] -pin PWM_in_1|plusOp_i__1 I0[4]
load net PWM_in_1|accelerating_counter[5] -attr @rip(#000000) 5 -attr @name accelerating_counter[5] -pin PWM_in_1|accelerating0_i I0[5] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[5] -pin PWM_in_1|plusOp_i__1 I0[5]
load net PWM_in_1|accelerating_counter[6] -attr @rip(#000000) 6 -attr @name accelerating_counter[6] -pin PWM_in_1|accelerating0_i I0[6] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[6] -pin PWM_in_1|plusOp_i__1 I0[6]
load net PWM_in_1|accelerating_counter[7] -attr @rip(#000000) 7 -attr @name accelerating_counter[7] -pin PWM_in_1|accelerating0_i I0[7] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[7] -pin PWM_in_1|plusOp_i__1 I0[7]
load net PWM_in_1|accelerating_counter[8] -attr @rip(#000000) 8 -attr @name accelerating_counter[8] -pin PWM_in_1|accelerating0_i I0[8] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[8] -pin PWM_in_1|plusOp_i__1 I0[8]
load net PWM_in_1|accelerating_counter[9] -attr @rip(#000000) 9 -attr @name accelerating_counter[9] -pin PWM_in_1|accelerating0_i I0[9] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[9] -pin PWM_in_1|plusOp_i__1 I0[9]
load net PWM_in_1|accelerating_counter__0[0] -attr @rip(#000000) O[0] -attr @name accelerating_counter__0[0] -pin PWM_in_1|accelerating_counter_i O[0] -pin PWM_in_1|accelerating_counter_reg[23:0] D[0]
load net PWM_in_1|accelerating_counter__0[10] -attr @rip(#000000) O[10] -attr @name accelerating_counter__0[10] -pin PWM_in_1|accelerating_counter_i O[10] -pin PWM_in_1|accelerating_counter_reg[23:0] D[10]
load net PWM_in_1|accelerating_counter__0[11] -attr @rip(#000000) O[11] -attr @name accelerating_counter__0[11] -pin PWM_in_1|accelerating_counter_i O[11] -pin PWM_in_1|accelerating_counter_reg[23:0] D[11]
load net PWM_in_1|accelerating_counter__0[12] -attr @rip(#000000) O[12] -attr @name accelerating_counter__0[12] -pin PWM_in_1|accelerating_counter_i O[12] -pin PWM_in_1|accelerating_counter_reg[23:0] D[12]
load net PWM_in_1|accelerating_counter__0[13] -attr @rip(#000000) O[13] -attr @name accelerating_counter__0[13] -pin PWM_in_1|accelerating_counter_i O[13] -pin PWM_in_1|accelerating_counter_reg[23:0] D[13]
load net PWM_in_1|accelerating_counter__0[14] -attr @rip(#000000) O[14] -attr @name accelerating_counter__0[14] -pin PWM_in_1|accelerating_counter_i O[14] -pin PWM_in_1|accelerating_counter_reg[23:0] D[14]
load net PWM_in_1|accelerating_counter__0[15] -attr @rip(#000000) O[15] -attr @name accelerating_counter__0[15] -pin PWM_in_1|accelerating_counter_i O[15] -pin PWM_in_1|accelerating_counter_reg[23:0] D[15]
load net PWM_in_1|accelerating_counter__0[16] -attr @rip(#000000) O[16] -attr @name accelerating_counter__0[16] -pin PWM_in_1|accelerating_counter_i O[16] -pin PWM_in_1|accelerating_counter_reg[23:0] D[16]
load net PWM_in_1|accelerating_counter__0[17] -attr @rip(#000000) O[17] -attr @name accelerating_counter__0[17] -pin PWM_in_1|accelerating_counter_i O[17] -pin PWM_in_1|accelerating_counter_reg[23:0] D[17]
load net PWM_in_1|accelerating_counter__0[18] -attr @rip(#000000) O[18] -attr @name accelerating_counter__0[18] -pin PWM_in_1|accelerating_counter_i O[18] -pin PWM_in_1|accelerating_counter_reg[23:0] D[18]
load net PWM_in_1|accelerating_counter__0[19] -attr @rip(#000000) O[19] -attr @name accelerating_counter__0[19] -pin PWM_in_1|accelerating_counter_i O[19] -pin PWM_in_1|accelerating_counter_reg[23:0] D[19]
load net PWM_in_1|accelerating_counter__0[1] -attr @rip(#000000) O[1] -attr @name accelerating_counter__0[1] -pin PWM_in_1|accelerating_counter_i O[1] -pin PWM_in_1|accelerating_counter_reg[23:0] D[1]
load net PWM_in_1|accelerating_counter__0[20] -attr @rip(#000000) O[20] -attr @name accelerating_counter__0[20] -pin PWM_in_1|accelerating_counter_i O[20] -pin PWM_in_1|accelerating_counter_reg[23:0] D[20]
load net PWM_in_1|accelerating_counter__0[21] -attr @rip(#000000) O[21] -attr @name accelerating_counter__0[21] -pin PWM_in_1|accelerating_counter_i O[21] -pin PWM_in_1|accelerating_counter_reg[23:0] D[21]
load net PWM_in_1|accelerating_counter__0[22] -attr @rip(#000000) O[22] -attr @name accelerating_counter__0[22] -pin PWM_in_1|accelerating_counter_i O[22] -pin PWM_in_1|accelerating_counter_reg[23:0] D[22]
load net PWM_in_1|accelerating_counter__0[23] -attr @rip(#000000) O[23] -attr @name accelerating_counter__0[23] -pin PWM_in_1|accelerating_counter_i O[23] -pin PWM_in_1|accelerating_counter_reg[23:0] D[23]
load net PWM_in_1|accelerating_counter__0[2] -attr @rip(#000000) O[2] -attr @name accelerating_counter__0[2] -pin PWM_in_1|accelerating_counter_i O[2] -pin PWM_in_1|accelerating_counter_reg[23:0] D[2]
load net PWM_in_1|accelerating_counter__0[3] -attr @rip(#000000) O[3] -attr @name accelerating_counter__0[3] -pin PWM_in_1|accelerating_counter_i O[3] -pin PWM_in_1|accelerating_counter_reg[23:0] D[3]
load net PWM_in_1|accelerating_counter__0[4] -attr @rip(#000000) O[4] -attr @name accelerating_counter__0[4] -pin PWM_in_1|accelerating_counter_i O[4] -pin PWM_in_1|accelerating_counter_reg[23:0] D[4]
load net PWM_in_1|accelerating_counter__0[5] -attr @rip(#000000) O[5] -attr @name accelerating_counter__0[5] -pin PWM_in_1|accelerating_counter_i O[5] -pin PWM_in_1|accelerating_counter_reg[23:0] D[5]
load net PWM_in_1|accelerating_counter__0[6] -attr @rip(#000000) O[6] -attr @name accelerating_counter__0[6] -pin PWM_in_1|accelerating_counter_i O[6] -pin PWM_in_1|accelerating_counter_reg[23:0] D[6]
load net PWM_in_1|accelerating_counter__0[7] -attr @rip(#000000) O[7] -attr @name accelerating_counter__0[7] -pin PWM_in_1|accelerating_counter_i O[7] -pin PWM_in_1|accelerating_counter_reg[23:0] D[7]
load net PWM_in_1|accelerating_counter__0[8] -attr @rip(#000000) O[8] -attr @name accelerating_counter__0[8] -pin PWM_in_1|accelerating_counter_i O[8] -pin PWM_in_1|accelerating_counter_reg[23:0] D[8]
load net PWM_in_1|accelerating_counter__0[9] -attr @rip(#000000) O[9] -attr @name accelerating_counter__0[9] -pin PWM_in_1|accelerating_counter_i O[9] -pin PWM_in_1|accelerating_counter_reg[23:0] D[9]
load net PWM_in_1|accelerating_counter_i__0_n_0 -attr @name accelerating_counter_i__0_n_0 -pin PWM_in_1|accelerating_counter_i__0 O -pin PWM_in_1|accelerating_counter_reg[23:0] CE
netloc PWM_in_1|accelerating_counter_i__0_n_0 1 9 1 N 358
load net PWM_in_1|accelerating_i__0_n_0 -attr @name accelerating_i__0_n_0 -pin PWM_in_1|accelerating_i__0 O -pin PWM_in_1|accelerating_reg CE
netloc PWM_in_1|accelerating_i__0_n_0 1 12 1 4290 218n
load net PWM_in_1|btn_down -attr @name btn_down -hierPin PWM_in_1 btn_down -pin PWM_in_1|btn_down_cnt_i S -pin PWM_in_1|btn_down_cnt_i__0 S
netloc PWM_in_1|btn_down 1 0 2 110J 478 540
load net PWM_in_1|btn_down_cnt0[0] -attr @rip(#000000) O[0] -attr @name btn_down_cnt0[0] -pin PWM_in_1|btn_down_cnt0_i O[0] -pin PWM_in_1|btn_down_cnt_i I0[0]
load net PWM_in_1|btn_down_cnt0[10] -attr @rip(#000000) O[10] -attr @name btn_down_cnt0[10] -pin PWM_in_1|btn_down_cnt0_i O[10] -pin PWM_in_1|btn_down_cnt_i I0[10]
load net PWM_in_1|btn_down_cnt0[11] -attr @rip(#000000) O[11] -attr @name btn_down_cnt0[11] -pin PWM_in_1|btn_down_cnt0_i O[11] -pin PWM_in_1|btn_down_cnt_i I0[11]
load net PWM_in_1|btn_down_cnt0[12] -attr @rip(#000000) O[12] -attr @name btn_down_cnt0[12] -pin PWM_in_1|btn_down_cnt0_i O[12] -pin PWM_in_1|btn_down_cnt_i I0[12]
load net PWM_in_1|btn_down_cnt0[13] -attr @rip(#000000) O[13] -attr @name btn_down_cnt0[13] -pin PWM_in_1|btn_down_cnt0_i O[13] -pin PWM_in_1|btn_down_cnt_i I0[13]
load net PWM_in_1|btn_down_cnt0[14] -attr @rip(#000000) O[14] -attr @name btn_down_cnt0[14] -pin PWM_in_1|btn_down_cnt0_i O[14] -pin PWM_in_1|btn_down_cnt_i I0[14]
load net PWM_in_1|btn_down_cnt0[15] -attr @rip(#000000) O[15] -attr @name btn_down_cnt0[15] -pin PWM_in_1|btn_down_cnt0_i O[15] -pin PWM_in_1|btn_down_cnt_i I0[15]
load net PWM_in_1|btn_down_cnt0[16] -attr @rip(#000000) O[16] -attr @name btn_down_cnt0[16] -pin PWM_in_1|btn_down_cnt0_i O[16] -pin PWM_in_1|btn_down_cnt_i I0[16]
load net PWM_in_1|btn_down_cnt0[1] -attr @rip(#000000) O[1] -attr @name btn_down_cnt0[1] -pin PWM_in_1|btn_down_cnt0_i O[1] -pin PWM_in_1|btn_down_cnt_i I0[1]
load net PWM_in_1|btn_down_cnt0[2] -attr @rip(#000000) O[2] -attr @name btn_down_cnt0[2] -pin PWM_in_1|btn_down_cnt0_i O[2] -pin PWM_in_1|btn_down_cnt_i I0[2]
load net PWM_in_1|btn_down_cnt0[3] -attr @rip(#000000) O[3] -attr @name btn_down_cnt0[3] -pin PWM_in_1|btn_down_cnt0_i O[3] -pin PWM_in_1|btn_down_cnt_i I0[3]
load net PWM_in_1|btn_down_cnt0[4] -attr @rip(#000000) O[4] -attr @name btn_down_cnt0[4] -pin PWM_in_1|btn_down_cnt0_i O[4] -pin PWM_in_1|btn_down_cnt_i I0[4]
load net PWM_in_1|btn_down_cnt0[5] -attr @rip(#000000) O[5] -attr @name btn_down_cnt0[5] -pin PWM_in_1|btn_down_cnt0_i O[5] -pin PWM_in_1|btn_down_cnt_i I0[5]
load net PWM_in_1|btn_down_cnt0[6] -attr @rip(#000000) O[6] -attr @name btn_down_cnt0[6] -pin PWM_in_1|btn_down_cnt0_i O[6] -pin PWM_in_1|btn_down_cnt_i I0[6]
load net PWM_in_1|btn_down_cnt0[7] -attr @rip(#000000) O[7] -attr @name btn_down_cnt0[7] -pin PWM_in_1|btn_down_cnt0_i O[7] -pin PWM_in_1|btn_down_cnt_i I0[7]
load net PWM_in_1|btn_down_cnt0[8] -attr @rip(#000000) O[8] -attr @name btn_down_cnt0[8] -pin PWM_in_1|btn_down_cnt0_i O[8] -pin PWM_in_1|btn_down_cnt_i I0[8]
load net PWM_in_1|btn_down_cnt0[9] -attr @rip(#000000) O[9] -attr @name btn_down_cnt0[9] -pin PWM_in_1|btn_down_cnt0_i O[9] -pin PWM_in_1|btn_down_cnt_i I0[9]
load net PWM_in_1|btn_down_cnt0_i__0_n_0 -attr @name btn_down_cnt0_i__0_n_0 -pin PWM_in_1|btn_down_cnt0_i__0 O -pin PWM_in_1|btn_down_cnt_i__0 I0
netloc PWM_in_1|btn_down_cnt0_i__0_n_0 1 1 1 NJ 778
load net PWM_in_1|btn_down_cnt[0] -attr @rip(#000000) 0 -attr @name btn_down_cnt[0] -pin PWM_in_1|btn_down_cnt0_i I0[0] -pin PWM_in_1|btn_down_cnt0_i__0 I0[0] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[0] -pin PWM_in_1|btn_down_db_i A[0]
load net PWM_in_1|btn_down_cnt[10] -attr @rip(#000000) 10 -attr @name btn_down_cnt[10] -pin PWM_in_1|btn_down_cnt0_i I0[10] -pin PWM_in_1|btn_down_cnt0_i__0 I0[10] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[10] -pin PWM_in_1|btn_down_db_i A[10]
load net PWM_in_1|btn_down_cnt[11] -attr @rip(#000000) 11 -attr @name btn_down_cnt[11] -pin PWM_in_1|btn_down_cnt0_i I0[11] -pin PWM_in_1|btn_down_cnt0_i__0 I0[11] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[11] -pin PWM_in_1|btn_down_db_i A[11]
load net PWM_in_1|btn_down_cnt[12] -attr @rip(#000000) 12 -attr @name btn_down_cnt[12] -pin PWM_in_1|btn_down_cnt0_i I0[12] -pin PWM_in_1|btn_down_cnt0_i__0 I0[12] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[12] -pin PWM_in_1|btn_down_db_i A[12]
load net PWM_in_1|btn_down_cnt[13] -attr @rip(#000000) 13 -attr @name btn_down_cnt[13] -pin PWM_in_1|btn_down_cnt0_i I0[13] -pin PWM_in_1|btn_down_cnt0_i__0 I0[13] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[13] -pin PWM_in_1|btn_down_db_i A[13]
load net PWM_in_1|btn_down_cnt[14] -attr @rip(#000000) 14 -attr @name btn_down_cnt[14] -pin PWM_in_1|btn_down_cnt0_i I0[14] -pin PWM_in_1|btn_down_cnt0_i__0 I0[14] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[14] -pin PWM_in_1|btn_down_db_i A[14]
load net PWM_in_1|btn_down_cnt[15] -attr @rip(#000000) 15 -attr @name btn_down_cnt[15] -pin PWM_in_1|btn_down_cnt0_i I0[15] -pin PWM_in_1|btn_down_cnt0_i__0 I0[15] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[15] -pin PWM_in_1|btn_down_db_i A[15]
load net PWM_in_1|btn_down_cnt[16] -attr @rip(#000000) 16 -attr @name btn_down_cnt[16] -pin PWM_in_1|btn_down_cnt0_i I0[16] -pin PWM_in_1|btn_down_cnt0_i__0 I0[16] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[16] -pin PWM_in_1|btn_down_db_i A[16]
load net PWM_in_1|btn_down_cnt[1] -attr @rip(#000000) 1 -attr @name btn_down_cnt[1] -pin PWM_in_1|btn_down_cnt0_i I0[1] -pin PWM_in_1|btn_down_cnt0_i__0 I0[1] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[1] -pin PWM_in_1|btn_down_db_i A[1]
load net PWM_in_1|btn_down_cnt[2] -attr @rip(#000000) 2 -attr @name btn_down_cnt[2] -pin PWM_in_1|btn_down_cnt0_i I0[2] -pin PWM_in_1|btn_down_cnt0_i__0 I0[2] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[2] -pin PWM_in_1|btn_down_db_i A[2]
load net PWM_in_1|btn_down_cnt[3] -attr @rip(#000000) 3 -attr @name btn_down_cnt[3] -pin PWM_in_1|btn_down_cnt0_i I0[3] -pin PWM_in_1|btn_down_cnt0_i__0 I0[3] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[3] -pin PWM_in_1|btn_down_db_i A[3]
load net PWM_in_1|btn_down_cnt[4] -attr @rip(#000000) 4 -attr @name btn_down_cnt[4] -pin PWM_in_1|btn_down_cnt0_i I0[4] -pin PWM_in_1|btn_down_cnt0_i__0 I0[4] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[4] -pin PWM_in_1|btn_down_db_i A[4]
load net PWM_in_1|btn_down_cnt[5] -attr @rip(#000000) 5 -attr @name btn_down_cnt[5] -pin PWM_in_1|btn_down_cnt0_i I0[5] -pin PWM_in_1|btn_down_cnt0_i__0 I0[5] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[5] -pin PWM_in_1|btn_down_db_i A[5]
load net PWM_in_1|btn_down_cnt[6] -attr @rip(#000000) 6 -attr @name btn_down_cnt[6] -pin PWM_in_1|btn_down_cnt0_i I0[6] -pin PWM_in_1|btn_down_cnt0_i__0 I0[6] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[6] -pin PWM_in_1|btn_down_db_i A[6]
load net PWM_in_1|btn_down_cnt[7] -attr @rip(#000000) 7 -attr @name btn_down_cnt[7] -pin PWM_in_1|btn_down_cnt0_i I0[7] -pin PWM_in_1|btn_down_cnt0_i__0 I0[7] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[7] -pin PWM_in_1|btn_down_db_i A[7]
load net PWM_in_1|btn_down_cnt[8] -attr @rip(#000000) 8 -attr @name btn_down_cnt[8] -pin PWM_in_1|btn_down_cnt0_i I0[8] -pin PWM_in_1|btn_down_cnt0_i__0 I0[8] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[8] -pin PWM_in_1|btn_down_db_i A[8]
load net PWM_in_1|btn_down_cnt[9] -attr @rip(#000000) 9 -attr @name btn_down_cnt[9] -pin PWM_in_1|btn_down_cnt0_i I0[9] -pin PWM_in_1|btn_down_cnt0_i__0 I0[9] -pin PWM_in_1|btn_down_cnt_reg[16:0] Q[9] -pin PWM_in_1|btn_down_db_i A[9]
load net PWM_in_1|btn_down_cnt__0[0] -attr @rip(#000000) O[0] -attr @name btn_down_cnt__0[0] -pin PWM_in_1|btn_down_cnt_i O[0] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[0]
load net PWM_in_1|btn_down_cnt__0[10] -attr @rip(#000000) O[10] -attr @name btn_down_cnt__0[10] -pin PWM_in_1|btn_down_cnt_i O[10] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[10]
load net PWM_in_1|btn_down_cnt__0[11] -attr @rip(#000000) O[11] -attr @name btn_down_cnt__0[11] -pin PWM_in_1|btn_down_cnt_i O[11] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[11]
load net PWM_in_1|btn_down_cnt__0[12] -attr @rip(#000000) O[12] -attr @name btn_down_cnt__0[12] -pin PWM_in_1|btn_down_cnt_i O[12] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[12]
load net PWM_in_1|btn_down_cnt__0[13] -attr @rip(#000000) O[13] -attr @name btn_down_cnt__0[13] -pin PWM_in_1|btn_down_cnt_i O[13] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[13]
load net PWM_in_1|btn_down_cnt__0[14] -attr @rip(#000000) O[14] -attr @name btn_down_cnt__0[14] -pin PWM_in_1|btn_down_cnt_i O[14] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[14]
load net PWM_in_1|btn_down_cnt__0[15] -attr @rip(#000000) O[15] -attr @name btn_down_cnt__0[15] -pin PWM_in_1|btn_down_cnt_i O[15] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[15]
load net PWM_in_1|btn_down_cnt__0[16] -attr @rip(#000000) O[16] -attr @name btn_down_cnt__0[16] -pin PWM_in_1|btn_down_cnt_i O[16] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[16]
load net PWM_in_1|btn_down_cnt__0[1] -attr @rip(#000000) O[1] -attr @name btn_down_cnt__0[1] -pin PWM_in_1|btn_down_cnt_i O[1] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[1]
load net PWM_in_1|btn_down_cnt__0[2] -attr @rip(#000000) O[2] -attr @name btn_down_cnt__0[2] -pin PWM_in_1|btn_down_cnt_i O[2] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[2]
load net PWM_in_1|btn_down_cnt__0[3] -attr @rip(#000000) O[3] -attr @name btn_down_cnt__0[3] -pin PWM_in_1|btn_down_cnt_i O[3] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[3]
load net PWM_in_1|btn_down_cnt__0[4] -attr @rip(#000000) O[4] -attr @name btn_down_cnt__0[4] -pin PWM_in_1|btn_down_cnt_i O[4] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[4]
load net PWM_in_1|btn_down_cnt__0[5] -attr @rip(#000000) O[5] -attr @name btn_down_cnt__0[5] -pin PWM_in_1|btn_down_cnt_i O[5] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[5]
load net PWM_in_1|btn_down_cnt__0[6] -attr @rip(#000000) O[6] -attr @name btn_down_cnt__0[6] -pin PWM_in_1|btn_down_cnt_i O[6] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[6]
load net PWM_in_1|btn_down_cnt__0[7] -attr @rip(#000000) O[7] -attr @name btn_down_cnt__0[7] -pin PWM_in_1|btn_down_cnt_i O[7] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[7]
load net PWM_in_1|btn_down_cnt__0[8] -attr @rip(#000000) O[8] -attr @name btn_down_cnt__0[8] -pin PWM_in_1|btn_down_cnt_i O[8] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[8]
load net PWM_in_1|btn_down_cnt__0[9] -attr @rip(#000000) O[9] -attr @name btn_down_cnt__0[9] -pin PWM_in_1|btn_down_cnt_i O[9] -pin PWM_in_1|btn_down_cnt_reg[16:0] D[9]
load net PWM_in_1|btn_down_cnt_i__0_n_0 -attr @name btn_down_cnt_i__0_n_0 -pin PWM_in_1|btn_down_cnt_i__0 O -pin PWM_in_1|btn_down_cnt_reg[16:0] CE
netloc PWM_in_1|btn_down_cnt_i__0_n_0 1 2 1 920 608n
load net PWM_in_1|btn_down_db -attr @name btn_down_db -pin PWM_in_1|accelerating_counter2_i__0 I0 -pin PWM_in_1|accelerating_counter3_i I0 -pin PWM_in_1|btn_down_db_reg Q -pin PWM_in_1|btn_down_prev_reg D -pin PWM_in_1|duty_cycle_internal1_i__0 I0 -pin PWM_in_1|duty_cycle_internal1_i__3 I1
netloc PWM_in_1|btn_down_db 1 5 11 1650 448 2010 538 NJ 538 NJ 538 3020 598 3440J 558 3950 558 4290J 638 4730J 568 NJ 568 N
load net PWM_in_1|btn_down_db__0 -attr @name btn_down_db__0 -pin PWM_in_1|btn_down_db_i O -pin PWM_in_1|btn_down_db_reg D
netloc PWM_in_1|btn_down_db__0 1 4 1 NJ 738
load net PWM_in_1|btn_down_prev -attr @name btn_down_prev -pin PWM_in_1|btn_down_prev_reg Q -pin PWM_in_1|duty_cycle_internal2_i I0
netloc PWM_in_1|btn_down_prev 1 10 1 3480 518n
load net PWM_in_1|btn_up -attr @name btn_up -hierPin PWM_in_1 btn_up -pin PWM_in_1|btn_up_cnt_i S -pin PWM_in_1|btn_up_cnt_i__0 S
netloc PWM_in_1|btn_up 1 0 2 130J 498 580
load net PWM_in_1|btn_up_cnt0[0] -attr @rip(#000000) O[0] -attr @name btn_up_cnt0[0] -pin PWM_in_1|btn_up_cnt0_i O[0] -pin PWM_in_1|btn_up_cnt_i I0[0]
load net PWM_in_1|btn_up_cnt0[10] -attr @rip(#000000) O[10] -attr @name btn_up_cnt0[10] -pin PWM_in_1|btn_up_cnt0_i O[10] -pin PWM_in_1|btn_up_cnt_i I0[10]
load net PWM_in_1|btn_up_cnt0[11] -attr @rip(#000000) O[11] -attr @name btn_up_cnt0[11] -pin PWM_in_1|btn_up_cnt0_i O[11] -pin PWM_in_1|btn_up_cnt_i I0[11]
load net PWM_in_1|btn_up_cnt0[12] -attr @rip(#000000) O[12] -attr @name btn_up_cnt0[12] -pin PWM_in_1|btn_up_cnt0_i O[12] -pin PWM_in_1|btn_up_cnt_i I0[12]
load net PWM_in_1|btn_up_cnt0[13] -attr @rip(#000000) O[13] -attr @name btn_up_cnt0[13] -pin PWM_in_1|btn_up_cnt0_i O[13] -pin PWM_in_1|btn_up_cnt_i I0[13]
load net PWM_in_1|btn_up_cnt0[14] -attr @rip(#000000) O[14] -attr @name btn_up_cnt0[14] -pin PWM_in_1|btn_up_cnt0_i O[14] -pin PWM_in_1|btn_up_cnt_i I0[14]
load net PWM_in_1|btn_up_cnt0[15] -attr @rip(#000000) O[15] -attr @name btn_up_cnt0[15] -pin PWM_in_1|btn_up_cnt0_i O[15] -pin PWM_in_1|btn_up_cnt_i I0[15]
load net PWM_in_1|btn_up_cnt0[16] -attr @rip(#000000) O[16] -attr @name btn_up_cnt0[16] -pin PWM_in_1|btn_up_cnt0_i O[16] -pin PWM_in_1|btn_up_cnt_i I0[16]
load net PWM_in_1|btn_up_cnt0[1] -attr @rip(#000000) O[1] -attr @name btn_up_cnt0[1] -pin PWM_in_1|btn_up_cnt0_i O[1] -pin PWM_in_1|btn_up_cnt_i I0[1]
load net PWM_in_1|btn_up_cnt0[2] -attr @rip(#000000) O[2] -attr @name btn_up_cnt0[2] -pin PWM_in_1|btn_up_cnt0_i O[2] -pin PWM_in_1|btn_up_cnt_i I0[2]
load net PWM_in_1|btn_up_cnt0[3] -attr @rip(#000000) O[3] -attr @name btn_up_cnt0[3] -pin PWM_in_1|btn_up_cnt0_i O[3] -pin PWM_in_1|btn_up_cnt_i I0[3]
load net PWM_in_1|btn_up_cnt0[4] -attr @rip(#000000) O[4] -attr @name btn_up_cnt0[4] -pin PWM_in_1|btn_up_cnt0_i O[4] -pin PWM_in_1|btn_up_cnt_i I0[4]
load net PWM_in_1|btn_up_cnt0[5] -attr @rip(#000000) O[5] -attr @name btn_up_cnt0[5] -pin PWM_in_1|btn_up_cnt0_i O[5] -pin PWM_in_1|btn_up_cnt_i I0[5]
load net PWM_in_1|btn_up_cnt0[6] -attr @rip(#000000) O[6] -attr @name btn_up_cnt0[6] -pin PWM_in_1|btn_up_cnt0_i O[6] -pin PWM_in_1|btn_up_cnt_i I0[6]
load net PWM_in_1|btn_up_cnt0[7] -attr @rip(#000000) O[7] -attr @name btn_up_cnt0[7] -pin PWM_in_1|btn_up_cnt0_i O[7] -pin PWM_in_1|btn_up_cnt_i I0[7]
load net PWM_in_1|btn_up_cnt0[8] -attr @rip(#000000) O[8] -attr @name btn_up_cnt0[8] -pin PWM_in_1|btn_up_cnt0_i O[8] -pin PWM_in_1|btn_up_cnt_i I0[8]
load net PWM_in_1|btn_up_cnt0[9] -attr @rip(#000000) O[9] -attr @name btn_up_cnt0[9] -pin PWM_in_1|btn_up_cnt0_i O[9] -pin PWM_in_1|btn_up_cnt_i I0[9]
load net PWM_in_1|btn_up_cnt0_i__0_n_0 -attr @name btn_up_cnt0_i__0_n_0 -pin PWM_in_1|btn_up_cnt0_i__0 O -pin PWM_in_1|btn_up_cnt_i__0 I0
netloc PWM_in_1|btn_up_cnt0_i__0_n_0 1 1 1 NJ 278
load net PWM_in_1|btn_up_cnt[0] -attr @rip(#000000) 0 -attr @name btn_up_cnt[0] -pin PWM_in_1|btn_up_cnt0_i I0[0] -pin PWM_in_1|btn_up_cnt0_i__0 I0[0] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[0] -pin PWM_in_1|btn_up_db_i A[0]
load net PWM_in_1|btn_up_cnt[10] -attr @rip(#000000) 10 -attr @name btn_up_cnt[10] -pin PWM_in_1|btn_up_cnt0_i I0[10] -pin PWM_in_1|btn_up_cnt0_i__0 I0[10] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[10] -pin PWM_in_1|btn_up_db_i A[10]
load net PWM_in_1|btn_up_cnt[11] -attr @rip(#000000) 11 -attr @name btn_up_cnt[11] -pin PWM_in_1|btn_up_cnt0_i I0[11] -pin PWM_in_1|btn_up_cnt0_i__0 I0[11] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[11] -pin PWM_in_1|btn_up_db_i A[11]
load net PWM_in_1|btn_up_cnt[12] -attr @rip(#000000) 12 -attr @name btn_up_cnt[12] -pin PWM_in_1|btn_up_cnt0_i I0[12] -pin PWM_in_1|btn_up_cnt0_i__0 I0[12] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[12] -pin PWM_in_1|btn_up_db_i A[12]
load net PWM_in_1|btn_up_cnt[13] -attr @rip(#000000) 13 -attr @name btn_up_cnt[13] -pin PWM_in_1|btn_up_cnt0_i I0[13] -pin PWM_in_1|btn_up_cnt0_i__0 I0[13] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[13] -pin PWM_in_1|btn_up_db_i A[13]
load net PWM_in_1|btn_up_cnt[14] -attr @rip(#000000) 14 -attr @name btn_up_cnt[14] -pin PWM_in_1|btn_up_cnt0_i I0[14] -pin PWM_in_1|btn_up_cnt0_i__0 I0[14] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[14] -pin PWM_in_1|btn_up_db_i A[14]
load net PWM_in_1|btn_up_cnt[15] -attr @rip(#000000) 15 -attr @name btn_up_cnt[15] -pin PWM_in_1|btn_up_cnt0_i I0[15] -pin PWM_in_1|btn_up_cnt0_i__0 I0[15] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[15] -pin PWM_in_1|btn_up_db_i A[15]
load net PWM_in_1|btn_up_cnt[16] -attr @rip(#000000) 16 -attr @name btn_up_cnt[16] -pin PWM_in_1|btn_up_cnt0_i I0[16] -pin PWM_in_1|btn_up_cnt0_i__0 I0[16] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[16] -pin PWM_in_1|btn_up_db_i A[16]
load net PWM_in_1|btn_up_cnt[1] -attr @rip(#000000) 1 -attr @name btn_up_cnt[1] -pin PWM_in_1|btn_up_cnt0_i I0[1] -pin PWM_in_1|btn_up_cnt0_i__0 I0[1] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[1] -pin PWM_in_1|btn_up_db_i A[1]
load net PWM_in_1|btn_up_cnt[2] -attr @rip(#000000) 2 -attr @name btn_up_cnt[2] -pin PWM_in_1|btn_up_cnt0_i I0[2] -pin PWM_in_1|btn_up_cnt0_i__0 I0[2] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[2] -pin PWM_in_1|btn_up_db_i A[2]
load net PWM_in_1|btn_up_cnt[3] -attr @rip(#000000) 3 -attr @name btn_up_cnt[3] -pin PWM_in_1|btn_up_cnt0_i I0[3] -pin PWM_in_1|btn_up_cnt0_i__0 I0[3] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[3] -pin PWM_in_1|btn_up_db_i A[3]
load net PWM_in_1|btn_up_cnt[4] -attr @rip(#000000) 4 -attr @name btn_up_cnt[4] -pin PWM_in_1|btn_up_cnt0_i I0[4] -pin PWM_in_1|btn_up_cnt0_i__0 I0[4] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[4] -pin PWM_in_1|btn_up_db_i A[4]
load net PWM_in_1|btn_up_cnt[5] -attr @rip(#000000) 5 -attr @name btn_up_cnt[5] -pin PWM_in_1|btn_up_cnt0_i I0[5] -pin PWM_in_1|btn_up_cnt0_i__0 I0[5] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[5] -pin PWM_in_1|btn_up_db_i A[5]
load net PWM_in_1|btn_up_cnt[6] -attr @rip(#000000) 6 -attr @name btn_up_cnt[6] -pin PWM_in_1|btn_up_cnt0_i I0[6] -pin PWM_in_1|btn_up_cnt0_i__0 I0[6] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[6] -pin PWM_in_1|btn_up_db_i A[6]
load net PWM_in_1|btn_up_cnt[7] -attr @rip(#000000) 7 -attr @name btn_up_cnt[7] -pin PWM_in_1|btn_up_cnt0_i I0[7] -pin PWM_in_1|btn_up_cnt0_i__0 I0[7] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[7] -pin PWM_in_1|btn_up_db_i A[7]
load net PWM_in_1|btn_up_cnt[8] -attr @rip(#000000) 8 -attr @name btn_up_cnt[8] -pin PWM_in_1|btn_up_cnt0_i I0[8] -pin PWM_in_1|btn_up_cnt0_i__0 I0[8] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[8] -pin PWM_in_1|btn_up_db_i A[8]
load net PWM_in_1|btn_up_cnt[9] -attr @rip(#000000) 9 -attr @name btn_up_cnt[9] -pin PWM_in_1|btn_up_cnt0_i I0[9] -pin PWM_in_1|btn_up_cnt0_i__0 I0[9] -pin PWM_in_1|btn_up_cnt_reg[16:0] Q[9] -pin PWM_in_1|btn_up_db_i A[9]
load net PWM_in_1|btn_up_cnt__0[0] -attr @rip(#000000) O[0] -attr @name btn_up_cnt__0[0] -pin PWM_in_1|btn_up_cnt_i O[0] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[0]
load net PWM_in_1|btn_up_cnt__0[10] -attr @rip(#000000) O[10] -attr @name btn_up_cnt__0[10] -pin PWM_in_1|btn_up_cnt_i O[10] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[10]
load net PWM_in_1|btn_up_cnt__0[11] -attr @rip(#000000) O[11] -attr @name btn_up_cnt__0[11] -pin PWM_in_1|btn_up_cnt_i O[11] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[11]
load net PWM_in_1|btn_up_cnt__0[12] -attr @rip(#000000) O[12] -attr @name btn_up_cnt__0[12] -pin PWM_in_1|btn_up_cnt_i O[12] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[12]
load net PWM_in_1|btn_up_cnt__0[13] -attr @rip(#000000) O[13] -attr @name btn_up_cnt__0[13] -pin PWM_in_1|btn_up_cnt_i O[13] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[13]
load net PWM_in_1|btn_up_cnt__0[14] -attr @rip(#000000) O[14] -attr @name btn_up_cnt__0[14] -pin PWM_in_1|btn_up_cnt_i O[14] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[14]
load net PWM_in_1|btn_up_cnt__0[15] -attr @rip(#000000) O[15] -attr @name btn_up_cnt__0[15] -pin PWM_in_1|btn_up_cnt_i O[15] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[15]
load net PWM_in_1|btn_up_cnt__0[16] -attr @rip(#000000) O[16] -attr @name btn_up_cnt__0[16] -pin PWM_in_1|btn_up_cnt_i O[16] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[16]
load net PWM_in_1|btn_up_cnt__0[1] -attr @rip(#000000) O[1] -attr @name btn_up_cnt__0[1] -pin PWM_in_1|btn_up_cnt_i O[1] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[1]
load net PWM_in_1|btn_up_cnt__0[2] -attr @rip(#000000) O[2] -attr @name btn_up_cnt__0[2] -pin PWM_in_1|btn_up_cnt_i O[2] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[2]
load net PWM_in_1|btn_up_cnt__0[3] -attr @rip(#000000) O[3] -attr @name btn_up_cnt__0[3] -pin PWM_in_1|btn_up_cnt_i O[3] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[3]
load net PWM_in_1|btn_up_cnt__0[4] -attr @rip(#000000) O[4] -attr @name btn_up_cnt__0[4] -pin PWM_in_1|btn_up_cnt_i O[4] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[4]
load net PWM_in_1|btn_up_cnt__0[5] -attr @rip(#000000) O[5] -attr @name btn_up_cnt__0[5] -pin PWM_in_1|btn_up_cnt_i O[5] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[5]
load net PWM_in_1|btn_up_cnt__0[6] -attr @rip(#000000) O[6] -attr @name btn_up_cnt__0[6] -pin PWM_in_1|btn_up_cnt_i O[6] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[6]
load net PWM_in_1|btn_up_cnt__0[7] -attr @rip(#000000) O[7] -attr @name btn_up_cnt__0[7] -pin PWM_in_1|btn_up_cnt_i O[7] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[7]
load net PWM_in_1|btn_up_cnt__0[8] -attr @rip(#000000) O[8] -attr @name btn_up_cnt__0[8] -pin PWM_in_1|btn_up_cnt_i O[8] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[8]
load net PWM_in_1|btn_up_cnt__0[9] -attr @rip(#000000) O[9] -attr @name btn_up_cnt__0[9] -pin PWM_in_1|btn_up_cnt_i O[9] -pin PWM_in_1|btn_up_cnt_reg[16:0] D[9]
load net PWM_in_1|btn_up_cnt_i__0_n_0 -attr @name btn_up_cnt_i__0_n_0 -pin PWM_in_1|btn_up_cnt_i__0 O -pin PWM_in_1|btn_up_cnt_reg[16:0] CE
netloc PWM_in_1|btn_up_cnt_i__0_n_0 1 2 1 920 288n
load net PWM_in_1|btn_up_db -attr @name btn_up_db -pin PWM_in_1|accelerating_counter2_i I0 -pin PWM_in_1|accelerating_counter3_i__0 I0 -pin PWM_in_1|btn_up_db_reg Q -pin PWM_in_1|btn_up_prev_reg D -pin PWM_in_1|duty_cycle_internal1_i__2 I1 -pin PWM_in_1|duty_cycle_internal1_i__4 I0
netloc PWM_in_1|btn_up_db 1 5 9 1630 548 1950 638 2280 648 NJ 648 2960 888 NJ 888 NJ 888 4430J 868 4770
load net PWM_in_1|btn_up_db__0 -attr @name btn_up_db__0 -pin PWM_in_1|btn_up_db_i O -pin PWM_in_1|btn_up_db_reg D
netloc PWM_in_1|btn_up_db__0 1 4 1 NJ 588
load net PWM_in_1|btn_up_prev -attr @name btn_up_prev -pin PWM_in_1|btn_up_prev_reg Q -pin PWM_in_1|duty_cycle_internal2_i__0 I0
netloc PWM_in_1|btn_up_prev 1 8 1 2570 728n
load net PWM_in_1|clk -attr @name clk -hierPin PWM_in_1 clk -pin PWM_in_1|accelerating_counter_reg[23:0] C -pin PWM_in_1|accelerating_reg C -pin PWM_in_1|btn_down_cnt_reg[16:0] C -pin PWM_in_1|btn_down_db_reg C -pin PWM_in_1|btn_down_prev_reg C -pin PWM_in_1|btn_up_cnt_reg[16:0] C -pin PWM_in_1|btn_up_db_reg C -pin PWM_in_1|btn_up_prev_reg C -pin PWM_in_1|counter_reg[18:0] C -pin PWM_in_1|duty_cycle_internal_reg[18:0] C
netloc PWM_in_1|clk 1 0 21 150J 518 560J 538 880 688 NJ 688 1390 788 NJ 788 NJ 788 2300 788 NJ 788 3000 578 3460J 538 NJ 538 4330 668 NJ 668 NJ 668 NJ 668 5950J 718 6250 828 NJ 828 7080J 718 NJ
load net PWM_in_1|counter1 -attr @name counter1 -pin PWM_in_1|counter1_i O -pin PWM_in_1|counter_i S
netloc PWM_in_1|counter1 1 18 1 6720J 758n
load net PWM_in_1|counter[0] -attr @rip(#000000) 0 -attr @name counter[0] -pin PWM_in_1|counter1_i I0[0] -pin PWM_in_1|counter_reg[18:0] Q[0] -pin PWM_in_1|plusOp_i__2 I0[0] -pin PWM_in_1|pwm_out0_i I1[0]
load net PWM_in_1|counter[10] -attr @rip(#000000) 10 -attr @name counter[10] -pin PWM_in_1|counter1_i I0[10] -pin PWM_in_1|counter_reg[18:0] Q[10] -pin PWM_in_1|plusOp_i__2 I0[10] -pin PWM_in_1|pwm_out0_i I1[10]
load net PWM_in_1|counter[11] -attr @rip(#000000) 11 -attr @name counter[11] -pin PWM_in_1|counter1_i I0[11] -pin PWM_in_1|counter_reg[18:0] Q[11] -pin PWM_in_1|plusOp_i__2 I0[11] -pin PWM_in_1|pwm_out0_i I1[11]
load net PWM_in_1|counter[12] -attr @rip(#000000) 12 -attr @name counter[12] -pin PWM_in_1|counter1_i I0[12] -pin PWM_in_1|counter_reg[18:0] Q[12] -pin PWM_in_1|plusOp_i__2 I0[12] -pin PWM_in_1|pwm_out0_i I1[12]
load net PWM_in_1|counter[13] -attr @rip(#000000) 13 -attr @name counter[13] -pin PWM_in_1|counter1_i I0[13] -pin PWM_in_1|counter_reg[18:0] Q[13] -pin PWM_in_1|plusOp_i__2 I0[13] -pin PWM_in_1|pwm_out0_i I1[13]
load net PWM_in_1|counter[14] -attr @rip(#000000) 14 -attr @name counter[14] -pin PWM_in_1|counter1_i I0[14] -pin PWM_in_1|counter_reg[18:0] Q[14] -pin PWM_in_1|plusOp_i__2 I0[14] -pin PWM_in_1|pwm_out0_i I1[14]
load net PWM_in_1|counter[15] -attr @rip(#000000) 15 -attr @name counter[15] -pin PWM_in_1|counter1_i I0[15] -pin PWM_in_1|counter_reg[18:0] Q[15] -pin PWM_in_1|plusOp_i__2 I0[15] -pin PWM_in_1|pwm_out0_i I1[15]
load net PWM_in_1|counter[16] -attr @rip(#000000) 16 -attr @name counter[16] -pin PWM_in_1|counter1_i I0[16] -pin PWM_in_1|counter_reg[18:0] Q[16] -pin PWM_in_1|plusOp_i__2 I0[16] -pin PWM_in_1|pwm_out0_i I1[16]
load net PWM_in_1|counter[17] -attr @rip(#000000) 17 -attr @name counter[17] -pin PWM_in_1|counter1_i I0[17] -pin PWM_in_1|counter_reg[18:0] Q[17] -pin PWM_in_1|plusOp_i__2 I0[17] -pin PWM_in_1|pwm_out0_i I1[17]
load net PWM_in_1|counter[18] -attr @rip(#000000) 18 -attr @name counter[18] -pin PWM_in_1|counter1_i I0[18] -pin PWM_in_1|counter_reg[18:0] Q[18] -pin PWM_in_1|plusOp_i__2 I0[18] -pin PWM_in_1|pwm_out0_i I1[18]
load net PWM_in_1|counter[1] -attr @rip(#000000) 1 -attr @name counter[1] -pin PWM_in_1|counter1_i I0[1] -pin PWM_in_1|counter_reg[18:0] Q[1] -pin PWM_in_1|plusOp_i__2 I0[1] -pin PWM_in_1|pwm_out0_i I1[1]
load net PWM_in_1|counter[2] -attr @rip(#000000) 2 -attr @name counter[2] -pin PWM_in_1|counter1_i I0[2] -pin PWM_in_1|counter_reg[18:0] Q[2] -pin PWM_in_1|plusOp_i__2 I0[2] -pin PWM_in_1|pwm_out0_i I1[2]
load net PWM_in_1|counter[3] -attr @rip(#000000) 3 -attr @name counter[3] -pin PWM_in_1|counter1_i I0[3] -pin PWM_in_1|counter_reg[18:0] Q[3] -pin PWM_in_1|plusOp_i__2 I0[3] -pin PWM_in_1|pwm_out0_i I1[3]
load net PWM_in_1|counter[4] -attr @rip(#000000) 4 -attr @name counter[4] -pin PWM_in_1|counter1_i I0[4] -pin PWM_in_1|counter_reg[18:0] Q[4] -pin PWM_in_1|plusOp_i__2 I0[4] -pin PWM_in_1|pwm_out0_i I1[4]
load net PWM_in_1|counter[5] -attr @rip(#000000) 5 -attr @name counter[5] -pin PWM_in_1|counter1_i I0[5] -pin PWM_in_1|counter_reg[18:0] Q[5] -pin PWM_in_1|plusOp_i__2 I0[5] -pin PWM_in_1|pwm_out0_i I1[5]
load net PWM_in_1|counter[6] -attr @rip(#000000) 6 -attr @name counter[6] -pin PWM_in_1|counter1_i I0[6] -pin PWM_in_1|counter_reg[18:0] Q[6] -pin PWM_in_1|plusOp_i__2 I0[6] -pin PWM_in_1|pwm_out0_i I1[6]
load net PWM_in_1|counter[7] -attr @rip(#000000) 7 -attr @name counter[7] -pin PWM_in_1|counter1_i I0[7] -pin PWM_in_1|counter_reg[18:0] Q[7] -pin PWM_in_1|plusOp_i__2 I0[7] -pin PWM_in_1|pwm_out0_i I1[7]
load net PWM_in_1|counter[8] -attr @rip(#000000) 8 -attr @name counter[8] -pin PWM_in_1|counter1_i I0[8] -pin PWM_in_1|counter_reg[18:0] Q[8] -pin PWM_in_1|plusOp_i__2 I0[8] -pin PWM_in_1|pwm_out0_i I1[8]
load net PWM_in_1|counter[9] -attr @rip(#000000) 9 -attr @name counter[9] -pin PWM_in_1|counter1_i I0[9] -pin PWM_in_1|counter_reg[18:0] Q[9] -pin PWM_in_1|plusOp_i__2 I0[9] -pin PWM_in_1|pwm_out0_i I1[9]
load net PWM_in_1|counter__0 -attr @name counter__0 -pin PWM_in_1|counter_i__0 O -pin PWM_in_1|counter_reg[18:0] RST
netloc PWM_in_1|counter__0 1 20 1 7480 498n
load net PWM_in_1|counter_i_n_0 -attr @name counter_i_n_0 -pin PWM_in_1|counter_i O -pin PWM_in_1|counter_i__0 I1
netloc PWM_in_1|counter_i_n_0 1 19 1 7060J 508n
load net PWM_in_1|duty_cycle_internal1 -attr @name duty_cycle_internal1 -pin PWM_in_1|duty_cycle_internal1_i__3 O -pin PWM_in_1|duty_cycle_internal_i__11 S -pin PWM_in_1|duty_cycle_internal_i__4 S
netloc PWM_in_1|duty_cycle_internal1 1 16 1 5970 558n
load net PWM_in_1|duty_cycle_internal1_i__0_n_0 -attr @name duty_cycle_internal1_i__0_n_0 -pin PWM_in_1|duty_cycle_internal1_i__0 O -pin PWM_in_1|duty_cycle_internal_i__0 S -pin PWM_in_1|duty_cycle_internal_i__7 S
netloc PWM_in_1|duty_cycle_internal1_i__0_n_0 1 12 1 4390 608n
load net PWM_in_1|duty_cycle_internal1_i__1_n_0 -attr @name duty_cycle_internal1_i__1_n_0 -pin PWM_in_1|duty_cycle_internal1_i__1 O -pin PWM_in_1|duty_cycle_internal_i__1 S -pin PWM_in_1|duty_cycle_internal_i__5 I0 -pin PWM_in_1|duty_cycle_internal_i__8 S
netloc PWM_in_1|duty_cycle_internal1_i__1_n_0 1 10 4 3460 958 NJ 958 4330J 1028 4790
load net PWM_in_1|duty_cycle_internal1_i__2_n_0 -attr @name duty_cycle_internal1_i__2_n_0 -pin PWM_in_1|duty_cycle_internal1_i__2 O -pin PWM_in_1|duty_cycle_internal_i__2 S -pin PWM_in_1|duty_cycle_internal_i__9 S
netloc PWM_in_1|duty_cycle_internal1_i__2_n_0 1 14 1 5210 618n
load net PWM_in_1|duty_cycle_internal1_i__4_n_0 -attr @name duty_cycle_internal1_i__4_n_0 -pin PWM_in_1|duty_cycle_internal1_i__4 O -pin PWM_in_1|duty_cycle_internal_i__5 S
netloc PWM_in_1|duty_cycle_internal1_i__4_n_0 1 10 1 N 1078
load net PWM_in_1|duty_cycle_internal1_i_n_0 -attr @name duty_cycle_internal1_i_n_0 -pin PWM_in_1|duty_cycle_internal1_i O -pin PWM_in_1|duty_cycle_internal_i S -pin PWM_in_1|duty_cycle_internal_i__10 S -pin PWM_in_1|duty_cycle_internal_i__3 S -pin PWM_in_1|duty_cycle_internal_i__6 S
netloc PWM_in_1|duty_cycle_internal1_i_n_0 1 11 5 3890 778N 4370 688 NJ 688 NJ 688 5530
load net PWM_in_1|duty_cycle_internal2 -attr @name duty_cycle_internal2 -pin PWM_in_1|duty_cycle_internal1_i__0 I1 -pin PWM_in_1|duty_cycle_internal2_i O
netloc PWM_in_1|duty_cycle_internal2 1 11 1 3910 608n
load net PWM_in_1|duty_cycle_internal2_i__0_n_0 -attr @name duty_cycle_internal2_i__0_n_0 -pin PWM_in_1|duty_cycle_internal1_i__4 I1 -pin PWM_in_1|duty_cycle_internal2_i__0 O
netloc PWM_in_1|duty_cycle_internal2_i__0_n_0 1 9 1 NJ 1088
load net PWM_in_1|duty_cycle_internal[0] -attr @rip(#000000) 0 -attr @name duty_cycle_internal[0] -pin PWM_in_1|duty_cycle_internal1_i I0[0] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[0] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[0] -pin PWM_in_1|minusOp_i I0[0] -pin PWM_in_1|minusOp_i__0 I0[0] -pin PWM_in_1|multOp_i I0[0] -pin PWM_in_1|plusOp_i I0[0] -pin PWM_in_1|plusOp_i__0 I0[0] -pin PWM_in_1|pwm_out0_i I0[0]
load net PWM_in_1|duty_cycle_internal[10] -attr @rip(#000000) 10 -attr @name duty_cycle_internal[10] -pin PWM_in_1|duty_cycle_internal1_i I0[10] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[10] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[10] -pin PWM_in_1|minusOp_i I0[10] -pin PWM_in_1|minusOp_i__0 I0[10] -pin PWM_in_1|multOp_i I0[10] -pin PWM_in_1|plusOp_i I0[10] -pin PWM_in_1|plusOp_i__0 I0[10] -pin PWM_in_1|pwm_out0_i I0[10]
load net PWM_in_1|duty_cycle_internal[11] -attr @rip(#000000) 11 -attr @name duty_cycle_internal[11] -pin PWM_in_1|duty_cycle_internal1_i I0[11] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[11] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[11] -pin PWM_in_1|minusOp_i I0[11] -pin PWM_in_1|minusOp_i__0 I0[11] -pin PWM_in_1|multOp_i I0[11] -pin PWM_in_1|plusOp_i I0[11] -pin PWM_in_1|plusOp_i__0 I0[11] -pin PWM_in_1|pwm_out0_i I0[11]
load net PWM_in_1|duty_cycle_internal[12] -attr @rip(#000000) 12 -attr @name duty_cycle_internal[12] -pin PWM_in_1|duty_cycle_internal1_i I0[12] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[12] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[12] -pin PWM_in_1|minusOp_i I0[12] -pin PWM_in_1|minusOp_i__0 I0[12] -pin PWM_in_1|multOp_i I0[12] -pin PWM_in_1|plusOp_i I0[12] -pin PWM_in_1|plusOp_i__0 I0[12] -pin PWM_in_1|pwm_out0_i I0[12]
load net PWM_in_1|duty_cycle_internal[13] -attr @rip(#000000) 13 -attr @name duty_cycle_internal[13] -pin PWM_in_1|duty_cycle_internal1_i I0[13] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[13] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[13] -pin PWM_in_1|minusOp_i I0[13] -pin PWM_in_1|minusOp_i__0 I0[13] -pin PWM_in_1|multOp_i I0[13] -pin PWM_in_1|plusOp_i I0[13] -pin PWM_in_1|plusOp_i__0 I0[13] -pin PWM_in_1|pwm_out0_i I0[13]
load net PWM_in_1|duty_cycle_internal[14] -attr @rip(#000000) 14 -attr @name duty_cycle_internal[14] -pin PWM_in_1|duty_cycle_internal1_i I0[14] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[14] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[14] -pin PWM_in_1|minusOp_i I0[14] -pin PWM_in_1|minusOp_i__0 I0[14] -pin PWM_in_1|multOp_i I0[14] -pin PWM_in_1|plusOp_i I0[14] -pin PWM_in_1|plusOp_i__0 I0[14] -pin PWM_in_1|pwm_out0_i I0[14]
load net PWM_in_1|duty_cycle_internal[15] -attr @rip(#000000) 15 -attr @name duty_cycle_internal[15] -pin PWM_in_1|duty_cycle_internal1_i I0[15] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[15] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[15] -pin PWM_in_1|minusOp_i I0[15] -pin PWM_in_1|minusOp_i__0 I0[15] -pin PWM_in_1|multOp_i I0[15] -pin PWM_in_1|plusOp_i I0[15] -pin PWM_in_1|plusOp_i__0 I0[15] -pin PWM_in_1|pwm_out0_i I0[15]
load net PWM_in_1|duty_cycle_internal[16] -attr @rip(#000000) 16 -attr @name duty_cycle_internal[16] -pin PWM_in_1|duty_cycle_internal1_i I0[16] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[16] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[16] -pin PWM_in_1|minusOp_i I0[16] -pin PWM_in_1|minusOp_i__0 I0[16] -pin PWM_in_1|multOp_i I0[16] -pin PWM_in_1|plusOp_i I0[16] -pin PWM_in_1|plusOp_i__0 I0[16] -pin PWM_in_1|pwm_out0_i I0[16]
load net PWM_in_1|duty_cycle_internal[17] -attr @rip(#000000) 17 -attr @name duty_cycle_internal[17] -pin PWM_in_1|duty_cycle_internal1_i I0[17] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[17] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[17] -pin PWM_in_1|minusOp_i I0[17] -pin PWM_in_1|minusOp_i__0 I0[17] -pin PWM_in_1|multOp_i I0[17] -pin PWM_in_1|plusOp_i I0[17] -pin PWM_in_1|plusOp_i__0 I0[17] -pin PWM_in_1|pwm_out0_i I0[17]
load net PWM_in_1|duty_cycle_internal[18] -attr @rip(#000000) 18 -attr @name duty_cycle_internal[18] -pin PWM_in_1|duty_cycle_internal1_i I0[18] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[18] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[18] -pin PWM_in_1|minusOp_i I0[18] -pin PWM_in_1|minusOp_i__0 I0[18] -pin PWM_in_1|multOp_i I0[18] -pin PWM_in_1|plusOp_i I0[18] -pin PWM_in_1|plusOp_i__0 I0[18] -pin PWM_in_1|pwm_out0_i I0[18]
load net PWM_in_1|duty_cycle_internal[1] -attr @rip(#000000) 1 -attr @name duty_cycle_internal[1] -pin PWM_in_1|duty_cycle_internal1_i I0[1] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[1] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[1] -pin PWM_in_1|minusOp_i I0[1] -pin PWM_in_1|minusOp_i__0 I0[1] -pin PWM_in_1|multOp_i I0[1] -pin PWM_in_1|plusOp_i I0[1] -pin PWM_in_1|plusOp_i__0 I0[1] -pin PWM_in_1|pwm_out0_i I0[1]
load net PWM_in_1|duty_cycle_internal[2] -attr @rip(#000000) 2 -attr @name duty_cycle_internal[2] -pin PWM_in_1|duty_cycle_internal1_i I0[2] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[2] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[2] -pin PWM_in_1|minusOp_i I0[2] -pin PWM_in_1|minusOp_i__0 I0[2] -pin PWM_in_1|multOp_i I0[2] -pin PWM_in_1|plusOp_i I0[2] -pin PWM_in_1|plusOp_i__0 I0[2] -pin PWM_in_1|pwm_out0_i I0[2]
load net PWM_in_1|duty_cycle_internal[3] -attr @rip(#000000) 3 -attr @name duty_cycle_internal[3] -pin PWM_in_1|duty_cycle_internal1_i I0[3] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[3] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[3] -pin PWM_in_1|minusOp_i I0[3] -pin PWM_in_1|minusOp_i__0 I0[3] -pin PWM_in_1|multOp_i I0[3] -pin PWM_in_1|plusOp_i I0[3] -pin PWM_in_1|plusOp_i__0 I0[3] -pin PWM_in_1|pwm_out0_i I0[3]
load net PWM_in_1|duty_cycle_internal[4] -attr @rip(#000000) 4 -attr @name duty_cycle_internal[4] -pin PWM_in_1|duty_cycle_internal1_i I0[4] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[4] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[4] -pin PWM_in_1|minusOp_i I0[4] -pin PWM_in_1|minusOp_i__0 I0[4] -pin PWM_in_1|multOp_i I0[4] -pin PWM_in_1|plusOp_i I0[4] -pin PWM_in_1|plusOp_i__0 I0[4] -pin PWM_in_1|pwm_out0_i I0[4]
load net PWM_in_1|duty_cycle_internal[5] -attr @rip(#000000) 5 -attr @name duty_cycle_internal[5] -pin PWM_in_1|duty_cycle_internal1_i I0[5] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[5] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[5] -pin PWM_in_1|minusOp_i I0[5] -pin PWM_in_1|minusOp_i__0 I0[5] -pin PWM_in_1|multOp_i I0[5] -pin PWM_in_1|plusOp_i I0[5] -pin PWM_in_1|plusOp_i__0 I0[5] -pin PWM_in_1|pwm_out0_i I0[5]
load net PWM_in_1|duty_cycle_internal[6] -attr @rip(#000000) 6 -attr @name duty_cycle_internal[6] -pin PWM_in_1|duty_cycle_internal1_i I0[6] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[6] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[6] -pin PWM_in_1|minusOp_i I0[6] -pin PWM_in_1|minusOp_i__0 I0[6] -pin PWM_in_1|multOp_i I0[6] -pin PWM_in_1|plusOp_i I0[6] -pin PWM_in_1|plusOp_i__0 I0[6] -pin PWM_in_1|pwm_out0_i I0[6]
load net PWM_in_1|duty_cycle_internal[7] -attr @rip(#000000) 7 -attr @name duty_cycle_internal[7] -pin PWM_in_1|duty_cycle_internal1_i I0[7] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[7] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[7] -pin PWM_in_1|minusOp_i I0[7] -pin PWM_in_1|minusOp_i__0 I0[7] -pin PWM_in_1|multOp_i I0[7] -pin PWM_in_1|plusOp_i I0[7] -pin PWM_in_1|plusOp_i__0 I0[7] -pin PWM_in_1|pwm_out0_i I0[7]
load net PWM_in_1|duty_cycle_internal[8] -attr @rip(#000000) 8 -attr @name duty_cycle_internal[8] -pin PWM_in_1|duty_cycle_internal1_i I0[8] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[8] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[8] -pin PWM_in_1|minusOp_i I0[8] -pin PWM_in_1|minusOp_i__0 I0[8] -pin PWM_in_1|multOp_i I0[8] -pin PWM_in_1|plusOp_i I0[8] -pin PWM_in_1|plusOp_i__0 I0[8] -pin PWM_in_1|pwm_out0_i I0[8]
load net PWM_in_1|duty_cycle_internal[9] -attr @rip(#000000) 9 -attr @name duty_cycle_internal[9] -pin PWM_in_1|duty_cycle_internal1_i I0[9] -pin PWM_in_1|duty_cycle_internal1_i__1 I0[9] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[9] -pin PWM_in_1|minusOp_i I0[9] -pin PWM_in_1|minusOp_i__0 I0[9] -pin PWM_in_1|multOp_i I0[9] -pin PWM_in_1|plusOp_i I0[9] -pin PWM_in_1|plusOp_i__0 I0[9] -pin PWM_in_1|pwm_out0_i I0[9]
load net PWM_in_1|duty_cycle_internal__0[0] -attr @rip(#000000) O[0] -attr @name duty_cycle_internal__0[0] -pin PWM_in_1|duty_cycle_internal_i__4 O[0] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[0]
load net PWM_in_1|duty_cycle_internal__0[10] -attr @rip(#000000) O[10] -attr @name duty_cycle_internal__0[10] -pin PWM_in_1|duty_cycle_internal_i__4 O[10] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[10]
load net PWM_in_1|duty_cycle_internal__0[11] -attr @rip(#000000) O[11] -attr @name duty_cycle_internal__0[11] -pin PWM_in_1|duty_cycle_internal_i__4 O[11] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[11]
load net PWM_in_1|duty_cycle_internal__0[12] -attr @rip(#000000) O[12] -attr @name duty_cycle_internal__0[12] -pin PWM_in_1|duty_cycle_internal_i__4 O[12] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[12]
load net PWM_in_1|duty_cycle_internal__0[13] -attr @rip(#000000) O[13] -attr @name duty_cycle_internal__0[13] -pin PWM_in_1|duty_cycle_internal_i__4 O[13] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[13]
load net PWM_in_1|duty_cycle_internal__0[14] -attr @rip(#000000) O[14] -attr @name duty_cycle_internal__0[14] -pin PWM_in_1|duty_cycle_internal_i__4 O[14] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[14]
load net PWM_in_1|duty_cycle_internal__0[15] -attr @rip(#000000) O[15] -attr @name duty_cycle_internal__0[15] -pin PWM_in_1|duty_cycle_internal_i__4 O[15] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[15]
load net PWM_in_1|duty_cycle_internal__0[16] -attr @rip(#000000) O[16] -attr @name duty_cycle_internal__0[16] -pin PWM_in_1|duty_cycle_internal_i__4 O[16] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[16]
load net PWM_in_1|duty_cycle_internal__0[17] -attr @rip(#000000) O[17] -attr @name duty_cycle_internal__0[17] -pin PWM_in_1|duty_cycle_internal_i__4 O[17] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[17]
load net PWM_in_1|duty_cycle_internal__0[18] -attr @rip(#000000) O[18] -attr @name duty_cycle_internal__0[18] -pin PWM_in_1|duty_cycle_internal_i__4 O[18] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[18]
load net PWM_in_1|duty_cycle_internal__0[1] -attr @rip(#000000) O[1] -attr @name duty_cycle_internal__0[1] -pin PWM_in_1|duty_cycle_internal_i__4 O[1] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[1]
load net PWM_in_1|duty_cycle_internal__0[2] -attr @rip(#000000) O[2] -attr @name duty_cycle_internal__0[2] -pin PWM_in_1|duty_cycle_internal_i__4 O[2] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[2]
load net PWM_in_1|duty_cycle_internal__0[3] -attr @rip(#000000) O[3] -attr @name duty_cycle_internal__0[3] -pin PWM_in_1|duty_cycle_internal_i__4 O[3] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[3]
load net PWM_in_1|duty_cycle_internal__0[4] -attr @rip(#000000) O[4] -attr @name duty_cycle_internal__0[4] -pin PWM_in_1|duty_cycle_internal_i__4 O[4] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[4]
load net PWM_in_1|duty_cycle_internal__0[5] -attr @rip(#000000) O[5] -attr @name duty_cycle_internal__0[5] -pin PWM_in_1|duty_cycle_internal_i__4 O[5] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[5]
load net PWM_in_1|duty_cycle_internal__0[6] -attr @rip(#000000) O[6] -attr @name duty_cycle_internal__0[6] -pin PWM_in_1|duty_cycle_internal_i__4 O[6] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[6]
load net PWM_in_1|duty_cycle_internal__0[7] -attr @rip(#000000) O[7] -attr @name duty_cycle_internal__0[7] -pin PWM_in_1|duty_cycle_internal_i__4 O[7] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[7]
load net PWM_in_1|duty_cycle_internal__0[8] -attr @rip(#000000) O[8] -attr @name duty_cycle_internal__0[8] -pin PWM_in_1|duty_cycle_internal_i__4 O[8] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[8]
load net PWM_in_1|duty_cycle_internal__0[9] -attr @rip(#000000) O[9] -attr @name duty_cycle_internal__0[9] -pin PWM_in_1|duty_cycle_internal_i__4 O[9] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[9]
load net PWM_in_1|duty_cycle_internal_i__0_n_0 -attr @rip(#000000) O[18] -attr @name duty_cycle_internal_i__0_n_0 -pin PWM_in_1|duty_cycle_internal_i__0 O[18] -pin PWM_in_1|duty_cycle_internal_i__1 I1[18] -pin PWM_in_1|duty_cycle_internal_i__2 I1[18]
load net PWM_in_1|duty_cycle_internal_i__0_n_1 -attr @rip(#000000) O[17] -attr @name duty_cycle_internal_i__0_n_1 -pin PWM_in_1|duty_cycle_internal_i__0 O[17] -pin PWM_in_1|duty_cycle_internal_i__1 I1[17] -pin PWM_in_1|duty_cycle_internal_i__2 I1[17]
load net PWM_in_1|duty_cycle_internal_i__0_n_10 -attr @rip(#000000) O[8] -attr @name duty_cycle_internal_i__0_n_10 -pin PWM_in_1|duty_cycle_internal_i__0 O[8] -pin PWM_in_1|duty_cycle_internal_i__1 I1[8] -pin PWM_in_1|duty_cycle_internal_i__2 I1[8]
load net PWM_in_1|duty_cycle_internal_i__0_n_11 -attr @rip(#000000) O[7] -attr @name duty_cycle_internal_i__0_n_11 -pin PWM_in_1|duty_cycle_internal_i__0 O[7] -pin PWM_in_1|duty_cycle_internal_i__1 I1[7] -pin PWM_in_1|duty_cycle_internal_i__2 I1[7]
load net PWM_in_1|duty_cycle_internal_i__0_n_12 -attr @rip(#000000) O[6] -attr @name duty_cycle_internal_i__0_n_12 -pin PWM_in_1|duty_cycle_internal_i__0 O[6] -pin PWM_in_1|duty_cycle_internal_i__1 I1[6] -pin PWM_in_1|duty_cycle_internal_i__2 I1[6]
load net PWM_in_1|duty_cycle_internal_i__0_n_13 -attr @rip(#000000) O[5] -attr @name duty_cycle_internal_i__0_n_13 -pin PWM_in_1|duty_cycle_internal_i__0 O[5] -pin PWM_in_1|duty_cycle_internal_i__1 I1[5] -pin PWM_in_1|duty_cycle_internal_i__2 I1[5]
load net PWM_in_1|duty_cycle_internal_i__0_n_14 -attr @rip(#000000) O[4] -attr @name duty_cycle_internal_i__0_n_14 -pin PWM_in_1|duty_cycle_internal_i__0 O[4] -pin PWM_in_1|duty_cycle_internal_i__1 I1[4] -pin PWM_in_1|duty_cycle_internal_i__2 I1[4]
load net PWM_in_1|duty_cycle_internal_i__0_n_15 -attr @rip(#000000) O[3] -attr @name duty_cycle_internal_i__0_n_15 -pin PWM_in_1|duty_cycle_internal_i__0 O[3] -pin PWM_in_1|duty_cycle_internal_i__1 I1[3] -pin PWM_in_1|duty_cycle_internal_i__2 I1[3]
load net PWM_in_1|duty_cycle_internal_i__0_n_16 -attr @rip(#000000) O[2] -attr @name duty_cycle_internal_i__0_n_16 -pin PWM_in_1|duty_cycle_internal_i__0 O[2] -pin PWM_in_1|duty_cycle_internal_i__1 I1[2] -pin PWM_in_1|duty_cycle_internal_i__2 I1[2]
load net PWM_in_1|duty_cycle_internal_i__0_n_17 -attr @rip(#000000) O[1] -attr @name duty_cycle_internal_i__0_n_17 -pin PWM_in_1|duty_cycle_internal_i__0 O[1] -pin PWM_in_1|duty_cycle_internal_i__1 I1[1] -pin PWM_in_1|duty_cycle_internal_i__2 I1[1]
load net PWM_in_1|duty_cycle_internal_i__0_n_18 -attr @rip(#000000) O[0] -attr @name duty_cycle_internal_i__0_n_18 -pin PWM_in_1|duty_cycle_internal_i__0 O[0] -pin PWM_in_1|duty_cycle_internal_i__1 I1[0] -pin PWM_in_1|duty_cycle_internal_i__2 I1[0]
load net PWM_in_1|duty_cycle_internal_i__0_n_2 -attr @rip(#000000) O[16] -attr @name duty_cycle_internal_i__0_n_2 -pin PWM_in_1|duty_cycle_internal_i__0 O[16] -pin PWM_in_1|duty_cycle_internal_i__1 I1[16] -pin PWM_in_1|duty_cycle_internal_i__2 I1[16]
load net PWM_in_1|duty_cycle_internal_i__0_n_3 -attr @rip(#000000) O[15] -attr @name duty_cycle_internal_i__0_n_3 -pin PWM_in_1|duty_cycle_internal_i__0 O[15] -pin PWM_in_1|duty_cycle_internal_i__1 I1[15] -pin PWM_in_1|duty_cycle_internal_i__2 I1[15]
load net PWM_in_1|duty_cycle_internal_i__0_n_4 -attr @rip(#000000) O[14] -attr @name duty_cycle_internal_i__0_n_4 -pin PWM_in_1|duty_cycle_internal_i__0 O[14] -pin PWM_in_1|duty_cycle_internal_i__1 I1[14] -pin PWM_in_1|duty_cycle_internal_i__2 I1[14]
load net PWM_in_1|duty_cycle_internal_i__0_n_5 -attr @rip(#000000) O[13] -attr @name duty_cycle_internal_i__0_n_5 -pin PWM_in_1|duty_cycle_internal_i__0 O[13] -pin PWM_in_1|duty_cycle_internal_i__1 I1[13] -pin PWM_in_1|duty_cycle_internal_i__2 I1[13]
load net PWM_in_1|duty_cycle_internal_i__0_n_6 -attr @rip(#000000) O[12] -attr @name duty_cycle_internal_i__0_n_6 -pin PWM_in_1|duty_cycle_internal_i__0 O[12] -pin PWM_in_1|duty_cycle_internal_i__1 I1[12] -pin PWM_in_1|duty_cycle_internal_i__2 I1[12]
load net PWM_in_1|duty_cycle_internal_i__0_n_7 -attr @rip(#000000) O[11] -attr @name duty_cycle_internal_i__0_n_7 -pin PWM_in_1|duty_cycle_internal_i__0 O[11] -pin PWM_in_1|duty_cycle_internal_i__1 I1[11] -pin PWM_in_1|duty_cycle_internal_i__2 I1[11]
load net PWM_in_1|duty_cycle_internal_i__0_n_8 -attr @rip(#000000) O[10] -attr @name duty_cycle_internal_i__0_n_8 -pin PWM_in_1|duty_cycle_internal_i__0 O[10] -pin PWM_in_1|duty_cycle_internal_i__1 I1[10] -pin PWM_in_1|duty_cycle_internal_i__2 I1[10]
load net PWM_in_1|duty_cycle_internal_i__0_n_9 -attr @rip(#000000) O[9] -attr @name duty_cycle_internal_i__0_n_9 -pin PWM_in_1|duty_cycle_internal_i__0 O[9] -pin PWM_in_1|duty_cycle_internal_i__1 I1[9] -pin PWM_in_1|duty_cycle_internal_i__2 I1[9]
load net PWM_in_1|duty_cycle_internal_i__10_n_0 -attr @name duty_cycle_internal_i__10_n_0 -pin PWM_in_1|duty_cycle_internal_i__10 O -pin PWM_in_1|duty_cycle_internal_i__11 I0
netloc PWM_in_1|duty_cycle_internal_i__10_n_0 1 16 1 5990 788n
load net PWM_in_1|duty_cycle_internal_i__11_n_0 -attr @name duty_cycle_internal_i__11_n_0 -pin PWM_in_1|duty_cycle_internal_i__11 O -pin PWM_in_1|duty_cycle_internal_reg[18:0] CE
netloc PWM_in_1|duty_cycle_internal_i__11_n_0 1 17 1 6270 618n
load net PWM_in_1|duty_cycle_internal_i__1_n_0 -attr @rip(#000000) O[18] -attr @name duty_cycle_internal_i__1_n_0 -pin PWM_in_1|duty_cycle_internal_i__1 O[18] -pin PWM_in_1|duty_cycle_internal_i__2 I0[18]
load net PWM_in_1|duty_cycle_internal_i__1_n_1 -attr @rip(#000000) O[17] -attr @name duty_cycle_internal_i__1_n_1 -pin PWM_in_1|duty_cycle_internal_i__1 O[17] -pin PWM_in_1|duty_cycle_internal_i__2 I0[17]
load net PWM_in_1|duty_cycle_internal_i__1_n_10 -attr @rip(#000000) O[8] -attr @name duty_cycle_internal_i__1_n_10 -pin PWM_in_1|duty_cycle_internal_i__1 O[8] -pin PWM_in_1|duty_cycle_internal_i__2 I0[8]
load net PWM_in_1|duty_cycle_internal_i__1_n_11 -attr @rip(#000000) O[7] -attr @name duty_cycle_internal_i__1_n_11 -pin PWM_in_1|duty_cycle_internal_i__1 O[7] -pin PWM_in_1|duty_cycle_internal_i__2 I0[7]
load net PWM_in_1|duty_cycle_internal_i__1_n_12 -attr @rip(#000000) O[6] -attr @name duty_cycle_internal_i__1_n_12 -pin PWM_in_1|duty_cycle_internal_i__1 O[6] -pin PWM_in_1|duty_cycle_internal_i__2 I0[6]
load net PWM_in_1|duty_cycle_internal_i__1_n_13 -attr @rip(#000000) O[5] -attr @name duty_cycle_internal_i__1_n_13 -pin PWM_in_1|duty_cycle_internal_i__1 O[5] -pin PWM_in_1|duty_cycle_internal_i__2 I0[5]
load net PWM_in_1|duty_cycle_internal_i__1_n_14 -attr @rip(#000000) O[4] -attr @name duty_cycle_internal_i__1_n_14 -pin PWM_in_1|duty_cycle_internal_i__1 O[4] -pin PWM_in_1|duty_cycle_internal_i__2 I0[4]
load net PWM_in_1|duty_cycle_internal_i__1_n_15 -attr @rip(#000000) O[3] -attr @name duty_cycle_internal_i__1_n_15 -pin PWM_in_1|duty_cycle_internal_i__1 O[3] -pin PWM_in_1|duty_cycle_internal_i__2 I0[3]
load net PWM_in_1|duty_cycle_internal_i__1_n_16 -attr @rip(#000000) O[2] -attr @name duty_cycle_internal_i__1_n_16 -pin PWM_in_1|duty_cycle_internal_i__1 O[2] -pin PWM_in_1|duty_cycle_internal_i__2 I0[2]
load net PWM_in_1|duty_cycle_internal_i__1_n_17 -attr @rip(#000000) O[1] -attr @name duty_cycle_internal_i__1_n_17 -pin PWM_in_1|duty_cycle_internal_i__1 O[1] -pin PWM_in_1|duty_cycle_internal_i__2 I0[1]
load net PWM_in_1|duty_cycle_internal_i__1_n_18 -attr @rip(#000000) O[0] -attr @name duty_cycle_internal_i__1_n_18 -pin PWM_in_1|duty_cycle_internal_i__1 O[0] -pin PWM_in_1|duty_cycle_internal_i__2 I0[0]
load net PWM_in_1|duty_cycle_internal_i__1_n_2 -attr @rip(#000000) O[16] -attr @name duty_cycle_internal_i__1_n_2 -pin PWM_in_1|duty_cycle_internal_i__1 O[16] -pin PWM_in_1|duty_cycle_internal_i__2 I0[16]
load net PWM_in_1|duty_cycle_internal_i__1_n_3 -attr @rip(#000000) O[15] -attr @name duty_cycle_internal_i__1_n_3 -pin PWM_in_1|duty_cycle_internal_i__1 O[15] -pin PWM_in_1|duty_cycle_internal_i__2 I0[15]
load net PWM_in_1|duty_cycle_internal_i__1_n_4 -attr @rip(#000000) O[14] -attr @name duty_cycle_internal_i__1_n_4 -pin PWM_in_1|duty_cycle_internal_i__1 O[14] -pin PWM_in_1|duty_cycle_internal_i__2 I0[14]
load net PWM_in_1|duty_cycle_internal_i__1_n_5 -attr @rip(#000000) O[13] -attr @name duty_cycle_internal_i__1_n_5 -pin PWM_in_1|duty_cycle_internal_i__1 O[13] -pin PWM_in_1|duty_cycle_internal_i__2 I0[13]
load net PWM_in_1|duty_cycle_internal_i__1_n_6 -attr @rip(#000000) O[12] -attr @name duty_cycle_internal_i__1_n_6 -pin PWM_in_1|duty_cycle_internal_i__1 O[12] -pin PWM_in_1|duty_cycle_internal_i__2 I0[12]
load net PWM_in_1|duty_cycle_internal_i__1_n_7 -attr @rip(#000000) O[11] -attr @name duty_cycle_internal_i__1_n_7 -pin PWM_in_1|duty_cycle_internal_i__1 O[11] -pin PWM_in_1|duty_cycle_internal_i__2 I0[11]
load net PWM_in_1|duty_cycle_internal_i__1_n_8 -attr @rip(#000000) O[10] -attr @name duty_cycle_internal_i__1_n_8 -pin PWM_in_1|duty_cycle_internal_i__1 O[10] -pin PWM_in_1|duty_cycle_internal_i__2 I0[10]
load net PWM_in_1|duty_cycle_internal_i__1_n_9 -attr @rip(#000000) O[9] -attr @name duty_cycle_internal_i__1_n_9 -pin PWM_in_1|duty_cycle_internal_i__1 O[9] -pin PWM_in_1|duty_cycle_internal_i__2 I0[9]
load net PWM_in_1|duty_cycle_internal_i__2_n_0 -attr @rip(#000000) O[18] -attr @name duty_cycle_internal_i__2_n_0 -pin PWM_in_1|duty_cycle_internal_i__2 O[18] -pin PWM_in_1|duty_cycle_internal_i__3 I1[18] -pin PWM_in_1|duty_cycle_internal_i__4 I1[18]
load net PWM_in_1|duty_cycle_internal_i__2_n_1 -attr @rip(#000000) O[17] -attr @name duty_cycle_internal_i__2_n_1 -pin PWM_in_1|duty_cycle_internal_i__2 O[17] -pin PWM_in_1|duty_cycle_internal_i__3 I1[17] -pin PWM_in_1|duty_cycle_internal_i__4 I1[17]
load net PWM_in_1|duty_cycle_internal_i__2_n_10 -attr @rip(#000000) O[8] -attr @name duty_cycle_internal_i__2_n_10 -pin PWM_in_1|duty_cycle_internal_i__2 O[8] -pin PWM_in_1|duty_cycle_internal_i__3 I1[8] -pin PWM_in_1|duty_cycle_internal_i__4 I1[8]
load net PWM_in_1|duty_cycle_internal_i__2_n_11 -attr @rip(#000000) O[7] -attr @name duty_cycle_internal_i__2_n_11 -pin PWM_in_1|duty_cycle_internal_i__2 O[7] -pin PWM_in_1|duty_cycle_internal_i__3 I1[7] -pin PWM_in_1|duty_cycle_internal_i__4 I1[7]
load net PWM_in_1|duty_cycle_internal_i__2_n_12 -attr @rip(#000000) O[6] -attr @name duty_cycle_internal_i__2_n_12 -pin PWM_in_1|duty_cycle_internal_i__2 O[6] -pin PWM_in_1|duty_cycle_internal_i__3 I1[6] -pin PWM_in_1|duty_cycle_internal_i__4 I1[6]
load net PWM_in_1|duty_cycle_internal_i__2_n_13 -attr @rip(#000000) O[5] -attr @name duty_cycle_internal_i__2_n_13 -pin PWM_in_1|duty_cycle_internal_i__2 O[5] -pin PWM_in_1|duty_cycle_internal_i__3 I1[5] -pin PWM_in_1|duty_cycle_internal_i__4 I1[5]
load net PWM_in_1|duty_cycle_internal_i__2_n_14 -attr @rip(#000000) O[4] -attr @name duty_cycle_internal_i__2_n_14 -pin PWM_in_1|duty_cycle_internal_i__2 O[4] -pin PWM_in_1|duty_cycle_internal_i__3 I1[4] -pin PWM_in_1|duty_cycle_internal_i__4 I1[4]
load net PWM_in_1|duty_cycle_internal_i__2_n_15 -attr @rip(#000000) O[3] -attr @name duty_cycle_internal_i__2_n_15 -pin PWM_in_1|duty_cycle_internal_i__2 O[3] -pin PWM_in_1|duty_cycle_internal_i__3 I1[3] -pin PWM_in_1|duty_cycle_internal_i__4 I1[3]
load net PWM_in_1|duty_cycle_internal_i__2_n_16 -attr @rip(#000000) O[2] -attr @name duty_cycle_internal_i__2_n_16 -pin PWM_in_1|duty_cycle_internal_i__2 O[2] -pin PWM_in_1|duty_cycle_internal_i__3 I1[2] -pin PWM_in_1|duty_cycle_internal_i__4 I1[2]
load net PWM_in_1|duty_cycle_internal_i__2_n_17 -attr @rip(#000000) O[1] -attr @name duty_cycle_internal_i__2_n_17 -pin PWM_in_1|duty_cycle_internal_i__2 O[1] -pin PWM_in_1|duty_cycle_internal_i__3 I1[1] -pin PWM_in_1|duty_cycle_internal_i__4 I1[1]
load net PWM_in_1|duty_cycle_internal_i__2_n_18 -attr @rip(#000000) O[0] -attr @name duty_cycle_internal_i__2_n_18 -pin PWM_in_1|duty_cycle_internal_i__2 O[0] -pin PWM_in_1|duty_cycle_internal_i__3 I1[0] -pin PWM_in_1|duty_cycle_internal_i__4 I1[0]
load net PWM_in_1|duty_cycle_internal_i__2_n_2 -attr @rip(#000000) O[16] -attr @name duty_cycle_internal_i__2_n_2 -pin PWM_in_1|duty_cycle_internal_i__2 O[16] -pin PWM_in_1|duty_cycle_internal_i__3 I1[16] -pin PWM_in_1|duty_cycle_internal_i__4 I1[16]
load net PWM_in_1|duty_cycle_internal_i__2_n_3 -attr @rip(#000000) O[15] -attr @name duty_cycle_internal_i__2_n_3 -pin PWM_in_1|duty_cycle_internal_i__2 O[15] -pin PWM_in_1|duty_cycle_internal_i__3 I1[15] -pin PWM_in_1|duty_cycle_internal_i__4 I1[15]
load net PWM_in_1|duty_cycle_internal_i__2_n_4 -attr @rip(#000000) O[14] -attr @name duty_cycle_internal_i__2_n_4 -pin PWM_in_1|duty_cycle_internal_i__2 O[14] -pin PWM_in_1|duty_cycle_internal_i__3 I1[14] -pin PWM_in_1|duty_cycle_internal_i__4 I1[14]
load net PWM_in_1|duty_cycle_internal_i__2_n_5 -attr @rip(#000000) O[13] -attr @name duty_cycle_internal_i__2_n_5 -pin PWM_in_1|duty_cycle_internal_i__2 O[13] -pin PWM_in_1|duty_cycle_internal_i__3 I1[13] -pin PWM_in_1|duty_cycle_internal_i__4 I1[13]
load net PWM_in_1|duty_cycle_internal_i__2_n_6 -attr @rip(#000000) O[12] -attr @name duty_cycle_internal_i__2_n_6 -pin PWM_in_1|duty_cycle_internal_i__2 O[12] -pin PWM_in_1|duty_cycle_internal_i__3 I1[12] -pin PWM_in_1|duty_cycle_internal_i__4 I1[12]
load net PWM_in_1|duty_cycle_internal_i__2_n_7 -attr @rip(#000000) O[11] -attr @name duty_cycle_internal_i__2_n_7 -pin PWM_in_1|duty_cycle_internal_i__2 O[11] -pin PWM_in_1|duty_cycle_internal_i__3 I1[11] -pin PWM_in_1|duty_cycle_internal_i__4 I1[11]
load net PWM_in_1|duty_cycle_internal_i__2_n_8 -attr @rip(#000000) O[10] -attr @name duty_cycle_internal_i__2_n_8 -pin PWM_in_1|duty_cycle_internal_i__2 O[10] -pin PWM_in_1|duty_cycle_internal_i__3 I1[10] -pin PWM_in_1|duty_cycle_internal_i__4 I1[10]
load net PWM_in_1|duty_cycle_internal_i__2_n_9 -attr @rip(#000000) O[9] -attr @name duty_cycle_internal_i__2_n_9 -pin PWM_in_1|duty_cycle_internal_i__2 O[9] -pin PWM_in_1|duty_cycle_internal_i__3 I1[9] -pin PWM_in_1|duty_cycle_internal_i__4 I1[9]
load net PWM_in_1|duty_cycle_internal_i__3_n_0 -attr @rip(#000000) O[18] -attr @name duty_cycle_internal_i__3_n_0 -pin PWM_in_1|duty_cycle_internal_i__3 O[18] -pin PWM_in_1|duty_cycle_internal_i__4 I0[18]
load net PWM_in_1|duty_cycle_internal_i__3_n_1 -attr @rip(#000000) O[17] -attr @name duty_cycle_internal_i__3_n_1 -pin PWM_in_1|duty_cycle_internal_i__3 O[17] -pin PWM_in_1|duty_cycle_internal_i__4 I0[17]
load net PWM_in_1|duty_cycle_internal_i__3_n_10 -attr @rip(#000000) O[8] -attr @name duty_cycle_internal_i__3_n_10 -pin PWM_in_1|duty_cycle_internal_i__3 O[8] -pin PWM_in_1|duty_cycle_internal_i__4 I0[8]
load net PWM_in_1|duty_cycle_internal_i__3_n_11 -attr @rip(#000000) O[7] -attr @name duty_cycle_internal_i__3_n_11 -pin PWM_in_1|duty_cycle_internal_i__3 O[7] -pin PWM_in_1|duty_cycle_internal_i__4 I0[7]
load net PWM_in_1|duty_cycle_internal_i__3_n_12 -attr @rip(#000000) O[6] -attr @name duty_cycle_internal_i__3_n_12 -pin PWM_in_1|duty_cycle_internal_i__3 O[6] -pin PWM_in_1|duty_cycle_internal_i__4 I0[6]
load net PWM_in_1|duty_cycle_internal_i__3_n_13 -attr @rip(#000000) O[5] -attr @name duty_cycle_internal_i__3_n_13 -pin PWM_in_1|duty_cycle_internal_i__3 O[5] -pin PWM_in_1|duty_cycle_internal_i__4 I0[5]
load net PWM_in_1|duty_cycle_internal_i__3_n_14 -attr @rip(#000000) O[4] -attr @name duty_cycle_internal_i__3_n_14 -pin PWM_in_1|duty_cycle_internal_i__3 O[4] -pin PWM_in_1|duty_cycle_internal_i__4 I0[4]
load net PWM_in_1|duty_cycle_internal_i__3_n_15 -attr @rip(#000000) O[3] -attr @name duty_cycle_internal_i__3_n_15 -pin PWM_in_1|duty_cycle_internal_i__3 O[3] -pin PWM_in_1|duty_cycle_internal_i__4 I0[3]
load net PWM_in_1|duty_cycle_internal_i__3_n_16 -attr @rip(#000000) O[2] -attr @name duty_cycle_internal_i__3_n_16 -pin PWM_in_1|duty_cycle_internal_i__3 O[2] -pin PWM_in_1|duty_cycle_internal_i__4 I0[2]
load net PWM_in_1|duty_cycle_internal_i__3_n_17 -attr @rip(#000000) O[1] -attr @name duty_cycle_internal_i__3_n_17 -pin PWM_in_1|duty_cycle_internal_i__3 O[1] -pin PWM_in_1|duty_cycle_internal_i__4 I0[1]
load net PWM_in_1|duty_cycle_internal_i__3_n_18 -attr @rip(#000000) O[0] -attr @name duty_cycle_internal_i__3_n_18 -pin PWM_in_1|duty_cycle_internal_i__3 O[0] -pin PWM_in_1|duty_cycle_internal_i__4 I0[0]
load net PWM_in_1|duty_cycle_internal_i__3_n_2 -attr @rip(#000000) O[16] -attr @name duty_cycle_internal_i__3_n_2 -pin PWM_in_1|duty_cycle_internal_i__3 O[16] -pin PWM_in_1|duty_cycle_internal_i__4 I0[16]
load net PWM_in_1|duty_cycle_internal_i__3_n_3 -attr @rip(#000000) O[15] -attr @name duty_cycle_internal_i__3_n_3 -pin PWM_in_1|duty_cycle_internal_i__3 O[15] -pin PWM_in_1|duty_cycle_internal_i__4 I0[15]
load net PWM_in_1|duty_cycle_internal_i__3_n_4 -attr @rip(#000000) O[14] -attr @name duty_cycle_internal_i__3_n_4 -pin PWM_in_1|duty_cycle_internal_i__3 O[14] -pin PWM_in_1|duty_cycle_internal_i__4 I0[14]
load net PWM_in_1|duty_cycle_internal_i__3_n_5 -attr @rip(#000000) O[13] -attr @name duty_cycle_internal_i__3_n_5 -pin PWM_in_1|duty_cycle_internal_i__3 O[13] -pin PWM_in_1|duty_cycle_internal_i__4 I0[13]
load net PWM_in_1|duty_cycle_internal_i__3_n_6 -attr @rip(#000000) O[12] -attr @name duty_cycle_internal_i__3_n_6 -pin PWM_in_1|duty_cycle_internal_i__3 O[12] -pin PWM_in_1|duty_cycle_internal_i__4 I0[12]
load net PWM_in_1|duty_cycle_internal_i__3_n_7 -attr @rip(#000000) O[11] -attr @name duty_cycle_internal_i__3_n_7 -pin PWM_in_1|duty_cycle_internal_i__3 O[11] -pin PWM_in_1|duty_cycle_internal_i__4 I0[11]
load net PWM_in_1|duty_cycle_internal_i__3_n_8 -attr @rip(#000000) O[10] -attr @name duty_cycle_internal_i__3_n_8 -pin PWM_in_1|duty_cycle_internal_i__3 O[10] -pin PWM_in_1|duty_cycle_internal_i__4 I0[10]
load net PWM_in_1|duty_cycle_internal_i__3_n_9 -attr @rip(#000000) O[9] -attr @name duty_cycle_internal_i__3_n_9 -pin PWM_in_1|duty_cycle_internal_i__3 O[9] -pin PWM_in_1|duty_cycle_internal_i__4 I0[9]
load net PWM_in_1|duty_cycle_internal_i__5_n_0 -attr @name duty_cycle_internal_i__5_n_0 -pin PWM_in_1|duty_cycle_internal_i__5 O -pin PWM_in_1|duty_cycle_internal_i__6 I1 -pin PWM_in_1|duty_cycle_internal_i__7 I1
netloc PWM_in_1|duty_cycle_internal_i__5_n_0 1 11 2 3910 938 NJ
load net PWM_in_1|duty_cycle_internal_i__6_n_0 -attr @name duty_cycle_internal_i__6_n_0 -pin PWM_in_1|duty_cycle_internal_i__6 O -pin PWM_in_1|duty_cycle_internal_i__7 I0
netloc PWM_in_1|duty_cycle_internal_i__6_n_0 1 12 1 4290 918n
load net PWM_in_1|duty_cycle_internal_i__7_n_0 -attr @name duty_cycle_internal_i__7_n_0 -pin PWM_in_1|duty_cycle_internal_i__7 O -pin PWM_in_1|duty_cycle_internal_i__8 I1 -pin PWM_in_1|duty_cycle_internal_i__9 I1
netloc PWM_in_1|duty_cycle_internal_i__7_n_0 1 13 2 4830 998 5230J
load net PWM_in_1|duty_cycle_internal_i__8_n_0 -attr @name duty_cycle_internal_i__8_n_0 -pin PWM_in_1|duty_cycle_internal_i__8 O -pin PWM_in_1|duty_cycle_internal_i__9 I0
netloc PWM_in_1|duty_cycle_internal_i__8_n_0 1 14 1 5170 858n
load net PWM_in_1|duty_cycle_internal_i__9_n_0 -attr @name duty_cycle_internal_i__9_n_0 -pin PWM_in_1|duty_cycle_internal_i__10 I1 -pin PWM_in_1|duty_cycle_internal_i__11 I1 -pin PWM_in_1|duty_cycle_internal_i__9 O
netloc PWM_in_1|duty_cycle_internal_i__9_n_0 1 15 2 5570 808 N
load net PWM_in_1|duty_cycle_internal_i_n_0 -attr @rip(#000000) O[18] -attr @name duty_cycle_internal_i_n_0 -pin PWM_in_1|duty_cycle_internal_i O[18] -pin PWM_in_1|duty_cycle_internal_i__0 I0[18]
load net PWM_in_1|duty_cycle_internal_i_n_1 -attr @rip(#000000) O[17] -attr @name duty_cycle_internal_i_n_1 -pin PWM_in_1|duty_cycle_internal_i O[17] -pin PWM_in_1|duty_cycle_internal_i__0 I0[17]
load net PWM_in_1|duty_cycle_internal_i_n_10 -attr @rip(#000000) O[8] -attr @name duty_cycle_internal_i_n_10 -pin PWM_in_1|duty_cycle_internal_i O[8] -pin PWM_in_1|duty_cycle_internal_i__0 I0[8]
load net PWM_in_1|duty_cycle_internal_i_n_11 -attr @rip(#000000) O[7] -attr @name duty_cycle_internal_i_n_11 -pin PWM_in_1|duty_cycle_internal_i O[7] -pin PWM_in_1|duty_cycle_internal_i__0 I0[7]
load net PWM_in_1|duty_cycle_internal_i_n_12 -attr @rip(#000000) O[6] -attr @name duty_cycle_internal_i_n_12 -pin PWM_in_1|duty_cycle_internal_i O[6] -pin PWM_in_1|duty_cycle_internal_i__0 I0[6]
load net PWM_in_1|duty_cycle_internal_i_n_13 -attr @rip(#000000) O[5] -attr @name duty_cycle_internal_i_n_13 -pin PWM_in_1|duty_cycle_internal_i O[5] -pin PWM_in_1|duty_cycle_internal_i__0 I0[5]
load net PWM_in_1|duty_cycle_internal_i_n_14 -attr @rip(#000000) O[4] -attr @name duty_cycle_internal_i_n_14 -pin PWM_in_1|duty_cycle_internal_i O[4] -pin PWM_in_1|duty_cycle_internal_i__0 I0[4]
load net PWM_in_1|duty_cycle_internal_i_n_15 -attr @rip(#000000) O[3] -attr @name duty_cycle_internal_i_n_15 -pin PWM_in_1|duty_cycle_internal_i O[3] -pin PWM_in_1|duty_cycle_internal_i__0 I0[3]
load net PWM_in_1|duty_cycle_internal_i_n_16 -attr @rip(#000000) O[2] -attr @name duty_cycle_internal_i_n_16 -pin PWM_in_1|duty_cycle_internal_i O[2] -pin PWM_in_1|duty_cycle_internal_i__0 I0[2]
load net PWM_in_1|duty_cycle_internal_i_n_17 -attr @rip(#000000) O[1] -attr @name duty_cycle_internal_i_n_17 -pin PWM_in_1|duty_cycle_internal_i O[1] -pin PWM_in_1|duty_cycle_internal_i__0 I0[1]
load net PWM_in_1|duty_cycle_internal_i_n_18 -attr @rip(#000000) O[0] -attr @name duty_cycle_internal_i_n_18 -pin PWM_in_1|duty_cycle_internal_i O[0] -pin PWM_in_1|duty_cycle_internal_i__0 I0[0]
load net PWM_in_1|duty_cycle_internal_i_n_2 -attr @rip(#000000) O[16] -attr @name duty_cycle_internal_i_n_2 -pin PWM_in_1|duty_cycle_internal_i O[16] -pin PWM_in_1|duty_cycle_internal_i__0 I0[16]
load net PWM_in_1|duty_cycle_internal_i_n_3 -attr @rip(#000000) O[15] -attr @name duty_cycle_internal_i_n_3 -pin PWM_in_1|duty_cycle_internal_i O[15] -pin PWM_in_1|duty_cycle_internal_i__0 I0[15]
load net PWM_in_1|duty_cycle_internal_i_n_4 -attr @rip(#000000) O[14] -attr @name duty_cycle_internal_i_n_4 -pin PWM_in_1|duty_cycle_internal_i O[14] -pin PWM_in_1|duty_cycle_internal_i__0 I0[14]
load net PWM_in_1|duty_cycle_internal_i_n_5 -attr @rip(#000000) O[13] -attr @name duty_cycle_internal_i_n_5 -pin PWM_in_1|duty_cycle_internal_i O[13] -pin PWM_in_1|duty_cycle_internal_i__0 I0[13]
load net PWM_in_1|duty_cycle_internal_i_n_6 -attr @rip(#000000) O[12] -attr @name duty_cycle_internal_i_n_6 -pin PWM_in_1|duty_cycle_internal_i O[12] -pin PWM_in_1|duty_cycle_internal_i__0 I0[12]
load net PWM_in_1|duty_cycle_internal_i_n_7 -attr @rip(#000000) O[11] -attr @name duty_cycle_internal_i_n_7 -pin PWM_in_1|duty_cycle_internal_i O[11] -pin PWM_in_1|duty_cycle_internal_i__0 I0[11]
load net PWM_in_1|duty_cycle_internal_i_n_8 -attr @rip(#000000) O[10] -attr @name duty_cycle_internal_i_n_8 -pin PWM_in_1|duty_cycle_internal_i O[10] -pin PWM_in_1|duty_cycle_internal_i__0 I0[10]
load net PWM_in_1|duty_cycle_internal_i_n_9 -attr @rip(#000000) O[9] -attr @name duty_cycle_internal_i_n_9 -pin PWM_in_1|duty_cycle_internal_i O[9] -pin PWM_in_1|duty_cycle_internal_i__0 I0[9]
load net PWM_in_1|hundreds_out0[0] -attr @rip(#000000) O[0] -attr @name hundreds_out0[0] -pin PWM_in_1|hundreds_out0_i O[0] -pin PWM_in_1|hundreds_out_i I0[0]
load net PWM_in_1|hundreds_out0[1] -attr @rip(#000000) O[1] -attr @name hundreds_out0[1] -pin PWM_in_1|hundreds_out0_i O[1] -pin PWM_in_1|hundreds_out_i I0[1]
load net PWM_in_1|hundreds_out0[2] -attr @rip(#000000) O[2] -attr @name hundreds_out0[2] -pin PWM_in_1|hundreds_out0_i O[2] -pin PWM_in_1|hundreds_out_i I0[2]
load net PWM_in_1|hundreds_out0[3] -attr @rip(#000000) O[3] -attr @name hundreds_out0[3] -pin PWM_in_1|hundreds_out0_i O[3] -pin PWM_in_1|hundreds_out_i I0[3]
load net PWM_in_1|hundreds_out0[4] -attr @rip(#000000) O[4] -attr @name hundreds_out0[4] -pin PWM_in_1|hundreds_out0_i O[4] -pin PWM_in_1|hundreds_out_i I0[4]
load net PWM_in_1|hundreds_out0[5] -attr @rip(#000000) O[5] -attr @name hundreds_out0[5] -pin PWM_in_1|hundreds_out0_i O[5] -pin PWM_in_1|hundreds_out_i I0[5]
load net PWM_in_1|hundreds_out0[6] -attr @rip(#000000) O[6] -attr @name hundreds_out0[6] -pin PWM_in_1|hundreds_out0_i O[6] -pin PWM_in_1|hundreds_out_i I0[6]
load net PWM_in_1|hundreds_out0[7] -attr @rip(#000000) O[7] -attr @name hundreds_out0[7] -pin PWM_in_1|hundreds_out0_i O[7] -pin PWM_in_1|hundreds_out_i I0[7]
load net PWM_in_1|hundreds_out0[8] -attr @rip(#000000) O[8] -attr @name hundreds_out0[8] -pin PWM_in_1|hundreds_out0_i O[8] -pin PWM_in_1|hundreds_out_i I0[8]
load net PWM_in_1|hundreds_out[0] -attr @rip(#000000) O[0] -attr @name hundreds_out[0] -hierPin PWM_in_1 hundreds_out[0] -pin PWM_in_1|hundreds_out_i O[0]
load net PWM_in_1|hundreds_out[1] -attr @rip(#000000) O[1] -attr @name hundreds_out[1] -hierPin PWM_in_1 hundreds_out[1] -pin PWM_in_1|hundreds_out_i O[1]
load net PWM_in_1|hundreds_out[2] -attr @rip(#000000) O[2] -attr @name hundreds_out[2] -hierPin PWM_in_1 hundreds_out[2] -pin PWM_in_1|hundreds_out_i O[2]
load net PWM_in_1|hundreds_out[3] -attr @rip(#000000) O[3] -attr @name hundreds_out[3] -hierPin PWM_in_1 hundreds_out[3] -pin PWM_in_1|hundreds_out_i O[3]
load net PWM_in_1|minusOp[0] -attr @rip(#000000) O[0] -attr @name minusOp[0] -pin PWM_in_1|duty_cycle_internal_i I0[0] -pin PWM_in_1|minusOp_i__0 O[0]
load net PWM_in_1|minusOp[10] -attr @rip(#000000) O[10] -attr @name minusOp[10] -pin PWM_in_1|duty_cycle_internal_i I0[10] -pin PWM_in_1|minusOp_i__0 O[10]
load net PWM_in_1|minusOp[11] -attr @rip(#000000) O[11] -attr @name minusOp[11] -pin PWM_in_1|duty_cycle_internal_i I0[11] -pin PWM_in_1|minusOp_i__0 O[11]
load net PWM_in_1|minusOp[12] -attr @rip(#000000) O[12] -attr @name minusOp[12] -pin PWM_in_1|duty_cycle_internal_i I0[12] -pin PWM_in_1|minusOp_i__0 O[12]
load net PWM_in_1|minusOp[13] -attr @rip(#000000) O[13] -attr @name minusOp[13] -pin PWM_in_1|duty_cycle_internal_i I0[13] -pin PWM_in_1|minusOp_i__0 O[13]
load net PWM_in_1|minusOp[14] -attr @rip(#000000) O[14] -attr @name minusOp[14] -pin PWM_in_1|duty_cycle_internal_i I0[14] -pin PWM_in_1|minusOp_i__0 O[14]
load net PWM_in_1|minusOp[15] -attr @rip(#000000) O[15] -attr @name minusOp[15] -pin PWM_in_1|duty_cycle_internal_i I0[15] -pin PWM_in_1|minusOp_i__0 O[15]
load net PWM_in_1|minusOp[16] -attr @rip(#000000) O[16] -attr @name minusOp[16] -pin PWM_in_1|duty_cycle_internal_i I0[16] -pin PWM_in_1|minusOp_i__0 O[16]
load net PWM_in_1|minusOp[17] -attr @rip(#000000) O[17] -attr @name minusOp[17] -pin PWM_in_1|duty_cycle_internal_i I0[17] -pin PWM_in_1|minusOp_i__0 O[17]
load net PWM_in_1|minusOp[18] -attr @rip(#000000) O[18] -attr @name minusOp[18] -pin PWM_in_1|duty_cycle_internal_i I0[18] -pin PWM_in_1|minusOp_i__0 O[18]
load net PWM_in_1|minusOp[1] -attr @rip(#000000) O[1] -attr @name minusOp[1] -pin PWM_in_1|duty_cycle_internal_i I0[1] -pin PWM_in_1|minusOp_i__0 O[1]
load net PWM_in_1|minusOp[2] -attr @rip(#000000) O[2] -attr @name minusOp[2] -pin PWM_in_1|duty_cycle_internal_i I0[2] -pin PWM_in_1|minusOp_i__0 O[2]
load net PWM_in_1|minusOp[3] -attr @rip(#000000) O[3] -attr @name minusOp[3] -pin PWM_in_1|duty_cycle_internal_i I0[3] -pin PWM_in_1|minusOp_i__0 O[3]
load net PWM_in_1|minusOp[4] -attr @rip(#000000) O[4] -attr @name minusOp[4] -pin PWM_in_1|duty_cycle_internal_i I0[4] -pin PWM_in_1|minusOp_i__0 O[4]
load net PWM_in_1|minusOp[5] -attr @rip(#000000) O[5] -attr @name minusOp[5] -pin PWM_in_1|duty_cycle_internal_i I0[5] -pin PWM_in_1|minusOp_i__0 O[5]
load net PWM_in_1|minusOp[6] -attr @rip(#000000) O[6] -attr @name minusOp[6] -pin PWM_in_1|duty_cycle_internal_i I0[6] -pin PWM_in_1|minusOp_i__0 O[6]
load net PWM_in_1|minusOp[7] -attr @rip(#000000) O[7] -attr @name minusOp[7] -pin PWM_in_1|duty_cycle_internal_i I0[7] -pin PWM_in_1|minusOp_i__0 O[7]
load net PWM_in_1|minusOp[8] -attr @rip(#000000) O[8] -attr @name minusOp[8] -pin PWM_in_1|duty_cycle_internal_i I0[8] -pin PWM_in_1|minusOp_i__0 O[8]
load net PWM_in_1|minusOp[9] -attr @rip(#000000) O[9] -attr @name minusOp[9] -pin PWM_in_1|duty_cycle_internal_i I0[9] -pin PWM_in_1|minusOp_i__0 O[9]
load net PWM_in_1|minusOp_i_n_0 -attr @rip(#000000) O[18] -attr @name minusOp_i_n_0 -pin PWM_in_1|duty_cycle_internal_i__3 I0[18] -pin PWM_in_1|minusOp_i O[18]
load net PWM_in_1|minusOp_i_n_1 -attr @rip(#000000) O[17] -attr @name minusOp_i_n_1 -pin PWM_in_1|duty_cycle_internal_i__3 I0[17] -pin PWM_in_1|minusOp_i O[17]
load net PWM_in_1|minusOp_i_n_10 -attr @rip(#000000) O[8] -attr @name minusOp_i_n_10 -pin PWM_in_1|duty_cycle_internal_i__3 I0[8] -pin PWM_in_1|minusOp_i O[8]
load net PWM_in_1|minusOp_i_n_11 -attr @rip(#000000) O[7] -attr @name minusOp_i_n_11 -pin PWM_in_1|duty_cycle_internal_i__3 I0[7] -pin PWM_in_1|minusOp_i O[7]
load net PWM_in_1|minusOp_i_n_12 -attr @rip(#000000) O[6] -attr @name minusOp_i_n_12 -pin PWM_in_1|duty_cycle_internal_i__3 I0[6] -pin PWM_in_1|minusOp_i O[6]
load net PWM_in_1|minusOp_i_n_13 -attr @rip(#000000) O[5] -attr @name minusOp_i_n_13 -pin PWM_in_1|duty_cycle_internal_i__3 I0[5] -pin PWM_in_1|minusOp_i O[5]
load net PWM_in_1|minusOp_i_n_14 -attr @rip(#000000) O[4] -attr @name minusOp_i_n_14 -pin PWM_in_1|duty_cycle_internal_i__3 I0[4] -pin PWM_in_1|minusOp_i O[4]
load net PWM_in_1|minusOp_i_n_15 -attr @rip(#000000) O[3] -attr @name minusOp_i_n_15 -pin PWM_in_1|duty_cycle_internal_i__3 I0[3] -pin PWM_in_1|minusOp_i O[3]
load net PWM_in_1|minusOp_i_n_16 -attr @rip(#000000) O[2] -attr @name minusOp_i_n_16 -pin PWM_in_1|duty_cycle_internal_i__3 I0[2] -pin PWM_in_1|minusOp_i O[2]
load net PWM_in_1|minusOp_i_n_17 -attr @rip(#000000) O[1] -attr @name minusOp_i_n_17 -pin PWM_in_1|duty_cycle_internal_i__3 I0[1] -pin PWM_in_1|minusOp_i O[1]
load net PWM_in_1|minusOp_i_n_18 -attr @rip(#000000) O[0] -attr @name minusOp_i_n_18 -pin PWM_in_1|duty_cycle_internal_i__3 I0[0] -pin PWM_in_1|minusOp_i O[0]
load net PWM_in_1|minusOp_i_n_2 -attr @rip(#000000) O[16] -attr @name minusOp_i_n_2 -pin PWM_in_1|duty_cycle_internal_i__3 I0[16] -pin PWM_in_1|minusOp_i O[16]
load net PWM_in_1|minusOp_i_n_3 -attr @rip(#000000) O[15] -attr @name minusOp_i_n_3 -pin PWM_in_1|duty_cycle_internal_i__3 I0[15] -pin PWM_in_1|minusOp_i O[15]
load net PWM_in_1|minusOp_i_n_4 -attr @rip(#000000) O[14] -attr @name minusOp_i_n_4 -pin PWM_in_1|duty_cycle_internal_i__3 I0[14] -pin PWM_in_1|minusOp_i O[14]
load net PWM_in_1|minusOp_i_n_5 -attr @rip(#000000) O[13] -attr @name minusOp_i_n_5 -pin PWM_in_1|duty_cycle_internal_i__3 I0[13] -pin PWM_in_1|minusOp_i O[13]
load net PWM_in_1|minusOp_i_n_6 -attr @rip(#000000) O[12] -attr @name minusOp_i_n_6 -pin PWM_in_1|duty_cycle_internal_i__3 I0[12] -pin PWM_in_1|minusOp_i O[12]
load net PWM_in_1|minusOp_i_n_7 -attr @rip(#000000) O[11] -attr @name minusOp_i_n_7 -pin PWM_in_1|duty_cycle_internal_i__3 I0[11] -pin PWM_in_1|minusOp_i O[11]
load net PWM_in_1|minusOp_i_n_8 -attr @rip(#000000) O[10] -attr @name minusOp_i_n_8 -pin PWM_in_1|duty_cycle_internal_i__3 I0[10] -pin PWM_in_1|minusOp_i O[10]
load net PWM_in_1|minusOp_i_n_9 -attr @rip(#000000) O[9] -attr @name minusOp_i_n_9 -pin PWM_in_1|duty_cycle_internal_i__3 I0[9] -pin PWM_in_1|minusOp_i O[9]
load net PWM_in_1|multOp[0] -attr @rip(#000000) O[0] -attr @name multOp[0] -pin PWM_in_1|multOp_i O[0] -pin PWM_in_1|temp_duty_precent_i I0[0]
load net PWM_in_1|multOp[10] -attr @rip(#000000) O[10] -attr @name multOp[10] -pin PWM_in_1|multOp_i O[10] -pin PWM_in_1|temp_duty_precent_i I0[10]
load net PWM_in_1|multOp[11] -attr @rip(#000000) O[11] -attr @name multOp[11] -pin PWM_in_1|multOp_i O[11] -pin PWM_in_1|temp_duty_precent_i I0[11]
load net PWM_in_1|multOp[12] -attr @rip(#000000) O[12] -attr @name multOp[12] -pin PWM_in_1|multOp_i O[12] -pin PWM_in_1|temp_duty_precent_i I0[12]
load net PWM_in_1|multOp[13] -attr @rip(#000000) O[13] -attr @name multOp[13] -pin PWM_in_1|multOp_i O[13] -pin PWM_in_1|temp_duty_precent_i I0[13]
load net PWM_in_1|multOp[14] -attr @rip(#000000) O[14] -attr @name multOp[14] -pin PWM_in_1|multOp_i O[14] -pin PWM_in_1|temp_duty_precent_i I0[14]
load net PWM_in_1|multOp[15] -attr @rip(#000000) O[15] -attr @name multOp[15] -pin PWM_in_1|multOp_i O[15] -pin PWM_in_1|temp_duty_precent_i I0[15]
load net PWM_in_1|multOp[16] -attr @rip(#000000) O[16] -attr @name multOp[16] -pin PWM_in_1|multOp_i O[16] -pin PWM_in_1|temp_duty_precent_i I0[16]
load net PWM_in_1|multOp[17] -attr @rip(#000000) O[17] -attr @name multOp[17] -pin PWM_in_1|multOp_i O[17] -pin PWM_in_1|temp_duty_precent_i I0[17]
load net PWM_in_1|multOp[18] -attr @rip(#000000) O[18] -attr @name multOp[18] -pin PWM_in_1|multOp_i O[18] -pin PWM_in_1|temp_duty_precent_i I0[18]
load net PWM_in_1|multOp[19] -attr @rip(#000000) O[19] -attr @name multOp[19] -pin PWM_in_1|multOp_i O[19] -pin PWM_in_1|temp_duty_precent_i I0[19]
load net PWM_in_1|multOp[1] -attr @rip(#000000) O[1] -attr @name multOp[1] -pin PWM_in_1|multOp_i O[1] -pin PWM_in_1|temp_duty_precent_i I0[1]
load net PWM_in_1|multOp[20] -attr @rip(#000000) O[20] -attr @name multOp[20] -pin PWM_in_1|multOp_i O[20] -pin PWM_in_1|temp_duty_precent_i I0[20]
load net PWM_in_1|multOp[21] -attr @rip(#000000) O[21] -attr @name multOp[21] -pin PWM_in_1|multOp_i O[21] -pin PWM_in_1|temp_duty_precent_i I0[21]
load net PWM_in_1|multOp[22] -attr @rip(#000000) O[22] -attr @name multOp[22] -pin PWM_in_1|multOp_i O[22] -pin PWM_in_1|temp_duty_precent_i I0[22]
load net PWM_in_1|multOp[23] -attr @rip(#000000) O[23] -attr @name multOp[23] -pin PWM_in_1|multOp_i O[23] -pin PWM_in_1|temp_duty_precent_i I0[23]
load net PWM_in_1|multOp[24] -attr @rip(#000000) O[24] -attr @name multOp[24] -pin PWM_in_1|multOp_i O[24] -pin PWM_in_1|temp_duty_precent_i I0[24]
load net PWM_in_1|multOp[25] -attr @rip(#000000) O[25] -attr @name multOp[25] -pin PWM_in_1|multOp_i O[25] -pin PWM_in_1|temp_duty_precent_i I0[25]
load net PWM_in_1|multOp[2] -attr @rip(#000000) O[2] -attr @name multOp[2] -pin PWM_in_1|multOp_i O[2] -pin PWM_in_1|temp_duty_precent_i I0[2]
load net PWM_in_1|multOp[3] -attr @rip(#000000) O[3] -attr @name multOp[3] -pin PWM_in_1|multOp_i O[3] -pin PWM_in_1|temp_duty_precent_i I0[3]
load net PWM_in_1|multOp[4] -attr @rip(#000000) O[4] -attr @name multOp[4] -pin PWM_in_1|multOp_i O[4] -pin PWM_in_1|temp_duty_precent_i I0[4]
load net PWM_in_1|multOp[5] -attr @rip(#000000) O[5] -attr @name multOp[5] -pin PWM_in_1|multOp_i O[5] -pin PWM_in_1|temp_duty_precent_i I0[5]
load net PWM_in_1|multOp[6] -attr @rip(#000000) O[6] -attr @name multOp[6] -pin PWM_in_1|multOp_i O[6] -pin PWM_in_1|temp_duty_precent_i I0[6]
load net PWM_in_1|multOp[7] -attr @rip(#000000) O[7] -attr @name multOp[7] -pin PWM_in_1|multOp_i O[7] -pin PWM_in_1|temp_duty_precent_i I0[7]
load net PWM_in_1|multOp[8] -attr @rip(#000000) O[8] -attr @name multOp[8] -pin PWM_in_1|multOp_i O[8] -pin PWM_in_1|temp_duty_precent_i I0[8]
load net PWM_in_1|multOp[9] -attr @rip(#000000) O[9] -attr @name multOp[9] -pin PWM_in_1|multOp_i O[9] -pin PWM_in_1|temp_duty_precent_i I0[9]
load net PWM_in_1|ones_out[0] -attr @rip(#000000) O[0] -attr @name ones_out[0] -hierPin PWM_in_1 ones_out[0] -pin PWM_in_1|ones_out0_i O[0]
load net PWM_in_1|ones_out[1] -attr @rip(#000000) O[1] -attr @name ones_out[1] -hierPin PWM_in_1 ones_out[1] -pin PWM_in_1|ones_out0_i O[1]
load net PWM_in_1|ones_out[2] -attr @rip(#000000) O[2] -attr @name ones_out[2] -hierPin PWM_in_1 ones_out[2] -pin PWM_in_1|ones_out0_i O[2]
load net PWM_in_1|ones_out[3] -attr @rip(#000000) O[3] -attr @name ones_out[3] -hierPin PWM_in_1 ones_out[3] -pin PWM_in_1|ones_out0_i O[3]
load net PWM_in_1|p_0_in -attr @name p_0_in -pin PWM_in_1|accelerating_counter1_i__0 I1 -pin PWM_in_1|accelerating_counter2_i__0 I1 -pin PWM_in_1|accelerating_counter3_i__0 O
netloc PWM_in_1|p_0_in 1 6 1 1990 428n
load net PWM_in_1|p_1_in -attr @name p_1_in -pin PWM_in_1|accelerating_counter1_i__0 I0 -pin PWM_in_1|accelerating_counter2_i I1 -pin PWM_in_1|accelerating_counter3_i O
netloc PWM_in_1|p_1_in 1 6 1 1970 408n
load net PWM_in_1|plusOp[0] -attr @rip(#000000) O[0] -attr @name plusOp[0] -pin PWM_in_1|duty_cycle_internal_i I1[0] -pin PWM_in_1|duty_cycle_internal_i__0 I1[0] -pin PWM_in_1|plusOp_i__0 O[0]
load net PWM_in_1|plusOp[10] -attr @rip(#000000) O[10] -attr @name plusOp[10] -pin PWM_in_1|duty_cycle_internal_i I1[10] -pin PWM_in_1|duty_cycle_internal_i__0 I1[10] -pin PWM_in_1|plusOp_i__0 O[10]
load net PWM_in_1|plusOp[11] -attr @rip(#000000) O[11] -attr @name plusOp[11] -pin PWM_in_1|duty_cycle_internal_i I1[11] -pin PWM_in_1|duty_cycle_internal_i__0 I1[11] -pin PWM_in_1|plusOp_i__0 O[11]
load net PWM_in_1|plusOp[12] -attr @rip(#000000) O[12] -attr @name plusOp[12] -pin PWM_in_1|duty_cycle_internal_i I1[12] -pin PWM_in_1|duty_cycle_internal_i__0 I1[12] -pin PWM_in_1|plusOp_i__0 O[12]
load net PWM_in_1|plusOp[13] -attr @rip(#000000) O[13] -attr @name plusOp[13] -pin PWM_in_1|duty_cycle_internal_i I1[13] -pin PWM_in_1|duty_cycle_internal_i__0 I1[13] -pin PWM_in_1|plusOp_i__0 O[13]
load net PWM_in_1|plusOp[14] -attr @rip(#000000) O[14] -attr @name plusOp[14] -pin PWM_in_1|duty_cycle_internal_i I1[14] -pin PWM_in_1|duty_cycle_internal_i__0 I1[14] -pin PWM_in_1|plusOp_i__0 O[14]
load net PWM_in_1|plusOp[15] -attr @rip(#000000) O[15] -attr @name plusOp[15] -pin PWM_in_1|duty_cycle_internal_i I1[15] -pin PWM_in_1|duty_cycle_internal_i__0 I1[15] -pin PWM_in_1|plusOp_i__0 O[15]
load net PWM_in_1|plusOp[16] -attr @rip(#000000) O[16] -attr @name plusOp[16] -pin PWM_in_1|duty_cycle_internal_i I1[16] -pin PWM_in_1|duty_cycle_internal_i__0 I1[16] -pin PWM_in_1|plusOp_i__0 O[16]
load net PWM_in_1|plusOp[17] -attr @rip(#000000) O[17] -attr @name plusOp[17] -pin PWM_in_1|duty_cycle_internal_i I1[17] -pin PWM_in_1|duty_cycle_internal_i__0 I1[17] -pin PWM_in_1|plusOp_i__0 O[17]
load net PWM_in_1|plusOp[1] -attr @rip(#000000) O[1] -attr @name plusOp[1] -pin PWM_in_1|duty_cycle_internal_i I1[1] -pin PWM_in_1|duty_cycle_internal_i__0 I1[1] -pin PWM_in_1|plusOp_i__0 O[1]
load net PWM_in_1|plusOp[2] -attr @rip(#000000) O[2] -attr @name plusOp[2] -pin PWM_in_1|duty_cycle_internal_i I1[2] -pin PWM_in_1|duty_cycle_internal_i__0 I1[2] -pin PWM_in_1|plusOp_i__0 O[2]
load net PWM_in_1|plusOp[3] -attr @rip(#000000) O[3] -attr @name plusOp[3] -pin PWM_in_1|duty_cycle_internal_i I1[3] -pin PWM_in_1|duty_cycle_internal_i__0 I1[3] -pin PWM_in_1|plusOp_i__0 O[3]
load net PWM_in_1|plusOp[4] -attr @rip(#000000) O[4] -attr @name plusOp[4] -pin PWM_in_1|duty_cycle_internal_i I1[4] -pin PWM_in_1|duty_cycle_internal_i__0 I1[4] -pin PWM_in_1|plusOp_i__0 O[4]
load net PWM_in_1|plusOp[5] -attr @rip(#000000) O[5] -attr @name plusOp[5] -pin PWM_in_1|duty_cycle_internal_i I1[5] -pin PWM_in_1|duty_cycle_internal_i__0 I1[5] -pin PWM_in_1|plusOp_i__0 O[5]
load net PWM_in_1|plusOp[6] -attr @rip(#000000) O[6] -attr @name plusOp[6] -pin PWM_in_1|duty_cycle_internal_i I1[6] -pin PWM_in_1|duty_cycle_internal_i__0 I1[6] -pin PWM_in_1|plusOp_i__0 O[6]
load net PWM_in_1|plusOp[7] -attr @rip(#000000) O[7] -attr @name plusOp[7] -pin PWM_in_1|duty_cycle_internal_i I1[7] -pin PWM_in_1|duty_cycle_internal_i__0 I1[7] -pin PWM_in_1|plusOp_i__0 O[7]
load net PWM_in_1|plusOp[8] -attr @rip(#000000) O[8] -attr @name plusOp[8] -pin PWM_in_1|duty_cycle_internal_i I1[8] -pin PWM_in_1|duty_cycle_internal_i__0 I1[8] -pin PWM_in_1|plusOp_i__0 O[8]
load net PWM_in_1|plusOp[9] -attr @rip(#000000) O[9] -attr @name plusOp[9] -pin PWM_in_1|duty_cycle_internal_i I1[9] -pin PWM_in_1|duty_cycle_internal_i__0 I1[9] -pin PWM_in_1|plusOp_i__0 O[9]
load net PWM_in_1|plusOp_i__1_n_0 -attr @rip(#000000) O[23] -attr @name plusOp_i__1_n_0 -pin PWM_in_1|accelerating_counter_i I0[23] -pin PWM_in_1|plusOp_i__1 O[23]
load net PWM_in_1|plusOp_i__1_n_1 -attr @rip(#000000) O[22] -attr @name plusOp_i__1_n_1 -pin PWM_in_1|accelerating_counter_i I0[22] -pin PWM_in_1|plusOp_i__1 O[22]
load net PWM_in_1|plusOp_i__1_n_10 -attr @rip(#000000) O[13] -attr @name plusOp_i__1_n_10 -pin PWM_in_1|accelerating_counter_i I0[13] -pin PWM_in_1|plusOp_i__1 O[13]
load net PWM_in_1|plusOp_i__1_n_11 -attr @rip(#000000) O[12] -attr @name plusOp_i__1_n_11 -pin PWM_in_1|accelerating_counter_i I0[12] -pin PWM_in_1|plusOp_i__1 O[12]
load net PWM_in_1|plusOp_i__1_n_12 -attr @rip(#000000) O[11] -attr @name plusOp_i__1_n_12 -pin PWM_in_1|accelerating_counter_i I0[11] -pin PWM_in_1|plusOp_i__1 O[11]
load net PWM_in_1|plusOp_i__1_n_13 -attr @rip(#000000) O[10] -attr @name plusOp_i__1_n_13 -pin PWM_in_1|accelerating_counter_i I0[10] -pin PWM_in_1|plusOp_i__1 O[10]
load net PWM_in_1|plusOp_i__1_n_14 -attr @rip(#000000) O[9] -attr @name plusOp_i__1_n_14 -pin PWM_in_1|accelerating_counter_i I0[9] -pin PWM_in_1|plusOp_i__1 O[9]
load net PWM_in_1|plusOp_i__1_n_15 -attr @rip(#000000) O[8] -attr @name plusOp_i__1_n_15 -pin PWM_in_1|accelerating_counter_i I0[8] -pin PWM_in_1|plusOp_i__1 O[8]
load net PWM_in_1|plusOp_i__1_n_16 -attr @rip(#000000) O[7] -attr @name plusOp_i__1_n_16 -pin PWM_in_1|accelerating_counter_i I0[7] -pin PWM_in_1|plusOp_i__1 O[7]
load net PWM_in_1|plusOp_i__1_n_17 -attr @rip(#000000) O[6] -attr @name plusOp_i__1_n_17 -pin PWM_in_1|accelerating_counter_i I0[6] -pin PWM_in_1|plusOp_i__1 O[6]
load net PWM_in_1|plusOp_i__1_n_18 -attr @rip(#000000) O[5] -attr @name plusOp_i__1_n_18 -pin PWM_in_1|accelerating_counter_i I0[5] -pin PWM_in_1|plusOp_i__1 O[5]
load net PWM_in_1|plusOp_i__1_n_19 -attr @rip(#000000) O[4] -attr @name plusOp_i__1_n_19 -pin PWM_in_1|accelerating_counter_i I0[4] -pin PWM_in_1|plusOp_i__1 O[4]
load net PWM_in_1|plusOp_i__1_n_2 -attr @rip(#000000) O[21] -attr @name plusOp_i__1_n_2 -pin PWM_in_1|accelerating_counter_i I0[21] -pin PWM_in_1|plusOp_i__1 O[21]
load net PWM_in_1|plusOp_i__1_n_20 -attr @rip(#000000) O[3] -attr @name plusOp_i__1_n_20 -pin PWM_in_1|accelerating_counter_i I0[3] -pin PWM_in_1|plusOp_i__1 O[3]
load net PWM_in_1|plusOp_i__1_n_21 -attr @rip(#000000) O[2] -attr @name plusOp_i__1_n_21 -pin PWM_in_1|accelerating_counter_i I0[2] -pin PWM_in_1|plusOp_i__1 O[2]
load net PWM_in_1|plusOp_i__1_n_22 -attr @rip(#000000) O[1] -attr @name plusOp_i__1_n_22 -pin PWM_in_1|accelerating_counter_i I0[1] -pin PWM_in_1|plusOp_i__1 O[1]
load net PWM_in_1|plusOp_i__1_n_23 -attr @rip(#000000) O[0] -attr @name plusOp_i__1_n_23 -pin PWM_in_1|accelerating_counter_i I0[0] -pin PWM_in_1|plusOp_i__1 O[0]
load net PWM_in_1|plusOp_i__1_n_3 -attr @rip(#000000) O[20] -attr @name plusOp_i__1_n_3 -pin PWM_in_1|accelerating_counter_i I0[20] -pin PWM_in_1|plusOp_i__1 O[20]
load net PWM_in_1|plusOp_i__1_n_4 -attr @rip(#000000) O[19] -attr @name plusOp_i__1_n_4 -pin PWM_in_1|accelerating_counter_i I0[19] -pin PWM_in_1|plusOp_i__1 O[19]
load net PWM_in_1|plusOp_i__1_n_5 -attr @rip(#000000) O[18] -attr @name plusOp_i__1_n_5 -pin PWM_in_1|accelerating_counter_i I0[18] -pin PWM_in_1|plusOp_i__1 O[18]
load net PWM_in_1|plusOp_i__1_n_6 -attr @rip(#000000) O[17] -attr @name plusOp_i__1_n_6 -pin PWM_in_1|accelerating_counter_i I0[17] -pin PWM_in_1|plusOp_i__1 O[17]
load net PWM_in_1|plusOp_i__1_n_7 -attr @rip(#000000) O[16] -attr @name plusOp_i__1_n_7 -pin PWM_in_1|accelerating_counter_i I0[16] -pin PWM_in_1|plusOp_i__1 O[16]
load net PWM_in_1|plusOp_i__1_n_8 -attr @rip(#000000) O[15] -attr @name plusOp_i__1_n_8 -pin PWM_in_1|accelerating_counter_i I0[15] -pin PWM_in_1|plusOp_i__1 O[15]
load net PWM_in_1|plusOp_i__1_n_9 -attr @rip(#000000) O[14] -attr @name plusOp_i__1_n_9 -pin PWM_in_1|accelerating_counter_i I0[14] -pin PWM_in_1|plusOp_i__1 O[14]
load net PWM_in_1|plusOp_i__2_n_0 -attr @rip(#000000) O[17] -attr @name plusOp_i__2_n_0 -pin PWM_in_1|counter_reg[18:0] D[17] -pin PWM_in_1|plusOp_i__2 O[17]
load net PWM_in_1|plusOp_i__2_n_1 -attr @rip(#000000) O[16] -attr @name plusOp_i__2_n_1 -pin PWM_in_1|counter_reg[18:0] D[16] -pin PWM_in_1|plusOp_i__2 O[16]
load net PWM_in_1|plusOp_i__2_n_10 -attr @rip(#000000) O[7] -attr @name plusOp_i__2_n_10 -pin PWM_in_1|counter_reg[18:0] D[7] -pin PWM_in_1|plusOp_i__2 O[7]
load net PWM_in_1|plusOp_i__2_n_11 -attr @rip(#000000) O[6] -attr @name plusOp_i__2_n_11 -pin PWM_in_1|counter_reg[18:0] D[6] -pin PWM_in_1|plusOp_i__2 O[6]
load net PWM_in_1|plusOp_i__2_n_12 -attr @rip(#000000) O[5] -attr @name plusOp_i__2_n_12 -pin PWM_in_1|counter_reg[18:0] D[5] -pin PWM_in_1|plusOp_i__2 O[5]
load net PWM_in_1|plusOp_i__2_n_13 -attr @rip(#000000) O[4] -attr @name plusOp_i__2_n_13 -pin PWM_in_1|counter_reg[18:0] D[4] -pin PWM_in_1|plusOp_i__2 O[4]
load net PWM_in_1|plusOp_i__2_n_14 -attr @rip(#000000) O[3] -attr @name plusOp_i__2_n_14 -pin PWM_in_1|counter_reg[18:0] D[3] -pin PWM_in_1|plusOp_i__2 O[3]
load net PWM_in_1|plusOp_i__2_n_15 -attr @rip(#000000) O[2] -attr @name plusOp_i__2_n_15 -pin PWM_in_1|counter_reg[18:0] D[2] -pin PWM_in_1|plusOp_i__2 O[2]
load net PWM_in_1|plusOp_i__2_n_16 -attr @rip(#000000) O[1] -attr @name plusOp_i__2_n_16 -pin PWM_in_1|counter_reg[18:0] D[1] -pin PWM_in_1|plusOp_i__2 O[1]
load net PWM_in_1|plusOp_i__2_n_17 -attr @rip(#000000) O[0] -attr @name plusOp_i__2_n_17 -pin PWM_in_1|counter_reg[18:0] D[0] -pin PWM_in_1|plusOp_i__2 O[0]
load net PWM_in_1|plusOp_i__2_n_2 -attr @rip(#000000) O[15] -attr @name plusOp_i__2_n_2 -pin PWM_in_1|counter_reg[18:0] D[15] -pin PWM_in_1|plusOp_i__2 O[15]
load net PWM_in_1|plusOp_i__2_n_3 -attr @rip(#000000) O[14] -attr @name plusOp_i__2_n_3 -pin PWM_in_1|counter_reg[18:0] D[14] -pin PWM_in_1|plusOp_i__2 O[14]
load net PWM_in_1|plusOp_i__2_n_4 -attr @rip(#000000) O[13] -attr @name plusOp_i__2_n_4 -pin PWM_in_1|counter_reg[18:0] D[13] -pin PWM_in_1|plusOp_i__2 O[13]
load net PWM_in_1|plusOp_i__2_n_5 -attr @rip(#000000) O[12] -attr @name plusOp_i__2_n_5 -pin PWM_in_1|counter_reg[18:0] D[12] -pin PWM_in_1|plusOp_i__2 O[12]
load net PWM_in_1|plusOp_i__2_n_6 -attr @rip(#000000) O[11] -attr @name plusOp_i__2_n_6 -pin PWM_in_1|counter_reg[18:0] D[11] -pin PWM_in_1|plusOp_i__2 O[11]
load net PWM_in_1|plusOp_i__2_n_7 -attr @rip(#000000) O[10] -attr @name plusOp_i__2_n_7 -pin PWM_in_1|counter_reg[18:0] D[10] -pin PWM_in_1|plusOp_i__2 O[10]
load net PWM_in_1|plusOp_i__2_n_8 -attr @rip(#000000) O[9] -attr @name plusOp_i__2_n_8 -pin PWM_in_1|counter_reg[18:0] D[9] -pin PWM_in_1|plusOp_i__2 O[9]
load net PWM_in_1|plusOp_i__2_n_9 -attr @rip(#000000) O[8] -attr @name plusOp_i__2_n_9 -pin PWM_in_1|counter_reg[18:0] D[8] -pin PWM_in_1|plusOp_i__2 O[8]
load net PWM_in_1|plusOp_i_n_0 -attr @rip(#000000) O[17] -attr @name plusOp_i_n_0 -pin PWM_in_1|duty_cycle_internal_i__1 I0[17] -pin PWM_in_1|plusOp_i O[17]
load net PWM_in_1|plusOp_i_n_1 -attr @rip(#000000) O[16] -attr @name plusOp_i_n_1 -pin PWM_in_1|duty_cycle_internal_i__1 I0[16] -pin PWM_in_1|plusOp_i O[16]
load net PWM_in_1|plusOp_i_n_10 -attr @rip(#000000) O[7] -attr @name plusOp_i_n_10 -pin PWM_in_1|duty_cycle_internal_i__1 I0[7] -pin PWM_in_1|plusOp_i O[7]
load net PWM_in_1|plusOp_i_n_11 -attr @rip(#000000) O[6] -attr @name plusOp_i_n_11 -pin PWM_in_1|duty_cycle_internal_i__1 I0[6] -pin PWM_in_1|plusOp_i O[6]
load net PWM_in_1|plusOp_i_n_12 -attr @rip(#000000) O[5] -attr @name plusOp_i_n_12 -pin PWM_in_1|duty_cycle_internal_i__1 I0[5] -pin PWM_in_1|plusOp_i O[5]
load net PWM_in_1|plusOp_i_n_13 -attr @rip(#000000) O[4] -attr @name plusOp_i_n_13 -pin PWM_in_1|duty_cycle_internal_i__1 I0[4] -pin PWM_in_1|plusOp_i O[4]
load net PWM_in_1|plusOp_i_n_14 -attr @rip(#000000) O[3] -attr @name plusOp_i_n_14 -pin PWM_in_1|duty_cycle_internal_i__1 I0[3] -pin PWM_in_1|plusOp_i O[3]
load net PWM_in_1|plusOp_i_n_15 -attr @rip(#000000) O[2] -attr @name plusOp_i_n_15 -pin PWM_in_1|duty_cycle_internal_i__1 I0[2] -pin PWM_in_1|plusOp_i O[2]
load net PWM_in_1|plusOp_i_n_16 -attr @rip(#000000) O[1] -attr @name plusOp_i_n_16 -pin PWM_in_1|duty_cycle_internal_i__1 I0[1] -pin PWM_in_1|plusOp_i O[1]
load net PWM_in_1|plusOp_i_n_17 -attr @rip(#000000) O[0] -attr @name plusOp_i_n_17 -pin PWM_in_1|duty_cycle_internal_i__1 I0[0] -pin PWM_in_1|plusOp_i O[0]
load net PWM_in_1|plusOp_i_n_2 -attr @rip(#000000) O[15] -attr @name plusOp_i_n_2 -pin PWM_in_1|duty_cycle_internal_i__1 I0[15] -pin PWM_in_1|plusOp_i O[15]
load net PWM_in_1|plusOp_i_n_3 -attr @rip(#000000) O[14] -attr @name plusOp_i_n_3 -pin PWM_in_1|duty_cycle_internal_i__1 I0[14] -pin PWM_in_1|plusOp_i O[14]
load net PWM_in_1|plusOp_i_n_4 -attr @rip(#000000) O[13] -attr @name plusOp_i_n_4 -pin PWM_in_1|duty_cycle_internal_i__1 I0[13] -pin PWM_in_1|plusOp_i O[13]
load net PWM_in_1|plusOp_i_n_5 -attr @rip(#000000) O[12] -attr @name plusOp_i_n_5 -pin PWM_in_1|duty_cycle_internal_i__1 I0[12] -pin PWM_in_1|plusOp_i O[12]
load net PWM_in_1|plusOp_i_n_6 -attr @rip(#000000) O[11] -attr @name plusOp_i_n_6 -pin PWM_in_1|duty_cycle_internal_i__1 I0[11] -pin PWM_in_1|plusOp_i O[11]
load net PWM_in_1|plusOp_i_n_7 -attr @rip(#000000) O[10] -attr @name plusOp_i_n_7 -pin PWM_in_1|duty_cycle_internal_i__1 I0[10] -pin PWM_in_1|plusOp_i O[10]
load net PWM_in_1|plusOp_i_n_8 -attr @rip(#000000) O[9] -attr @name plusOp_i_n_8 -pin PWM_in_1|duty_cycle_internal_i__1 I0[9] -pin PWM_in_1|plusOp_i O[9]
load net PWM_in_1|plusOp_i_n_9 -attr @rip(#000000) O[8] -attr @name plusOp_i_n_9 -pin PWM_in_1|duty_cycle_internal_i__1 I0[8] -pin PWM_in_1|plusOp_i O[8]
load net PWM_in_1|pwm_out -attr @name pwm_out -hierPin PWM_in_1 pwm_out -pin PWM_in_1|pwm_out0_i O
netloc PWM_in_1|pwm_out 1 22 1 8200 718n
load net PWM_in_1|rst -attr @name rst -hierPin PWM_in_1 rst -pin PWM_in_1|accelerating_counter_reg[23:0] CLR -pin PWM_in_1|accelerating_reg CLR -pin PWM_in_1|btn_down_cnt_reg[16:0] CLR -pin PWM_in_1|btn_down_db_reg CLR -pin PWM_in_1|btn_down_prev_reg CLR -pin PWM_in_1|btn_up_cnt_reg[16:0] CLR -pin PWM_in_1|btn_up_db_reg CLR -pin PWM_in_1|btn_up_prev_reg CLR -pin PWM_in_1|counter_i__0 S -pin PWM_in_1|duty_cycle_internal_reg[18:0] CLR
netloc PWM_in_1|rst 1 0 20 170J 538 520J 558 900 538N N 538 1370 668N NJ 668 NJ 668 N 668N NJ 668 2980 288N NJ 288 3890J 298 N 298N NJ 298 NJ 298 NJ 298 NJ 298 6250 548N NJ 548 7120
load net PWM_in_1|temp_duty_precent[0] -attr @rip(#000000) O[0] -attr @name temp_duty_precent[0] -pin PWM_in_1|hundreds_out0_i I0[0] -pin PWM_in_1|ones_out0_i I0[0] -pin PWM_in_1|temp_duty_precent_i O[0] -pin PWM_in_1|tens_out0_i I0[0]
load net PWM_in_1|temp_duty_precent[1] -attr @rip(#000000) O[1] -attr @name temp_duty_precent[1] -pin PWM_in_1|hundreds_out0_i I0[1] -pin PWM_in_1|ones_out0_i I0[1] -pin PWM_in_1|temp_duty_precent_i O[1] -pin PWM_in_1|tens_out0_i I0[1]
load net PWM_in_1|temp_duty_precent[2] -attr @rip(#000000) O[2] -attr @name temp_duty_precent[2] -pin PWM_in_1|hundreds_out0_i I0[2] -pin PWM_in_1|ones_out0_i I0[2] -pin PWM_in_1|temp_duty_precent_i O[2] -pin PWM_in_1|tens_out0_i I0[2]
load net PWM_in_1|temp_duty_precent[3] -attr @rip(#000000) O[3] -attr @name temp_duty_precent[3] -pin PWM_in_1|hundreds_out0_i I0[3] -pin PWM_in_1|ones_out0_i I0[3] -pin PWM_in_1|temp_duty_precent_i O[3] -pin PWM_in_1|tens_out0_i I0[3]
load net PWM_in_1|temp_duty_precent[4] -attr @rip(#000000) O[4] -attr @name temp_duty_precent[4] -pin PWM_in_1|hundreds_out0_i I0[4] -pin PWM_in_1|ones_out0_i I0[4] -pin PWM_in_1|temp_duty_precent_i O[4] -pin PWM_in_1|tens_out0_i I0[4]
load net PWM_in_1|temp_duty_precent[5] -attr @rip(#000000) O[5] -attr @name temp_duty_precent[5] -pin PWM_in_1|hundreds_out0_i I0[5] -pin PWM_in_1|ones_out0_i I0[5] -pin PWM_in_1|temp_duty_precent_i O[5] -pin PWM_in_1|tens_out0_i I0[5]
load net PWM_in_1|temp_duty_precent[6] -attr @rip(#000000) O[6] -attr @name temp_duty_precent[6] -pin PWM_in_1|hundreds_out0_i I0[6] -pin PWM_in_1|ones_out0_i I0[6] -pin PWM_in_1|temp_duty_precent_i O[6] -pin PWM_in_1|tens_out0_i I0[6]
load net PWM_in_1|temp_duty_precent[7] -attr @rip(#000000) O[7] -attr @name temp_duty_precent[7] -pin PWM_in_1|hundreds_out0_i I0[7] -pin PWM_in_1|ones_out0_i I0[7] -pin PWM_in_1|temp_duty_precent_i O[7] -pin PWM_in_1|tens_out0_i I0[7]
load net PWM_in_1|temp_duty_precent[8] -attr @rip(#000000) O[8] -attr @name temp_duty_precent[8] -pin PWM_in_1|hundreds_out0_i I0[8] -pin PWM_in_1|ones_out0_i I0[8] -pin PWM_in_1|temp_duty_precent_i O[8] -pin PWM_in_1|tens_out0_i I0[8]
load net PWM_in_1|tens_out0[0] -attr @rip(#000000) O[0] -attr @name tens_out0[0] -pin PWM_in_1|tens_out0_i O[0] -pin PWM_in_1|tens_out_i I0[0]
load net PWM_in_1|tens_out0[1] -attr @rip(#000000) O[1] -attr @name tens_out0[1] -pin PWM_in_1|tens_out0_i O[1] -pin PWM_in_1|tens_out_i I0[1]
load net PWM_in_1|tens_out0[2] -attr @rip(#000000) O[2] -attr @name tens_out0[2] -pin PWM_in_1|tens_out0_i O[2] -pin PWM_in_1|tens_out_i I0[2]
load net PWM_in_1|tens_out0[3] -attr @rip(#000000) O[3] -attr @name tens_out0[3] -pin PWM_in_1|tens_out0_i O[3] -pin PWM_in_1|tens_out_i I0[3]
load net PWM_in_1|tens_out0[4] -attr @rip(#000000) O[4] -attr @name tens_out0[4] -pin PWM_in_1|tens_out0_i O[4] -pin PWM_in_1|tens_out_i I0[4]
load net PWM_in_1|tens_out0[5] -attr @rip(#000000) O[5] -attr @name tens_out0[5] -pin PWM_in_1|tens_out0_i O[5] -pin PWM_in_1|tens_out_i I0[5]
load net PWM_in_1|tens_out0[6] -attr @rip(#000000) O[6] -attr @name tens_out0[6] -pin PWM_in_1|tens_out0_i O[6] -pin PWM_in_1|tens_out_i I0[6]
load net PWM_in_1|tens_out[0] -attr @rip(#000000) O[0] -attr @name tens_out[0] -hierPin PWM_in_1 tens_out[0] -pin PWM_in_1|tens_out_i O[0]
load net PWM_in_1|tens_out[1] -attr @rip(#000000) O[1] -attr @name tens_out[1] -hierPin PWM_in_1 tens_out[1] -pin PWM_in_1|tens_out_i O[1]
load net PWM_in_1|tens_out[2] -attr @rip(#000000) O[2] -attr @name tens_out[2] -hierPin PWM_in_1 tens_out[2] -pin PWM_in_1|tens_out_i O[2]
load net PWM_in_1|tens_out[3] -attr @rip(#000000) O[3] -attr @name tens_out[3] -hierPin PWM_in_1 tens_out[3] -pin PWM_in_1|tens_out_i O[3]
load netBundle @PWM_in_1|accelerating_counter_ 24 PWM_in_1|accelerating_counter__0[23] PWM_in_1|accelerating_counter__0[22] PWM_in_1|accelerating_counter__0[21] PWM_in_1|accelerating_counter__0[20] PWM_in_1|accelerating_counter__0[19] PWM_in_1|accelerating_counter__0[18] PWM_in_1|accelerating_counter__0[17] PWM_in_1|accelerating_counter__0[16] PWM_in_1|accelerating_counter__0[15] PWM_in_1|accelerating_counter__0[14] PWM_in_1|accelerating_counter__0[13] PWM_in_1|accelerating_counter__0[12] PWM_in_1|accelerating_counter__0[11] PWM_in_1|accelerating_counter__0[10] PWM_in_1|accelerating_counter__0[9] PWM_in_1|accelerating_counter__0[8] PWM_in_1|accelerating_counter__0[7] PWM_in_1|accelerating_counter__0[6] PWM_in_1|accelerating_counter__0[5] PWM_in_1|accelerating_counter__0[4] PWM_in_1|accelerating_counter__0[3] PWM_in_1|accelerating_counter__0[2] PWM_in_1|accelerating_counter__0[1] PWM_in_1|accelerating_counter__0[0] -autobundled
netbloc @PWM_in_1|accelerating_counter_ 1 9 1 3020 158n
load netBundle @PWM_in_1|btn_down_cnt0 17 PWM_in_1|btn_down_cnt0[16] PWM_in_1|btn_down_cnt0[15] PWM_in_1|btn_down_cnt0[14] PWM_in_1|btn_down_cnt0[13] PWM_in_1|btn_down_cnt0[12] PWM_in_1|btn_down_cnt0[11] PWM_in_1|btn_down_cnt0[10] PWM_in_1|btn_down_cnt0[9] PWM_in_1|btn_down_cnt0[8] PWM_in_1|btn_down_cnt0[7] PWM_in_1|btn_down_cnt0[6] PWM_in_1|btn_down_cnt0[5] PWM_in_1|btn_down_cnt0[4] PWM_in_1|btn_down_cnt0[3] PWM_in_1|btn_down_cnt0[2] PWM_in_1|btn_down_cnt0[1] PWM_in_1|btn_down_cnt0[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt0 1 1 1 NJ 608
load netBundle @PWM_in_1|btn_down_cnt__0 17 PWM_in_1|btn_down_cnt__0[16] PWM_in_1|btn_down_cnt__0[15] PWM_in_1|btn_down_cnt__0[14] PWM_in_1|btn_down_cnt__0[13] PWM_in_1|btn_down_cnt__0[12] PWM_in_1|btn_down_cnt__0[11] PWM_in_1|btn_down_cnt__0[10] PWM_in_1|btn_down_cnt__0[9] PWM_in_1|btn_down_cnt__0[8] PWM_in_1|btn_down_cnt__0[7] PWM_in_1|btn_down_cnt__0[6] PWM_in_1|btn_down_cnt__0[5] PWM_in_1|btn_down_cnt__0[4] PWM_in_1|btn_down_cnt__0[3] PWM_in_1|btn_down_cnt__0[2] PWM_in_1|btn_down_cnt__0[1] PWM_in_1|btn_down_cnt__0[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt__0 1 2 1 860 618n
load netBundle @PWM_in_1|btn_up_cnt0 17 PWM_in_1|btn_up_cnt0[16] PWM_in_1|btn_up_cnt0[15] PWM_in_1|btn_up_cnt0[14] PWM_in_1|btn_up_cnt0[13] PWM_in_1|btn_up_cnt0[12] PWM_in_1|btn_up_cnt0[11] PWM_in_1|btn_up_cnt0[10] PWM_in_1|btn_up_cnt0[9] PWM_in_1|btn_up_cnt0[8] PWM_in_1|btn_up_cnt0[7] PWM_in_1|btn_up_cnt0[6] PWM_in_1|btn_up_cnt0[5] PWM_in_1|btn_up_cnt0[4] PWM_in_1|btn_up_cnt0[3] PWM_in_1|btn_up_cnt0[2] PWM_in_1|btn_up_cnt0[1] PWM_in_1|btn_up_cnt0[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt0 1 1 1 540J 428n
load netBundle @PWM_in_1|btn_up_cnt__0 17 PWM_in_1|btn_up_cnt__0[16] PWM_in_1|btn_up_cnt__0[15] PWM_in_1|btn_up_cnt__0[14] PWM_in_1|btn_up_cnt__0[13] PWM_in_1|btn_up_cnt__0[12] PWM_in_1|btn_up_cnt__0[11] PWM_in_1|btn_up_cnt__0[10] PWM_in_1|btn_up_cnt__0[9] PWM_in_1|btn_up_cnt__0[8] PWM_in_1|btn_up_cnt__0[7] PWM_in_1|btn_up_cnt__0[6] PWM_in_1|btn_up_cnt__0[5] PWM_in_1|btn_up_cnt__0[4] PWM_in_1|btn_up_cnt__0[3] PWM_in_1|btn_up_cnt__0[2] PWM_in_1|btn_up_cnt__0[1] PWM_in_1|btn_up_cnt__0[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt__0 1 2 1 860 448n
load netBundle @PWM_in_1|duty_cycle_internal_i 19 PWM_in_1|duty_cycle_internal_i_n_0 PWM_in_1|duty_cycle_internal_i_n_1 PWM_in_1|duty_cycle_internal_i_n_2 PWM_in_1|duty_cycle_internal_i_n_3 PWM_in_1|duty_cycle_internal_i_n_4 PWM_in_1|duty_cycle_internal_i_n_5 PWM_in_1|duty_cycle_internal_i_n_6 PWM_in_1|duty_cycle_internal_i_n_7 PWM_in_1|duty_cycle_internal_i_n_8 PWM_in_1|duty_cycle_internal_i_n_9 PWM_in_1|duty_cycle_internal_i_n_10 PWM_in_1|duty_cycle_internal_i_n_11 PWM_in_1|duty_cycle_internal_i_n_12 PWM_in_1|duty_cycle_internal_i_n_13 PWM_in_1|duty_cycle_internal_i_n_14 PWM_in_1|duty_cycle_internal_i_n_15 PWM_in_1|duty_cycle_internal_i_n_16 PWM_in_1|duty_cycle_internal_i_n_17 PWM_in_1|duty_cycle_internal_i_n_18 -autobundled
netbloc @PWM_in_1|duty_cycle_internal_i 1 12 1 4350 538n
load netBundle @PWM_in_1|duty_cycle_internal_i_1 19 PWM_in_1|duty_cycle_internal_i__0_n_0 PWM_in_1|duty_cycle_internal_i__0_n_1 PWM_in_1|duty_cycle_internal_i__0_n_2 PWM_in_1|duty_cycle_internal_i__0_n_3 PWM_in_1|duty_cycle_internal_i__0_n_4 PWM_in_1|duty_cycle_internal_i__0_n_5 PWM_in_1|duty_cycle_internal_i__0_n_6 PWM_in_1|duty_cycle_internal_i__0_n_7 PWM_in_1|duty_cycle_internal_i__0_n_8 PWM_in_1|duty_cycle_internal_i__0_n_9 PWM_in_1|duty_cycle_internal_i__0_n_10 PWM_in_1|duty_cycle_internal_i__0_n_11 PWM_in_1|duty_cycle_internal_i__0_n_12 PWM_in_1|duty_cycle_internal_i__0_n_13 PWM_in_1|duty_cycle_internal_i__0_n_14 PWM_in_1|duty_cycle_internal_i__0_n_15 PWM_in_1|duty_cycle_internal_i__0_n_16 PWM_in_1|duty_cycle_internal_i__0_n_17 PWM_in_1|duty_cycle_internal_i__0_n_18 -autobundled
netbloc @PWM_in_1|duty_cycle_internal_i_1 1 13 2 4750 708 5190
load netBundle @PWM_in_1|duty_cycle_internal_i_2 19 PWM_in_1|duty_cycle_internal_i__1_n_0 PWM_in_1|duty_cycle_internal_i__1_n_1 PWM_in_1|duty_cycle_internal_i__1_n_2 PWM_in_1|duty_cycle_internal_i__1_n_3 PWM_in_1|duty_cycle_internal_i__1_n_4 PWM_in_1|duty_cycle_internal_i__1_n_5 PWM_in_1|duty_cycle_internal_i__1_n_6 PWM_in_1|duty_cycle_internal_i__1_n_7 PWM_in_1|duty_cycle_internal_i__1_n_8 PWM_in_1|duty_cycle_internal_i__1_n_9 PWM_in_1|duty_cycle_internal_i__1_n_10 PWM_in_1|duty_cycle_internal_i__1_n_11 PWM_in_1|duty_cycle_internal_i__1_n_12 PWM_in_1|duty_cycle_internal_i__1_n_13 PWM_in_1|duty_cycle_internal_i__1_n_14 PWM_in_1|duty_cycle_internal_i__1_n_15 PWM_in_1|duty_cycle_internal_i__1_n_16 PWM_in_1|duty_cycle_internal_i__1_n_17 PWM_in_1|duty_cycle_internal_i__1_n_18 -autobundled
netbloc @PWM_in_1|duty_cycle_internal_i_2 1 14 1 5170 738n
load netBundle @PWM_in_1|duty_cycle_internal_i_3 19 PWM_in_1|duty_cycle_internal_i__2_n_0 PWM_in_1|duty_cycle_internal_i__2_n_1 PWM_in_1|duty_cycle_internal_i__2_n_2 PWM_in_1|duty_cycle_internal_i__2_n_3 PWM_in_1|duty_cycle_internal_i__2_n_4 PWM_in_1|duty_cycle_internal_i__2_n_5 PWM_in_1|duty_cycle_internal_i__2_n_6 PWM_in_1|duty_cycle_internal_i__2_n_7 PWM_in_1|duty_cycle_internal_i__2_n_8 PWM_in_1|duty_cycle_internal_i__2_n_9 PWM_in_1|duty_cycle_internal_i__2_n_10 PWM_in_1|duty_cycle_internal_i__2_n_11 PWM_in_1|duty_cycle_internal_i__2_n_12 PWM_in_1|duty_cycle_internal_i__2_n_13 PWM_in_1|duty_cycle_internal_i__2_n_14 PWM_in_1|duty_cycle_internal_i__2_n_15 PWM_in_1|duty_cycle_internal_i__2_n_16 PWM_in_1|duty_cycle_internal_i__2_n_17 PWM_in_1|duty_cycle_internal_i__2_n_18 -autobundled
netbloc @PWM_in_1|duty_cycle_internal_i_3 1 15 2 5510 648 NJ
load netBundle @PWM_in_1|duty_cycle_internal_i_4 19 PWM_in_1|duty_cycle_internal_i__3_n_0 PWM_in_1|duty_cycle_internal_i__3_n_1 PWM_in_1|duty_cycle_internal_i__3_n_2 PWM_in_1|duty_cycle_internal_i__3_n_3 PWM_in_1|duty_cycle_internal_i__3_n_4 PWM_in_1|duty_cycle_internal_i__3_n_5 PWM_in_1|duty_cycle_internal_i__3_n_6 PWM_in_1|duty_cycle_internal_i__3_n_7 PWM_in_1|duty_cycle_internal_i__3_n_8 PWM_in_1|duty_cycle_internal_i__3_n_9 PWM_in_1|duty_cycle_internal_i__3_n_10 PWM_in_1|duty_cycle_internal_i__3_n_11 PWM_in_1|duty_cycle_internal_i__3_n_12 PWM_in_1|duty_cycle_internal_i__3_n_13 PWM_in_1|duty_cycle_internal_i__3_n_14 PWM_in_1|duty_cycle_internal_i__3_n_15 PWM_in_1|duty_cycle_internal_i__3_n_16 PWM_in_1|duty_cycle_internal_i__3_n_17 PWM_in_1|duty_cycle_internal_i__3_n_18 -autobundled
netbloc @PWM_in_1|duty_cycle_internal_i_4 1 16 1 5930 628n
load netBundle @PWM_in_1|duty_cycle_internal__ 19 PWM_in_1|duty_cycle_internal__0[18] PWM_in_1|duty_cycle_internal__0[17] PWM_in_1|duty_cycle_internal__0[16] PWM_in_1|duty_cycle_internal__0[15] PWM_in_1|duty_cycle_internal__0[14] PWM_in_1|duty_cycle_internal__0[13] PWM_in_1|duty_cycle_internal__0[12] PWM_in_1|duty_cycle_internal__0[11] PWM_in_1|duty_cycle_internal__0[10] PWM_in_1|duty_cycle_internal__0[9] PWM_in_1|duty_cycle_internal__0[8] PWM_in_1|duty_cycle_internal__0[7] PWM_in_1|duty_cycle_internal__0[6] PWM_in_1|duty_cycle_internal__0[5] PWM_in_1|duty_cycle_internal__0[4] PWM_in_1|duty_cycle_internal__0[3] PWM_in_1|duty_cycle_internal__0[2] PWM_in_1|duty_cycle_internal__0[1] PWM_in_1|duty_cycle_internal__0[0] -autobundled
netbloc @PWM_in_1|duty_cycle_internal__ 1 17 1 N 638
load netBundle @PWM_in_1|hundreds_out0 9 PWM_in_1|hundreds_out0[8] PWM_in_1|hundreds_out0[7] PWM_in_1|hundreds_out0[6] PWM_in_1|hundreds_out0[5] PWM_in_1|hundreds_out0[4] PWM_in_1|hundreds_out0[3] PWM_in_1|hundreds_out0[2] PWM_in_1|hundreds_out0[1] PWM_in_1|hundreds_out0[0] -autobundled
netbloc @PWM_in_1|hundreds_out0 1 21 1 7860J 828n
load netBundle @PWM_in_1|hundreds_out 4 PWM_in_1|hundreds_out[3] PWM_in_1|hundreds_out[2] PWM_in_1|hundreds_out[1] PWM_in_1|hundreds_out[0] -autobundled
netbloc @PWM_in_1|hundreds_out 1 22 1 NJ 838
load netBundle @PWM_in_1|minusOp_i_n_ 19 PWM_in_1|minusOp_i_n_0 PWM_in_1|minusOp_i_n_1 PWM_in_1|minusOp_i_n_2 PWM_in_1|minusOp_i_n_3 PWM_in_1|minusOp_i_n_4 PWM_in_1|minusOp_i_n_5 PWM_in_1|minusOp_i_n_6 PWM_in_1|minusOp_i_n_7 PWM_in_1|minusOp_i_n_8 PWM_in_1|minusOp_i_n_9 PWM_in_1|minusOp_i_n_10 PWM_in_1|minusOp_i_n_11 PWM_in_1|minusOp_i_n_12 PWM_in_1|minusOp_i_n_13 PWM_in_1|minusOp_i_n_14 PWM_in_1|minusOp_i_n_15 PWM_in_1|minusOp_i_n_16 PWM_in_1|minusOp_i_n_17 PWM_in_1|minusOp_i_n_18 -autobundled
netbloc @PWM_in_1|minusOp_i_n_ 1 15 1 5550J 718n
load netBundle @PWM_in_1|minusOp 19 PWM_in_1|minusOp[18] PWM_in_1|minusOp[17] PWM_in_1|minusOp[16] PWM_in_1|minusOp[15] PWM_in_1|minusOp[14] PWM_in_1|minusOp[13] PWM_in_1|minusOp[12] PWM_in_1|minusOp[11] PWM_in_1|minusOp[10] PWM_in_1|minusOp[9] PWM_in_1|minusOp[8] PWM_in_1|minusOp[7] PWM_in_1|minusOp[6] PWM_in_1|minusOp[5] PWM_in_1|minusOp[4] PWM_in_1|minusOp[3] PWM_in_1|minusOp[2] PWM_in_1|minusOp[1] PWM_in_1|minusOp[0] -autobundled
netbloc @PWM_in_1|minusOp 1 11 1 3930 708n
load netBundle @PWM_in_1|multOp 26 PWM_in_1|multOp[25] PWM_in_1|multOp[24] PWM_in_1|multOp[23] PWM_in_1|multOp[22] PWM_in_1|multOp[21] PWM_in_1|multOp[20] PWM_in_1|multOp[19] PWM_in_1|multOp[18] PWM_in_1|multOp[17] PWM_in_1|multOp[16] PWM_in_1|multOp[15] PWM_in_1|multOp[14] PWM_in_1|multOp[13] PWM_in_1|multOp[12] PWM_in_1|multOp[11] PWM_in_1|multOp[10] PWM_in_1|multOp[9] PWM_in_1|multOp[8] PWM_in_1|multOp[7] PWM_in_1|multOp[6] PWM_in_1|multOp[5] PWM_in_1|multOp[4] PWM_in_1|multOp[3] PWM_in_1|multOp[2] PWM_in_1|multOp[1] PWM_in_1|multOp[0] -autobundled
netbloc @PWM_in_1|multOp 1 19 1 NJ 638
load netBundle @PWM_in_1|ones_out 4 PWM_in_1|ones_out[3] PWM_in_1|ones_out[2] PWM_in_1|ones_out[1] PWM_in_1|ones_out[0] -autobundled
netbloc @PWM_in_1|ones_out 1 22 1 NJ 928
load netBundle @PWM_in_1|plusOp_i_n_ 18 PWM_in_1|plusOp_i_n_0 PWM_in_1|plusOp_i_n_1 PWM_in_1|plusOp_i_n_2 PWM_in_1|plusOp_i_n_3 PWM_in_1|plusOp_i_n_4 PWM_in_1|plusOp_i_n_5 PWM_in_1|plusOp_i_n_6 PWM_in_1|plusOp_i_n_7 PWM_in_1|plusOp_i_n_8 PWM_in_1|plusOp_i_n_9 PWM_in_1|plusOp_i_n_10 PWM_in_1|plusOp_i_n_11 PWM_in_1|plusOp_i_n_12 PWM_in_1|plusOp_i_n_13 PWM_in_1|plusOp_i_n_14 PWM_in_1|plusOp_i_n_15 PWM_in_1|plusOp_i_n_16 PWM_in_1|plusOp_i_n_17 -autobundled
netbloc @PWM_in_1|plusOp_i_n_ 1 13 1 4730J 758
load netBundle @PWM_in_1|plusOp 18 PWM_in_1|plusOp[17] PWM_in_1|plusOp[16] PWM_in_1|plusOp[15] PWM_in_1|plusOp[14] PWM_in_1|plusOp[13] PWM_in_1|plusOp[12] PWM_in_1|plusOp[11] PWM_in_1|plusOp[10] PWM_in_1|plusOp[9] PWM_in_1|plusOp[8] PWM_in_1|plusOp[7] PWM_in_1|plusOp[6] PWM_in_1|plusOp[5] PWM_in_1|plusOp[4] PWM_in_1|plusOp[3] PWM_in_1|plusOp[2] PWM_in_1|plusOp[1] PWM_in_1|plusOp[0] -autobundled
netbloc @PWM_in_1|plusOp 1 11 2 3910 658 4310J
load netBundle @PWM_in_1|plusOp_i__1_n_ 24 PWM_in_1|plusOp_i__1_n_0 PWM_in_1|plusOp_i__1_n_1 PWM_in_1|plusOp_i__1_n_2 PWM_in_1|plusOp_i__1_n_3 PWM_in_1|plusOp_i__1_n_4 PWM_in_1|plusOp_i__1_n_5 PWM_in_1|plusOp_i__1_n_6 PWM_in_1|plusOp_i__1_n_7 PWM_in_1|plusOp_i__1_n_8 PWM_in_1|plusOp_i__1_n_9 PWM_in_1|plusOp_i__1_n_10 PWM_in_1|plusOp_i__1_n_11 PWM_in_1|plusOp_i__1_n_12 PWM_in_1|plusOp_i__1_n_13 PWM_in_1|plusOp_i__1_n_14 PWM_in_1|plusOp_i__1_n_15 PWM_in_1|plusOp_i__1_n_16 PWM_in_1|plusOp_i__1_n_17 PWM_in_1|plusOp_i__1_n_18 PWM_in_1|plusOp_i__1_n_19 PWM_in_1|plusOp_i__1_n_20 PWM_in_1|plusOp_i__1_n_21 PWM_in_1|plusOp_i__1_n_22 PWM_in_1|plusOp_i__1_n_23 -autobundled
netbloc @PWM_in_1|plusOp_i__1_n_ 1 8 1 NJ 148
load netBundle @PWM_in_1|plusOp_i__2_n_ 18 PWM_in_1|plusOp_i__2_n_0 PWM_in_1|plusOp_i__2_n_1 PWM_in_1|plusOp_i__2_n_2 PWM_in_1|plusOp_i__2_n_3 PWM_in_1|plusOp_i__2_n_4 PWM_in_1|plusOp_i__2_n_5 PWM_in_1|plusOp_i__2_n_6 PWM_in_1|plusOp_i__2_n_7 PWM_in_1|plusOp_i__2_n_8 PWM_in_1|plusOp_i__2_n_9 PWM_in_1|plusOp_i__2_n_10 PWM_in_1|plusOp_i__2_n_11 PWM_in_1|plusOp_i__2_n_12 PWM_in_1|plusOp_i__2_n_13 PWM_in_1|plusOp_i__2_n_14 PWM_in_1|plusOp_i__2_n_15 PWM_in_1|plusOp_i__2_n_16 PWM_in_1|plusOp_i__2_n_17 -autobundled
netbloc @PWM_in_1|plusOp_i__2_n_ 1 20 1 7480J 738n
load netBundle @PWM_in_1|temp_duty_precent 9 PWM_in_1|temp_duty_precent[8] PWM_in_1|temp_duty_precent[7] PWM_in_1|temp_duty_precent[6] PWM_in_1|temp_duty_precent[5] PWM_in_1|temp_duty_precent[4] PWM_in_1|temp_duty_precent[3] PWM_in_1|temp_duty_precent[2] PWM_in_1|temp_duty_precent[1] PWM_in_1|temp_duty_precent[0] -autobundled
netbloc @PWM_in_1|temp_duty_precent 1 20 2 7460 918 NJ
load netBundle @PWM_in_1|tens_out0 7 PWM_in_1|tens_out0[6] PWM_in_1|tens_out0[5] PWM_in_1|tens_out0[4] PWM_in_1|tens_out0[3] PWM_in_1|tens_out0[2] PWM_in_1|tens_out0[1] PWM_in_1|tens_out0[0] -autobundled
netbloc @PWM_in_1|tens_out0 1 21 1 7860J 968n
load netBundle @PWM_in_1|tens_out 4 PWM_in_1|tens_out[3] PWM_in_1|tens_out[2] PWM_in_1|tens_out[1] PWM_in_1|tens_out[0] -autobundled
netbloc @PWM_in_1|tens_out 1 22 1 NJ 1018
load netBundle @PWM_in_1|duty_cycle_internal 19 PWM_in_1|duty_cycle_internal[18] PWM_in_1|duty_cycle_internal[17] PWM_in_1|duty_cycle_internal[16] PWM_in_1|duty_cycle_internal[15] PWM_in_1|duty_cycle_internal[14] PWM_in_1|duty_cycle_internal[13] PWM_in_1|duty_cycle_internal[12] PWM_in_1|duty_cycle_internal[11] PWM_in_1|duty_cycle_internal[10] PWM_in_1|duty_cycle_internal[9] PWM_in_1|duty_cycle_internal[8] PWM_in_1|duty_cycle_internal[7] PWM_in_1|duty_cycle_internal[6] PWM_in_1|duty_cycle_internal[5] PWM_in_1|duty_cycle_internal[4] PWM_in_1|duty_cycle_internal[3] PWM_in_1|duty_cycle_internal[2] PWM_in_1|duty_cycle_internal[1] PWM_in_1|duty_cycle_internal[0] -autobundled
netbloc @PWM_in_1|duty_cycle_internal 1 9 13 3000 908 3500 868 NJ 868 4410 1008 4810J 1018 5250 1048 NJ 1048 NJ 1048 NJ 1048 6740 568 7100J 578 NJ 578 7860
load netBundle @PWM_in_1|btn_up_cnt 17 PWM_in_1|btn_up_cnt[16] PWM_in_1|btn_up_cnt[15] PWM_in_1|btn_up_cnt[14] PWM_in_1|btn_up_cnt[13] PWM_in_1|btn_up_cnt[12] PWM_in_1|btn_up_cnt[11] PWM_in_1|btn_up_cnt[10] PWM_in_1|btn_up_cnt[9] PWM_in_1|btn_up_cnt[8] PWM_in_1|btn_up_cnt[7] PWM_in_1|btn_up_cnt[6] PWM_in_1|btn_up_cnt[5] PWM_in_1|btn_up_cnt[4] PWM_in_1|btn_up_cnt[3] PWM_in_1|btn_up_cnt[2] PWM_in_1|btn_up_cnt[1] PWM_in_1|btn_up_cnt[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt 1 0 4 110 368 NJ 368 NJ 368 1220
load netBundle @PWM_in_1|btn_down_cnt 17 PWM_in_1|btn_down_cnt[16] PWM_in_1|btn_down_cnt[15] PWM_in_1|btn_down_cnt[14] PWM_in_1|btn_down_cnt[13] PWM_in_1|btn_down_cnt[12] PWM_in_1|btn_down_cnt[11] PWM_in_1|btn_down_cnt[10] PWM_in_1|btn_down_cnt[9] PWM_in_1|btn_down_cnt[8] PWM_in_1|btn_down_cnt[7] PWM_in_1|btn_down_cnt[6] PWM_in_1|btn_down_cnt[5] PWM_in_1|btn_down_cnt[4] PWM_in_1|btn_down_cnt[3] PWM_in_1|btn_down_cnt[2] PWM_in_1|btn_down_cnt[1] PWM_in_1|btn_down_cnt[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt 1 0 4 130 708 NJ 708 NJ 708 1200
load netBundle @PWM_in_1|counter 19 PWM_in_1|counter[18] PWM_in_1|counter[17] PWM_in_1|counter[16] PWM_in_1|counter[15] PWM_in_1|counter[14] PWM_in_1|counter[13] PWM_in_1|counter[12] PWM_in_1|counter[11] PWM_in_1|counter[10] PWM_in_1|counter[9] PWM_in_1|counter[8] PWM_in_1|counter[7] PWM_in_1|counter[6] PWM_in_1|counter[5] PWM_in_1|counter[4] PWM_in_1|counter[3] PWM_in_1|counter[2] PWM_in_1|counter[1] PWM_in_1|counter[0] -autobundled
netbloc @PWM_in_1|counter 1 17 5 6290 848 NJ 848 7120 818 7480J 798 7860
load netBundle @PWM_in_1|accelerating_counter 24 PWM_in_1|accelerating_counter[23] PWM_in_1|accelerating_counter[22] PWM_in_1|accelerating_counter[21] PWM_in_1|accelerating_counter[20] PWM_in_1|accelerating_counter[19] PWM_in_1|accelerating_counter[18] PWM_in_1|accelerating_counter[17] PWM_in_1|accelerating_counter[16] PWM_in_1|accelerating_counter[15] PWM_in_1|accelerating_counter[14] PWM_in_1|accelerating_counter[13] PWM_in_1|accelerating_counter[12] PWM_in_1|accelerating_counter[11] PWM_in_1|accelerating_counter[10] PWM_in_1|accelerating_counter[9] PWM_in_1|accelerating_counter[8] PWM_in_1|accelerating_counter[7] PWM_in_1|accelerating_counter[6] PWM_in_1|accelerating_counter[5] PWM_in_1|accelerating_counter[4] PWM_in_1|accelerating_counter[3] PWM_in_1|accelerating_counter[2] PWM_in_1|accelerating_counter[1] PWM_in_1|accelerating_counter[0] -autobundled
netbloc @PWM_in_1|accelerating_counter 1 7 4 2300 248 NJ 248 NJ 248 3500
levelinfo -pg 1 0 80 8350
levelinfo -hier PWM_in_1 * 330 730 980 1250 1450 1720 2060 2380 2740 3170 3690 4080 4560 4960 5380 5720 6120 6460 6930 7270 7680 8050 *
pagesize -pg 1 -db -bbox -sgen 0 -10 8350 1190
pagesize -hier PWM_in_1 -db -bbox -sgen 80 28 8230 1158
show
fullfit
#
# initialize ictrl to current module top_level work:top_level:NOFILE
ictrl init topinfo |
