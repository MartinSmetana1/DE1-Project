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
load symbol RTL_MUX22 work MUX pin S input.bot pinBus I0 input.left [23:0] pinBus I1 input.left [23:0] pinBus O output.right [23:0] fillcolor 1
load symbol RTL_ADD1 work RTL(+) pin I1 input.left pinBus I0 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_LT4 work RTL(<) pin O output.right pinBus I0 input.left [10:0] pinBus I1 input.left [10:0] fillcolor 1
load symbol RTL_MUX3 work MUX pin S input.bot pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_ROM1 work GEN pin O output.right pinBus A input.left [10:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_3 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_LT2 work RTL(<) pin O output.right pinBus I0 input.left [18:0] pinBus I1 input.left [18:0] fillcolor 1
load symbol RTL_DIV1 work RTL(/) pinBus I0 input.left [24:0] pinBus I1 input.left [6:0] pinBus O output.right [18:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [6:0] pinBus I1 input.left [17:0] pinBus O output.right [24:0] fillcolor 1
load symbol RTL_ADD2 work RTL(+) pinBus I0 input.left [6:0] pinBus I1 input.left [3:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_ADD3 work RTL(+) pin I1 input.left pinBus I0 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_LT0 work RTL(<) pin O output.right pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] fillcolor 1
load symbol RTL_GT0 work RTL(>) pin O output.right pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] fillcolor 1
load symbol RTL_AND0 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_GT work RTL(>) pin O output.right pinBus I0 input.left [23:0] pinBus I1 input.left [23:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_MUX7 work MUX pin S input.bot pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_DIV work RTL(/) pin O output.right pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] fillcolor 1
load symbol RTL_MOD0 work RTL(%) pinBus I0 input.left [6:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_ADD4 work RTL(+) pin I1 input.left pinBus I0 input.left [23:0] pinBus O output.right [12:0] fillcolor 1
load symbol RTL_ADD5 work RTL(+) pin I1 input.left pinBus I0 input.left [18:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_GT2 work RTL(>) pin O output.right pinBus I0 input.left [18:0] pinBus I1 input.left [18:0] fillcolor 1
load symbol RTL_MOD work RTL(%) pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_DIV0 work RTL(/) pinBus I0 input.left [6:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_2 work[9:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [9:0] pinBus Q output.right [9:0] fillcolor 1 sandwich 3 prop @bundle 10
load symbol RTL_REG_ASYNC__BREG_2 work[6:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [6:0] pinBus Q output.right [6:0] fillcolor 1 sandwich 3 prop @bundle 7
load symbol RTL_REG_SYNC__BREG_1 work[18:0]swws GEN pin C input.clk.left pinBus D input.left [18:0] pinBus Q output.right [18:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 19
load symbol RTL_REG__BREG_10 work[18:0]sww GEN pin C input.clk.left pinBus D input.left [18:0] pinBus Q output.right [18:0] fillcolor 1 sandwich 3 prop @bundle 19
load symbol RTL_REG_ASYNC__BREG_3 work[23:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [23:0] pinBus Q output.right [23:0] fillcolor 1 sandwich 3 prop @bundle 24
load inst PWM_in_1 pwm work:pwm:NOFILE -autohide -attr @cell(#000000) pwm -attr @fillcolor #fafafa -pinBusAttr hundreds_out @name hundreds_out[3:0] -pinBusAttr ones_out @name ones_out[3:0] -pinBusAttr tens_out @name tens_out[3:0] -pg 1 -lvl 1 -x 80 -y 58
load inst PWM_in_1|accelerating_counter_i RTL_MUX22 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_counter_i -pinBusAttr I0 @name I0[23:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[23:0] -pg 1 -lvl 7 -x 2040 -y 1008
load inst PWM_in_1|accelerating_counter_i__0 RTL_MUX22 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_counter_i__0 -pinBusAttr I0 @name I0[23:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[23:0] -pg 1 -lvl 8 -x 2410 -y 1048
load inst PWM_in_1|accelerating_counter_i__1 RTL_MUX22 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name accelerating_counter_i__1 -pinBusAttr I0 @name I0[23:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[23:0] -pg 1 -lvl 9 -x 2820 -y 908
load inst PWM_in_1|btn_down_cnt0_i RTL_ADD1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name btn_down_cnt0_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 1 -x 330 -y 308
load inst PWM_in_1|btn_down_cnt0_i__0 RTL_LT4 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name btn_down_cnt0_i__0 -pinBusAttr I0 @name I0[10:0] -pinBusAttr I1 @name I1[10:0] -pinBusAttr I1 @attr V=B\"01111101000\" -pg 1 -lvl 1 -x 330 -y 458
load inst PWM_in_1|btn_down_cnt_i RTL_MUX3 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_down_cnt_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 2 -x 660 -y 318
load inst PWM_in_1|btn_down_cnt_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_down_cnt_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 660 -y 468
load inst PWM_in_1|btn_down_db_i RTL_ROM1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ROM -attr @name btn_down_db_i -pinBusAttr A @name A[10:0] -pg 1 -lvl 4 -x 1190 -y 638
load inst PWM_in_1|btn_down_db_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_db_reg -pg 1 -lvl 5 -x 1390 -y 628
load inst PWM_in_1|btn_down_prev_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_prev_reg -pg 1 -lvl 6 -x 1690 -y 598
load inst PWM_in_1|btn_up_cnt0_i RTL_ADD1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name btn_up_cnt0_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 1 -x 330 -y 818
load inst PWM_in_1|btn_up_cnt0_i__0 RTL_LT4 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name btn_up_cnt0_i__0 -pinBusAttr I0 @name I0[10:0] -pinBusAttr I1 @name I1[10:0] -pinBusAttr I1 @attr V=B\"01111101000\" -pg 1 -lvl 1 -x 330 -y 698
load inst PWM_in_1|btn_up_cnt_i RTL_MUX3 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_up_cnt_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 2 -x 660 -y 828
load inst PWM_in_1|btn_up_cnt_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name btn_up_cnt_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 660 -y 708
load inst PWM_in_1|btn_up_db_i RTL_ROM1 work -hier PWM_in_1 -attr @cell(#000000) RTL_ROM -attr @name btn_up_db_i -pinBusAttr A @name A[10:0] -pg 1 -lvl 4 -x 1190 -y 778
load inst PWM_in_1|btn_up_db_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_db_reg -pg 1 -lvl 5 -x 1390 -y 768
load inst PWM_in_1|btn_up_prev_reg RTL_REG_ASYNC__BREG_3 work -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_prev_reg -pg 1 -lvl 6 -x 1690 -y 758
load inst PWM_in_1|counter1_i RTL_LT2 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name counter1_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pinBusAttr I1 @attr V=X\"30D3F\" -pg 1 -lvl 15 -x 5120 -y 578
load inst PWM_in_1|counter_i RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name counter_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 16 -x 5540 -y 558
load inst PWM_in_1|counter_i__0 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name counter_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 17 -x 5910 -y 588
load inst PWM_in_1|duty_cycle_internal0_i RTL_DIV1 work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name duty_cycle_internal0_i -pinBusAttr I0 @name I0[24:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pinBusAttr O @name O[18:0] -pg 1 -lvl 17 -x 5910 -y 758
load inst PWM_in_1|duty_cycle_internal1_i RTL_MULT work -hier PWM_in_1 -attr @cell(#000000) RTL_MULT -attr @name duty_cycle_internal1_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr I1 @attr V=X\"30D3F\" -pinBusAttr O @name O[24:0] -pg 1 -lvl 16 -x 5540 -y 758
load inst PWM_in_1|duty_percent0_i RTL_ADD2 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name duty_percent0_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -x 3770 -y 88
load inst PWM_in_1|duty_percent0_i__0 RTL_SUB work -hier PWM_in_1 -attr @cell(#000000) RTL_SUB -attr @name duty_percent0_i__0 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0000001\" -pinBusAttr O @name O[6:0] -pg 1 -lvl 9 -x 2820 -y 88
load inst PWM_in_1|duty_percent0_i__1 RTL_ADD3 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name duty_percent0_i__1 -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 9 -x 2820 -y 298
load inst PWM_in_1|duty_percent0_i__2 RTL_SUB work -hier PWM_in_1 -attr @cell(#000000) RTL_SUB -attr @name duty_percent0_i__2 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0001010\" -pinBusAttr O @name O[6:0] -pg 1 -lvl 10 -x 3230 -y 408
load inst PWM_in_1|duty_percent0_i__3 RTL_LT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name duty_percent0_i__3 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pg 1 -lvl 8 -x 2410 -y 408
load inst PWM_in_1|duty_percent1_i RTL_LT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_LT -attr @name duty_percent1_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1011010\" -pg 1 -lvl 11 -x 3770 -y 188
load inst PWM_in_1|duty_percent1_i__0 RTL_GT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name duty_percent1_i__0 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 9 -x 2820 -y 178
load inst PWM_in_1|duty_percent1_i__1 RTL_AND0 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_percent1_i__1 -pg 1 -lvl 10 -x 3230 -y 528
load inst PWM_in_1|duty_percent1_i__2 RTL_AND0 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_percent1_i__2 -pg 1 -lvl 7 -x 2040 -y 588
load inst PWM_in_1|duty_percent1_i__3 RTL_AND0 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_percent1_i__3 -pg 1 -lvl 8 -x 2410 -y 848
load inst PWM_in_1|duty_percent1_i__4 RTL_GT work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name duty_percent1_i__4 -pinBusAttr I0 @name I0[23:0] -pinBusAttr I1 @name I1[23:0] -pinBusAttr I1 @attr V=X\"001388\" -pg 1 -lvl 11 -x 3770 -y 918
load inst PWM_in_1|duty_percent1_i__5 RTL_GT0 work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name duty_percent1_i__5 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0001010\" -pg 1 -lvl 10 -x 3230 -y 628
load inst PWM_in_1|duty_percent1_i__6 RTL_AND0 work -hier PWM_in_1 -attr @cell(#000000) RTL_AND -attr @name duty_percent1_i__6 -pg 1 -lvl 8 -x 2410 -y 918
load inst PWM_in_1|duty_percent2_i RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name duty_percent2_i -pg 1 -lvl 9 -x 2820 -y 588
load inst PWM_in_1|duty_percent2_i__0 RTL_EQ work -hier PWM_in_1 -attr @cell(#000000) RTL_EQ -attr @name duty_percent2_i__0 -pg 1 -lvl 7 -x 2040 -y 908
load inst PWM_in_1|duty_percent_i RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\",\ S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 12 -x 4200 -y 218
load inst PWM_in_1|duty_percent_i__0 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__0 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 10 -x 3230 -y 98
load inst PWM_in_1|duty_percent_i__1 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__1 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -x 3770 -y 298
load inst PWM_in_1|duty_percent_i__10 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__10 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -x 4510 -y 798
load inst PWM_in_1|duty_percent_i__11 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__11 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 4200 -y 928
load inst PWM_in_1|duty_percent_i__12 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__12 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -x 4510 -y 938
load inst PWM_in_1|duty_percent_i__13 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__13 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -x 4780 -y 808
load inst PWM_in_1|duty_percent_i__2 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__2 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 13 -x 4510 -y 498
load inst PWM_in_1|duty_percent_i__3 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__3 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -x 3770 -y 418
load inst PWM_in_1|duty_percent_i__4 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__4 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 12 -x 4200 -y 568
load inst PWM_in_1|duty_percent_i__5 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__5 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 13 -x 4510 -y 618
load inst PWM_in_1|duty_percent_i__6 RTL_MUX7 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__6 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 14 -x 4780 -y 608
load inst PWM_in_1|duty_percent_i__7 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__7 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2820 -y 408
load inst PWM_in_1|duty_percent_i__8 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__8 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 3230 -y 258
load inst PWM_in_1|duty_percent_i__9 RTL_MUX0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MUX -attr @name duty_percent_i__9 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -x 3770 -y 548
load inst PWM_in_1|hundreds_out_i RTL_DIV work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name hundreds_out_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pg 1 -lvl 19 -x 6730 -y 578
load inst PWM_in_1|ones_out_i RTL_MOD0 work -hier PWM_in_1 -attr @cell(#000000) RTL_MOD -attr @name ones_out_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pinBusAttr O @name O[3:0] -pg 1 -lvl 19 -x 6730 -y 778
load inst PWM_in_1|plusOp_i RTL_ADD4 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i -pinBusAttr I0 @name I0[23:0] -pinBusAttr O @name O[12:0] -pg 1 -lvl 6 -x 1690 -y 1018
load inst PWM_in_1|plusOp_i__0 RTL_ADD5 work -hier PWM_in_1 -attr @cell(#000000) RTL_ADD -attr @name plusOp_i__0 -pinBusAttr I0 @name I0[18:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 17 -x 5910 -y 488
load inst PWM_in_1|pwm_out0_i RTL_GT2 work -hier PWM_in_1 -attr @cell(#000000) RTL_GT -attr @name pwm_out0_i -pinBusAttr I0 @name I0[18:0] -pinBusAttr I1 @name I1[18:0] -pg 1 -lvl 19 -x 6730 -y 678
load inst PWM_in_1|tens_out0_i RTL_MOD work -hier PWM_in_1 -attr @cell(#000000) RTL_MOD -attr @name tens_out0_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100100\" -pinBusAttr O @name O[6:0] -pg 1 -lvl 18 -x 6320 -y 858
load inst PWM_in_1|tens_out_i RTL_DIV0 work -hier PWM_in_1 -attr @cell(#000000) RTL_DIV -attr @name tens_out_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pinBusAttr O @name O[3:0] -pg 1 -lvl 19 -x 6730 -y 868
load inst PWM_in_1|btn_down_cnt_reg[9:0] RTL_REG_ASYNC__BREG_2 work[9:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_down_cnt_reg[9:0] -pg 1 -lvl 3 -x 930 -y 638
load inst PWM_in_1|duty_percent_reg[6:0] RTL_REG_ASYNC__BREG_2 work[6:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name duty_percent_reg[6:0] -pg 1 -lvl 15 -x 5120 -y 718
load inst PWM_in_1|btn_up_cnt_reg[9:0] RTL_REG_ASYNC__BREG_2 work[9:0]sssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name btn_up_cnt_reg[9:0] -pg 1 -lvl 3 -x 930 -y 808
load inst PWM_in_1|counter_reg[18:0] RTL_REG_SYNC__BREG_1 work[18:0]swws -hier PWM_in_1 -attr @cell(#000000) RTL_REG_SYNC -attr @name counter_reg[18:0] -pg 1 -lvl 18 -x 6320 -y 498
load inst PWM_in_1|duty_cycle_internal_reg[18:0] RTL_REG__BREG_10 work[18:0]sww -hier PWM_in_1 -attr @cell(#000000) RTL_REG -attr @name duty_cycle_internal_reg[18:0] -pg 1 -lvl 18 -x 6320 -y 698
load inst PWM_in_1|accelerating_counter_reg[23:0] RTL_REG_ASYNC__BREG_3 work[23:0]ssww -hier PWM_in_1 -attr @cell(#000000) RTL_REG_ASYNC -attr @name accelerating_counter_reg[23:0] -pg 1 -lvl 10 -x 3230 -y 778
load net PWM_in_1|<const0> -ground -attr @name <const0> -hierPin PWM_in_1 hundreds_out[3] -hierPin PWM_in_1 hundreds_out[2] -hierPin PWM_in_1 hundreds_out[1] -pin PWM_in_1|accelerating_counter_i I0[23] -pin PWM_in_1|accelerating_counter_i I0[22] -pin PWM_in_1|accelerating_counter_i I0[21] -pin PWM_in_1|accelerating_counter_i I0[20] -pin PWM_in_1|accelerating_counter_i I0[19] -pin PWM_in_1|accelerating_counter_i I0[18] -pin PWM_in_1|accelerating_counter_i I0[17] -pin PWM_in_1|accelerating_counter_i I0[16] -pin PWM_in_1|accelerating_counter_i I0[15] -pin PWM_in_1|accelerating_counter_i I0[14] -pin PWM_in_1|accelerating_counter_i I0[13] -pin PWM_in_1|accelerating_counter_i I0[12] -pin PWM_in_1|accelerating_counter_i I0[11] -pin PWM_in_1|accelerating_counter_i I0[10] -pin PWM_in_1|accelerating_counter_i I0[9] -pin PWM_in_1|accelerating_counter_i I0[8] -pin PWM_in_1|accelerating_counter_i I0[7] -pin PWM_in_1|accelerating_counter_i I0[6] -pin PWM_in_1|accelerating_counter_i I0[5] -pin PWM_in_1|accelerating_counter_i I0[4] -pin PWM_in_1|accelerating_counter_i I0[3] -pin PWM_in_1|accelerating_counter_i I0[2] -pin PWM_in_1|accelerating_counter_i I0[1] -pin PWM_in_1|accelerating_counter_i I0[0] -pin PWM_in_1|accelerating_counter_i I1[23] -pin PWM_in_1|accelerating_counter_i I1[22] -pin PWM_in_1|accelerating_counter_i I1[21] -pin PWM_in_1|accelerating_counter_i I1[20] -pin PWM_in_1|accelerating_counter_i I1[19] -pin PWM_in_1|accelerating_counter_i I1[18] -pin PWM_in_1|accelerating_counter_i I1[17] -pin PWM_in_1|accelerating_counter_i I1[16] -pin PWM_in_1|accelerating_counter_i I1[15] -pin PWM_in_1|accelerating_counter_i I1[14] -pin PWM_in_1|accelerating_counter_i I1[13] -pin PWM_in_1|accelerating_counter_i__0 I1[23] -pin PWM_in_1|accelerating_counter_i__0 I1[22] -pin PWM_in_1|accelerating_counter_i__0 I1[21] -pin PWM_in_1|accelerating_counter_i__0 I1[20] -pin PWM_in_1|accelerating_counter_i__0 I1[19] -pin PWM_in_1|accelerating_counter_i__0 I1[18] -pin PWM_in_1|accelerating_counter_i__0 I1[17] -pin PWM_in_1|accelerating_counter_i__0 I1[16] -pin PWM_in_1|accelerating_counter_i__0 I1[15] -pin PWM_in_1|accelerating_counter_i__0 I1[14] -pin PWM_in_1|accelerating_counter_i__0 I1[13] -pin PWM_in_1|accelerating_counter_i__0 I1[12] -pin PWM_in_1|accelerating_counter_i__0 I1[11] -pin PWM_in_1|accelerating_counter_i__0 I1[10] -pin PWM_in_1|accelerating_counter_i__0 I1[9] -pin PWM_in_1|accelerating_counter_i__0 I1[8] -pin PWM_in_1|accelerating_counter_i__0 I1[7] -pin PWM_in_1|accelerating_counter_i__0 I1[6] -pin PWM_in_1|accelerating_counter_i__0 I1[5] -pin PWM_in_1|accelerating_counter_i__0 I1[4] -pin PWM_in_1|accelerating_counter_i__0 I1[3] -pin PWM_in_1|accelerating_counter_i__0 I1[2] -pin PWM_in_1|accelerating_counter_i__0 I1[1] -pin PWM_in_1|accelerating_counter_i__0 I1[0] -pin PWM_in_1|btn_down_cnt0_i__0 I0[10] -pin PWM_in_1|btn_down_cnt0_i__0 I1[10] -pin PWM_in_1|btn_down_cnt0_i__0 I1[4] -pin PWM_in_1|btn_down_cnt0_i__0 I1[2] -pin PWM_in_1|btn_down_cnt0_i__0 I1[1] -pin PWM_in_1|btn_down_cnt0_i__0 I1[0] -pin PWM_in_1|btn_down_cnt_i I1[9] -pin PWM_in_1|btn_down_cnt_i I1[8] -pin PWM_in_1|btn_down_cnt_i I1[7] -pin PWM_in_1|btn_down_cnt_i I1[6] -pin PWM_in_1|btn_down_cnt_i I1[5] -pin PWM_in_1|btn_down_cnt_i I1[4] -pin PWM_in_1|btn_down_cnt_i I1[3] -pin PWM_in_1|btn_down_cnt_i I1[2] -pin PWM_in_1|btn_down_cnt_i I1[1] -pin PWM_in_1|btn_down_cnt_i I1[0] -pin PWM_in_1|btn_down_db_i A[10] -pin PWM_in_1|btn_up_cnt0_i__0 I0[10] -pin PWM_in_1|btn_up_cnt0_i__0 I1[10] -pin PWM_in_1|btn_up_cnt0_i__0 I1[4] -pin PWM_in_1|btn_up_cnt0_i__0 I1[2] -pin PWM_in_1|btn_up_cnt0_i__0 I1[1] -pin PWM_in_1|btn_up_cnt0_i__0 I1[0] -pin PWM_in_1|btn_up_cnt_i I1[9] -pin PWM_in_1|btn_up_cnt_i I1[8] -pin PWM_in_1|btn_up_cnt_i I1[7] -pin PWM_in_1|btn_up_cnt_i I1[6] -pin PWM_in_1|btn_up_cnt_i I1[5] -pin PWM_in_1|btn_up_cnt_i I1[4] -pin PWM_in_1|btn_up_cnt_i I1[3] -pin PWM_in_1|btn_up_cnt_i I1[2] -pin PWM_in_1|btn_up_cnt_i I1[1] -pin PWM_in_1|btn_up_cnt_i I1[0] -pin PWM_in_1|btn_up_db_i A[10] -pin PWM_in_1|counter1_i I1[18] -pin PWM_in_1|counter1_i I1[15] -pin PWM_in_1|counter1_i I1[14] -pin PWM_in_1|counter1_i I1[13] -pin PWM_in_1|counter1_i I1[12] -pin PWM_in_1|counter1_i I1[9] -pin PWM_in_1|counter1_i I1[7] -pin PWM_in_1|counter1_i I1[6] -pin PWM_in_1|counter_i I0 -pin PWM_in_1|counter_reg[18:0] D[18] -pin PWM_in_1|duty_cycle_internal0_i I1[4] -pin PWM_in_1|duty_cycle_internal0_i I1[3] -pin PWM_in_1|duty_cycle_internal0_i I1[1] -pin PWM_in_1|duty_cycle_internal0_i I1[0] -pin PWM_in_1|duty_cycle_internal1_i I1[15] -pin PWM_in_1|duty_cycle_internal1_i I1[14] -pin PWM_in_1|duty_cycle_internal1_i I1[13] -pin PWM_in_1|duty_cycle_internal1_i I1[12] -pin PWM_in_1|duty_cycle_internal1_i I1[9] -pin PWM_in_1|duty_cycle_internal1_i I1[7] -pin PWM_in_1|duty_cycle_internal1_i I1[6] -pin PWM_in_1|duty_percent0_i I1[2] -pin PWM_in_1|duty_percent0_i I1[0] -pin PWM_in_1|duty_percent0_i__0 I1[6] -pin PWM_in_1|duty_percent0_i__0 I1[5] -pin PWM_in_1|duty_percent0_i__0 I1[4] -pin PWM_in_1|duty_percent0_i__0 I1[3] -pin PWM_in_1|duty_percent0_i__0 I1[2] -pin PWM_in_1|duty_percent0_i__0 I1[1] -pin PWM_in_1|duty_percent0_i__2 I1[6] -pin PWM_in_1|duty_percent0_i__2 I1[5] -pin PWM_in_1|duty_percent0_i__2 I1[4] -pin PWM_in_1|duty_percent0_i__2 I1[2] -pin PWM_in_1|duty_percent0_i__2 I1[0] -pin PWM_in_1|duty_percent0_i__3 I1[4] -pin PWM_in_1|duty_percent0_i__3 I1[3] -pin PWM_in_1|duty_percent0_i__3 I1[1] -pin PWM_in_1|duty_percent0_i__3 I1[0] -pin PWM_in_1|duty_percent1_i I1[5] -pin PWM_in_1|duty_percent1_i I1[2] -pin PWM_in_1|duty_percent1_i I1[0] -pin PWM_in_1|duty_percent1_i__0 I1[6] -pin PWM_in_1|duty_percent1_i__0 I1[5] -pin PWM_in_1|duty_percent1_i__0 I1[4] -pin PWM_in_1|duty_percent1_i__0 I1[3] -pin PWM_in_1|duty_percent1_i__0 I1[2] -pin PWM_in_1|duty_percent1_i__0 I1[1] -pin PWM_in_1|duty_percent1_i__0 I1[0] -pin PWM_in_1|duty_percent1_i__4 I1[23] -pin PWM_in_1|duty_percent1_i__4 I1[22] -pin PWM_in_1|duty_percent1_i__4 I1[21] -pin PWM_in_1|duty_percent1_i__4 I1[20] -pin PWM_in_1|duty_percent1_i__4 I1[19] -pin PWM_in_1|duty_percent1_i__4 I1[18] -pin PWM_in_1|duty_percent1_i__4 I1[17] -pin PWM_in_1|duty_percent1_i__4 I1[16] -pin PWM_in_1|duty_percent1_i__4 I1[15] -pin PWM_in_1|duty_percent1_i__4 I1[14] -pin PWM_in_1|duty_percent1_i__4 I1[13] -pin PWM_in_1|duty_percent1_i__4 I1[11] -pin PWM_in_1|duty_percent1_i__4 I1[10] -pin PWM_in_1|duty_percent1_i__4 I1[6] -pin PWM_in_1|duty_percent1_i__4 I1[5] -pin PWM_in_1|duty_percent1_i__4 I1[4] -pin PWM_in_1|duty_percent1_i__4 I1[2] -pin PWM_in_1|duty_percent1_i__4 I1[1] -pin PWM_in_1|duty_percent1_i__4 I1[0] -pin PWM_in_1|duty_percent1_i__5 I1[6] -pin PWM_in_1|duty_percent1_i__5 I1[5] -pin PWM_in_1|duty_percent1_i__5 I1[4] -pin PWM_in_1|duty_percent1_i__5 I1[2] -pin PWM_in_1|duty_percent1_i__5 I1[0] -pin PWM_in_1|duty_percent2_i I1 -pin PWM_in_1|duty_percent2_i__0 I1 -pin PWM_in_1|duty_percent_i I1[4] -pin PWM_in_1|duty_percent_i I1[3] -pin PWM_in_1|duty_percent_i I1[1] -pin PWM_in_1|duty_percent_i I1[0] -pin PWM_in_1|duty_percent_i__3 I1[6] -pin PWM_in_1|duty_percent_i__3 I1[5] -pin PWM_in_1|duty_percent_i__3 I1[4] -pin PWM_in_1|duty_percent_i__3 I1[3] -pin PWM_in_1|duty_percent_i__3 I1[2] -pin PWM_in_1|duty_percent_i__3 I1[1] -pin PWM_in_1|duty_percent_i__3 I1[0] -pin PWM_in_1|duty_percent_i__7 I1 -pin PWM_in_1|hundreds_out_i I1[4] -pin PWM_in_1|hundreds_out_i I1[3] -pin PWM_in_1|hundreds_out_i I1[1] -pin PWM_in_1|hundreds_out_i I1[0] -pin PWM_in_1|ones_out_i I1[2] -pin PWM_in_1|ones_out_i I1[0] -pin PWM_in_1|tens_out0_i I1[4] -pin PWM_in_1|tens_out0_i I1[3] -pin PWM_in_1|tens_out0_i I1[1] -pin PWM_in_1|tens_out0_i I1[0] -pin PWM_in_1|tens_out_i I1[2] -pin PWM_in_1|tens_out_i I1[0]
load net PWM_in_1|<const1> -power -attr @name <const1> -pin PWM_in_1|btn_down_cnt0_i I1 -pin PWM_in_1|btn_down_cnt0_i__0 I1[9] -pin PWM_in_1|btn_down_cnt0_i__0 I1[8] -pin PWM_in_1|btn_down_cnt0_i__0 I1[7] -pin PWM_in_1|btn_down_cnt0_i__0 I1[6] -pin PWM_in_1|btn_down_cnt0_i__0 I1[5] -pin PWM_in_1|btn_down_cnt0_i__0 I1[3] -pin PWM_in_1|btn_down_cnt_i__0 I1 -pin PWM_in_1|btn_up_cnt0_i I1 -pin PWM_in_1|btn_up_cnt0_i__0 I1[9] -pin PWM_in_1|btn_up_cnt0_i__0 I1[8] -pin PWM_in_1|btn_up_cnt0_i__0 I1[7] -pin PWM_in_1|btn_up_cnt0_i__0 I1[6] -pin PWM_in_1|btn_up_cnt0_i__0 I1[5] -pin PWM_in_1|btn_up_cnt0_i__0 I1[3] -pin PWM_in_1|btn_up_cnt_i__0 I1 -pin PWM_in_1|counter1_i I1[17] -pin PWM_in_1|counter1_i I1[16] -pin PWM_in_1|counter1_i I1[11] -pin PWM_in_1|counter1_i I1[10] -pin PWM_in_1|counter1_i I1[8] -pin PWM_in_1|counter1_i I1[5] -pin PWM_in_1|counter1_i I1[4] -pin PWM_in_1|counter1_i I1[3] -pin PWM_in_1|counter1_i I1[2] -pin PWM_in_1|counter1_i I1[1] -pin PWM_in_1|counter1_i I1[0] -pin PWM_in_1|counter_i I1 -pin PWM_in_1|counter_i__0 I0 -pin PWM_in_1|duty_cycle_internal0_i I1[6] -pin PWM_in_1|duty_cycle_internal0_i I1[5] -pin PWM_in_1|duty_cycle_internal0_i I1[2] -pin PWM_in_1|duty_cycle_internal1_i I1[17] -pin PWM_in_1|duty_cycle_internal1_i I1[16] -pin PWM_in_1|duty_cycle_internal1_i I1[11] -pin PWM_in_1|duty_cycle_internal1_i I1[10] -pin PWM_in_1|duty_cycle_internal1_i I1[8] -pin PWM_in_1|duty_cycle_internal1_i I1[5] -pin PWM_in_1|duty_cycle_internal1_i I1[4] -pin PWM_in_1|duty_cycle_internal1_i I1[3] -pin PWM_in_1|duty_cycle_internal1_i I1[2] -pin PWM_in_1|duty_cycle_internal1_i I1[1] -pin PWM_in_1|duty_cycle_internal1_i I1[0] -pin PWM_in_1|duty_percent0_i I1[3] -pin PWM_in_1|duty_percent0_i I1[1] -pin PWM_in_1|duty_percent0_i__0 I1[0] -pin PWM_in_1|duty_percent0_i__1 I1 -pin PWM_in_1|duty_percent0_i__2 I1[3] -pin PWM_in_1|duty_percent0_i__2 I1[1] -pin PWM_in_1|duty_percent0_i__3 I1[6] -pin PWM_in_1|duty_percent0_i__3 I1[5] -pin PWM_in_1|duty_percent0_i__3 I1[2] -pin PWM_in_1|duty_percent1_i I1[6] -pin PWM_in_1|duty_percent1_i I1[4] -pin PWM_in_1|duty_percent1_i I1[3] -pin PWM_in_1|duty_percent1_i I1[1] -pin PWM_in_1|duty_percent1_i__4 I1[12] -pin PWM_in_1|duty_percent1_i__4 I1[9] -pin PWM_in_1|duty_percent1_i__4 I1[8] -pin PWM_in_1|duty_percent1_i__4 I1[7] -pin PWM_in_1|duty_percent1_i__4 I1[3] -pin PWM_in_1|duty_percent1_i__5 I1[3] -pin PWM_in_1|duty_percent1_i__5 I1[1] -pin PWM_in_1|duty_percent_i I1[6] -pin PWM_in_1|duty_percent_i I1[5] -pin PWM_in_1|duty_percent_i I1[2] -pin PWM_in_1|duty_percent_i__10 I0 -pin PWM_in_1|duty_percent_i__11 I0 -pin PWM_in_1|duty_percent_i__8 I0 -pin PWM_in_1|hundreds_out_i I1[6] -pin PWM_in_1|hundreds_out_i I1[5] -pin PWM_in_1|hundreds_out_i I1[2] -pin PWM_in_1|ones_out_i I1[3] -pin PWM_in_1|ones_out_i I1[1] -pin PWM_in_1|plusOp_i I1 -pin PWM_in_1|plusOp_i__0 I1 -pin PWM_in_1|tens_out0_i I1[6] -pin PWM_in_1|tens_out0_i I1[5] -pin PWM_in_1|tens_out0_i I1[2] -pin PWM_in_1|tens_out_i I1[3] -pin PWM_in_1|tens_out_i I1[1]
load net PWM_in_1|accelerating_counter[0] -attr @rip(#000000) 0 -attr @name accelerating_counter[0] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[0] -pin PWM_in_1|duty_percent1_i__4 I0[0] -pin PWM_in_1|plusOp_i I0[0]
load net PWM_in_1|accelerating_counter[10] -attr @rip(#000000) 10 -attr @name accelerating_counter[10] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[10] -pin PWM_in_1|duty_percent1_i__4 I0[10] -pin PWM_in_1|plusOp_i I0[10]
load net PWM_in_1|accelerating_counter[11] -attr @rip(#000000) 11 -attr @name accelerating_counter[11] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[11] -pin PWM_in_1|duty_percent1_i__4 I0[11] -pin PWM_in_1|plusOp_i I0[11]
load net PWM_in_1|accelerating_counter[12] -attr @rip(#000000) 12 -attr @name accelerating_counter[12] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[12] -pin PWM_in_1|duty_percent1_i__4 I0[12] -pin PWM_in_1|plusOp_i I0[12]
load net PWM_in_1|accelerating_counter[13] -attr @rip(#000000) 13 -attr @name accelerating_counter[13] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[13] -pin PWM_in_1|duty_percent1_i__4 I0[13] -pin PWM_in_1|plusOp_i I0[13]
load net PWM_in_1|accelerating_counter[14] -attr @rip(#000000) 14 -attr @name accelerating_counter[14] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[14] -pin PWM_in_1|duty_percent1_i__4 I0[14] -pin PWM_in_1|plusOp_i I0[14]
load net PWM_in_1|accelerating_counter[15] -attr @rip(#000000) 15 -attr @name accelerating_counter[15] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[15] -pin PWM_in_1|duty_percent1_i__4 I0[15] -pin PWM_in_1|plusOp_i I0[15]
load net PWM_in_1|accelerating_counter[16] -attr @rip(#000000) 16 -attr @name accelerating_counter[16] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[16] -pin PWM_in_1|duty_percent1_i__4 I0[16] -pin PWM_in_1|plusOp_i I0[16]
load net PWM_in_1|accelerating_counter[17] -attr @rip(#000000) 17 -attr @name accelerating_counter[17] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[17] -pin PWM_in_1|duty_percent1_i__4 I0[17] -pin PWM_in_1|plusOp_i I0[17]
load net PWM_in_1|accelerating_counter[18] -attr @rip(#000000) 18 -attr @name accelerating_counter[18] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[18] -pin PWM_in_1|duty_percent1_i__4 I0[18] -pin PWM_in_1|plusOp_i I0[18]
load net PWM_in_1|accelerating_counter[19] -attr @rip(#000000) 19 -attr @name accelerating_counter[19] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[19] -pin PWM_in_1|duty_percent1_i__4 I0[19] -pin PWM_in_1|plusOp_i I0[19]
load net PWM_in_1|accelerating_counter[1] -attr @rip(#000000) 1 -attr @name accelerating_counter[1] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[1] -pin PWM_in_1|duty_percent1_i__4 I0[1] -pin PWM_in_1|plusOp_i I0[1]
load net PWM_in_1|accelerating_counter[20] -attr @rip(#000000) 20 -attr @name accelerating_counter[20] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[20] -pin PWM_in_1|duty_percent1_i__4 I0[20] -pin PWM_in_1|plusOp_i I0[20]
load net PWM_in_1|accelerating_counter[21] -attr @rip(#000000) 21 -attr @name accelerating_counter[21] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[21] -pin PWM_in_1|duty_percent1_i__4 I0[21] -pin PWM_in_1|plusOp_i I0[21]
load net PWM_in_1|accelerating_counter[22] -attr @rip(#000000) 22 -attr @name accelerating_counter[22] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[22] -pin PWM_in_1|duty_percent1_i__4 I0[22] -pin PWM_in_1|plusOp_i I0[22]
load net PWM_in_1|accelerating_counter[23] -attr @rip(#000000) 23 -attr @name accelerating_counter[23] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[23] -pin PWM_in_1|duty_percent1_i__4 I0[23] -pin PWM_in_1|plusOp_i I0[23]
load net PWM_in_1|accelerating_counter[2] -attr @rip(#000000) 2 -attr @name accelerating_counter[2] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[2] -pin PWM_in_1|duty_percent1_i__4 I0[2] -pin PWM_in_1|plusOp_i I0[2]
load net PWM_in_1|accelerating_counter[3] -attr @rip(#000000) 3 -attr @name accelerating_counter[3] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[3] -pin PWM_in_1|duty_percent1_i__4 I0[3] -pin PWM_in_1|plusOp_i I0[3]
load net PWM_in_1|accelerating_counter[4] -attr @rip(#000000) 4 -attr @name accelerating_counter[4] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[4] -pin PWM_in_1|duty_percent1_i__4 I0[4] -pin PWM_in_1|plusOp_i I0[4]
load net PWM_in_1|accelerating_counter[5] -attr @rip(#000000) 5 -attr @name accelerating_counter[5] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[5] -pin PWM_in_1|duty_percent1_i__4 I0[5] -pin PWM_in_1|plusOp_i I0[5]
load net PWM_in_1|accelerating_counter[6] -attr @rip(#000000) 6 -attr @name accelerating_counter[6] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[6] -pin PWM_in_1|duty_percent1_i__4 I0[6] -pin PWM_in_1|plusOp_i I0[6]
load net PWM_in_1|accelerating_counter[7] -attr @rip(#000000) 7 -attr @name accelerating_counter[7] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[7] -pin PWM_in_1|duty_percent1_i__4 I0[7] -pin PWM_in_1|plusOp_i I0[7]
load net PWM_in_1|accelerating_counter[8] -attr @rip(#000000) 8 -attr @name accelerating_counter[8] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[8] -pin PWM_in_1|duty_percent1_i__4 I0[8] -pin PWM_in_1|plusOp_i I0[8]
load net PWM_in_1|accelerating_counter[9] -attr @rip(#000000) 9 -attr @name accelerating_counter[9] -pin PWM_in_1|accelerating_counter_reg[23:0] Q[9] -pin PWM_in_1|duty_percent1_i__4 I0[9] -pin PWM_in_1|plusOp_i I0[9]
load net PWM_in_1|accelerating_counter__0[0] -attr @rip(#000000) O[0] -attr @name accelerating_counter__0[0] -pin PWM_in_1|accelerating_counter_i__1 O[0] -pin PWM_in_1|accelerating_counter_reg[23:0] D[0]
load net PWM_in_1|accelerating_counter__0[10] -attr @rip(#000000) O[10] -attr @name accelerating_counter__0[10] -pin PWM_in_1|accelerating_counter_i__1 O[10] -pin PWM_in_1|accelerating_counter_reg[23:0] D[10]
load net PWM_in_1|accelerating_counter__0[11] -attr @rip(#000000) O[11] -attr @name accelerating_counter__0[11] -pin PWM_in_1|accelerating_counter_i__1 O[11] -pin PWM_in_1|accelerating_counter_reg[23:0] D[11]
load net PWM_in_1|accelerating_counter__0[12] -attr @rip(#000000) O[12] -attr @name accelerating_counter__0[12] -pin PWM_in_1|accelerating_counter_i__1 O[12] -pin PWM_in_1|accelerating_counter_reg[23:0] D[12]
load net PWM_in_1|accelerating_counter__0[13] -attr @rip(#000000) O[13] -attr @name accelerating_counter__0[13] -pin PWM_in_1|accelerating_counter_i__1 O[13] -pin PWM_in_1|accelerating_counter_reg[23:0] D[13]
load net PWM_in_1|accelerating_counter__0[14] -attr @rip(#000000) O[14] -attr @name accelerating_counter__0[14] -pin PWM_in_1|accelerating_counter_i__1 O[14] -pin PWM_in_1|accelerating_counter_reg[23:0] D[14]
load net PWM_in_1|accelerating_counter__0[15] -attr @rip(#000000) O[15] -attr @name accelerating_counter__0[15] -pin PWM_in_1|accelerating_counter_i__1 O[15] -pin PWM_in_1|accelerating_counter_reg[23:0] D[15]
load net PWM_in_1|accelerating_counter__0[16] -attr @rip(#000000) O[16] -attr @name accelerating_counter__0[16] -pin PWM_in_1|accelerating_counter_i__1 O[16] -pin PWM_in_1|accelerating_counter_reg[23:0] D[16]
load net PWM_in_1|accelerating_counter__0[17] -attr @rip(#000000) O[17] -attr @name accelerating_counter__0[17] -pin PWM_in_1|accelerating_counter_i__1 O[17] -pin PWM_in_1|accelerating_counter_reg[23:0] D[17]
load net PWM_in_1|accelerating_counter__0[18] -attr @rip(#000000) O[18] -attr @name accelerating_counter__0[18] -pin PWM_in_1|accelerating_counter_i__1 O[18] -pin PWM_in_1|accelerating_counter_reg[23:0] D[18]
load net PWM_in_1|accelerating_counter__0[19] -attr @rip(#000000) O[19] -attr @name accelerating_counter__0[19] -pin PWM_in_1|accelerating_counter_i__1 O[19] -pin PWM_in_1|accelerating_counter_reg[23:0] D[19]
load net PWM_in_1|accelerating_counter__0[1] -attr @rip(#000000) O[1] -attr @name accelerating_counter__0[1] -pin PWM_in_1|accelerating_counter_i__1 O[1] -pin PWM_in_1|accelerating_counter_reg[23:0] D[1]
load net PWM_in_1|accelerating_counter__0[20] -attr @rip(#000000) O[20] -attr @name accelerating_counter__0[20] -pin PWM_in_1|accelerating_counter_i__1 O[20] -pin PWM_in_1|accelerating_counter_reg[23:0] D[20]
load net PWM_in_1|accelerating_counter__0[21] -attr @rip(#000000) O[21] -attr @name accelerating_counter__0[21] -pin PWM_in_1|accelerating_counter_i__1 O[21] -pin PWM_in_1|accelerating_counter_reg[23:0] D[21]
load net PWM_in_1|accelerating_counter__0[22] -attr @rip(#000000) O[22] -attr @name accelerating_counter__0[22] -pin PWM_in_1|accelerating_counter_i__1 O[22] -pin PWM_in_1|accelerating_counter_reg[23:0] D[22]
load net PWM_in_1|accelerating_counter__0[23] -attr @rip(#000000) O[23] -attr @name accelerating_counter__0[23] -pin PWM_in_1|accelerating_counter_i__1 O[23] -pin PWM_in_1|accelerating_counter_reg[23:0] D[23]
load net PWM_in_1|accelerating_counter__0[2] -attr @rip(#000000) O[2] -attr @name accelerating_counter__0[2] -pin PWM_in_1|accelerating_counter_i__1 O[2] -pin PWM_in_1|accelerating_counter_reg[23:0] D[2]
load net PWM_in_1|accelerating_counter__0[3] -attr @rip(#000000) O[3] -attr @name accelerating_counter__0[3] -pin PWM_in_1|accelerating_counter_i__1 O[3] -pin PWM_in_1|accelerating_counter_reg[23:0] D[3]
load net PWM_in_1|accelerating_counter__0[4] -attr @rip(#000000) O[4] -attr @name accelerating_counter__0[4] -pin PWM_in_1|accelerating_counter_i__1 O[4] -pin PWM_in_1|accelerating_counter_reg[23:0] D[4]
load net PWM_in_1|accelerating_counter__0[5] -attr @rip(#000000) O[5] -attr @name accelerating_counter__0[5] -pin PWM_in_1|accelerating_counter_i__1 O[5] -pin PWM_in_1|accelerating_counter_reg[23:0] D[5]
load net PWM_in_1|accelerating_counter__0[6] -attr @rip(#000000) O[6] -attr @name accelerating_counter__0[6] -pin PWM_in_1|accelerating_counter_i__1 O[6] -pin PWM_in_1|accelerating_counter_reg[23:0] D[6]
load net PWM_in_1|accelerating_counter__0[7] -attr @rip(#000000) O[7] -attr @name accelerating_counter__0[7] -pin PWM_in_1|accelerating_counter_i__1 O[7] -pin PWM_in_1|accelerating_counter_reg[23:0] D[7]
load net PWM_in_1|accelerating_counter__0[8] -attr @rip(#000000) O[8] -attr @name accelerating_counter__0[8] -pin PWM_in_1|accelerating_counter_i__1 O[8] -pin PWM_in_1|accelerating_counter_reg[23:0] D[8]
load net PWM_in_1|accelerating_counter__0[9] -attr @rip(#000000) O[9] -attr @name accelerating_counter__0[9] -pin PWM_in_1|accelerating_counter_i__1 O[9] -pin PWM_in_1|accelerating_counter_reg[23:0] D[9]
load net PWM_in_1|accelerating_counter_i__0_n_0 -attr @rip(#000000) O[23] -attr @name accelerating_counter_i__0_n_0 -pin PWM_in_1|accelerating_counter_i__0 O[23] -pin PWM_in_1|accelerating_counter_i__1 I1[23]
load net PWM_in_1|accelerating_counter_i__0_n_1 -attr @rip(#000000) O[22] -attr @name accelerating_counter_i__0_n_1 -pin PWM_in_1|accelerating_counter_i__0 O[22] -pin PWM_in_1|accelerating_counter_i__1 I1[22]
load net PWM_in_1|accelerating_counter_i__0_n_10 -attr @rip(#000000) O[13] -attr @name accelerating_counter_i__0_n_10 -pin PWM_in_1|accelerating_counter_i__0 O[13] -pin PWM_in_1|accelerating_counter_i__1 I1[13]
load net PWM_in_1|accelerating_counter_i__0_n_11 -attr @rip(#000000) O[12] -attr @name accelerating_counter_i__0_n_11 -pin PWM_in_1|accelerating_counter_i__0 O[12] -pin PWM_in_1|accelerating_counter_i__1 I1[12]
load net PWM_in_1|accelerating_counter_i__0_n_12 -attr @rip(#000000) O[11] -attr @name accelerating_counter_i__0_n_12 -pin PWM_in_1|accelerating_counter_i__0 O[11] -pin PWM_in_1|accelerating_counter_i__1 I1[11]
load net PWM_in_1|accelerating_counter_i__0_n_13 -attr @rip(#000000) O[10] -attr @name accelerating_counter_i__0_n_13 -pin PWM_in_1|accelerating_counter_i__0 O[10] -pin PWM_in_1|accelerating_counter_i__1 I1[10]
load net PWM_in_1|accelerating_counter_i__0_n_14 -attr @rip(#000000) O[9] -attr @name accelerating_counter_i__0_n_14 -pin PWM_in_1|accelerating_counter_i__0 O[9] -pin PWM_in_1|accelerating_counter_i__1 I1[9]
load net PWM_in_1|accelerating_counter_i__0_n_15 -attr @rip(#000000) O[8] -attr @name accelerating_counter_i__0_n_15 -pin PWM_in_1|accelerating_counter_i__0 O[8] -pin PWM_in_1|accelerating_counter_i__1 I1[8]
load net PWM_in_1|accelerating_counter_i__0_n_16 -attr @rip(#000000) O[7] -attr @name accelerating_counter_i__0_n_16 -pin PWM_in_1|accelerating_counter_i__0 O[7] -pin PWM_in_1|accelerating_counter_i__1 I1[7]
load net PWM_in_1|accelerating_counter_i__0_n_17 -attr @rip(#000000) O[6] -attr @name accelerating_counter_i__0_n_17 -pin PWM_in_1|accelerating_counter_i__0 O[6] -pin PWM_in_1|accelerating_counter_i__1 I1[6]
load net PWM_in_1|accelerating_counter_i__0_n_18 -attr @rip(#000000) O[5] -attr @name accelerating_counter_i__0_n_18 -pin PWM_in_1|accelerating_counter_i__0 O[5] -pin PWM_in_1|accelerating_counter_i__1 I1[5]
load net PWM_in_1|accelerating_counter_i__0_n_19 -attr @rip(#000000) O[4] -attr @name accelerating_counter_i__0_n_19 -pin PWM_in_1|accelerating_counter_i__0 O[4] -pin PWM_in_1|accelerating_counter_i__1 I1[4]
load net PWM_in_1|accelerating_counter_i__0_n_2 -attr @rip(#000000) O[21] -attr @name accelerating_counter_i__0_n_2 -pin PWM_in_1|accelerating_counter_i__0 O[21] -pin PWM_in_1|accelerating_counter_i__1 I1[21]
load net PWM_in_1|accelerating_counter_i__0_n_20 -attr @rip(#000000) O[3] -attr @name accelerating_counter_i__0_n_20 -pin PWM_in_1|accelerating_counter_i__0 O[3] -pin PWM_in_1|accelerating_counter_i__1 I1[3]
load net PWM_in_1|accelerating_counter_i__0_n_21 -attr @rip(#000000) O[2] -attr @name accelerating_counter_i__0_n_21 -pin PWM_in_1|accelerating_counter_i__0 O[2] -pin PWM_in_1|accelerating_counter_i__1 I1[2]
load net PWM_in_1|accelerating_counter_i__0_n_22 -attr @rip(#000000) O[1] -attr @name accelerating_counter_i__0_n_22 -pin PWM_in_1|accelerating_counter_i__0 O[1] -pin PWM_in_1|accelerating_counter_i__1 I1[1]
load net PWM_in_1|accelerating_counter_i__0_n_23 -attr @rip(#000000) O[0] -attr @name accelerating_counter_i__0_n_23 -pin PWM_in_1|accelerating_counter_i__0 O[0] -pin PWM_in_1|accelerating_counter_i__1 I1[0]
load net PWM_in_1|accelerating_counter_i__0_n_3 -attr @rip(#000000) O[20] -attr @name accelerating_counter_i__0_n_3 -pin PWM_in_1|accelerating_counter_i__0 O[20] -pin PWM_in_1|accelerating_counter_i__1 I1[20]
load net PWM_in_1|accelerating_counter_i__0_n_4 -attr @rip(#000000) O[19] -attr @name accelerating_counter_i__0_n_4 -pin PWM_in_1|accelerating_counter_i__0 O[19] -pin PWM_in_1|accelerating_counter_i__1 I1[19]
load net PWM_in_1|accelerating_counter_i__0_n_5 -attr @rip(#000000) O[18] -attr @name accelerating_counter_i__0_n_5 -pin PWM_in_1|accelerating_counter_i__0 O[18] -pin PWM_in_1|accelerating_counter_i__1 I1[18]
load net PWM_in_1|accelerating_counter_i__0_n_6 -attr @rip(#000000) O[17] -attr @name accelerating_counter_i__0_n_6 -pin PWM_in_1|accelerating_counter_i__0 O[17] -pin PWM_in_1|accelerating_counter_i__1 I1[17]
load net PWM_in_1|accelerating_counter_i__0_n_7 -attr @rip(#000000) O[16] -attr @name accelerating_counter_i__0_n_7 -pin PWM_in_1|accelerating_counter_i__0 O[16] -pin PWM_in_1|accelerating_counter_i__1 I1[16]
load net PWM_in_1|accelerating_counter_i__0_n_8 -attr @rip(#000000) O[15] -attr @name accelerating_counter_i__0_n_8 -pin PWM_in_1|accelerating_counter_i__0 O[15] -pin PWM_in_1|accelerating_counter_i__1 I1[15]
load net PWM_in_1|accelerating_counter_i__0_n_9 -attr @rip(#000000) O[14] -attr @name accelerating_counter_i__0_n_9 -pin PWM_in_1|accelerating_counter_i__0 O[14] -pin PWM_in_1|accelerating_counter_i__1 I1[14]
load net PWM_in_1|accelerating_counter_i_n_0 -attr @rip(#000000) O[23] -attr @name accelerating_counter_i_n_0 -pin PWM_in_1|accelerating_counter_i O[23] -pin PWM_in_1|accelerating_counter_i__0 I0[23] -pin PWM_in_1|accelerating_counter_i__1 I0[23]
load net PWM_in_1|accelerating_counter_i_n_1 -attr @rip(#000000) O[22] -attr @name accelerating_counter_i_n_1 -pin PWM_in_1|accelerating_counter_i O[22] -pin PWM_in_1|accelerating_counter_i__0 I0[22] -pin PWM_in_1|accelerating_counter_i__1 I0[22]
load net PWM_in_1|accelerating_counter_i_n_10 -attr @rip(#000000) O[13] -attr @name accelerating_counter_i_n_10 -pin PWM_in_1|accelerating_counter_i O[13] -pin PWM_in_1|accelerating_counter_i__0 I0[13] -pin PWM_in_1|accelerating_counter_i__1 I0[13]
load net PWM_in_1|accelerating_counter_i_n_11 -attr @rip(#000000) O[12] -attr @name accelerating_counter_i_n_11 -pin PWM_in_1|accelerating_counter_i O[12] -pin PWM_in_1|accelerating_counter_i__0 I0[12] -pin PWM_in_1|accelerating_counter_i__1 I0[12]
load net PWM_in_1|accelerating_counter_i_n_12 -attr @rip(#000000) O[11] -attr @name accelerating_counter_i_n_12 -pin PWM_in_1|accelerating_counter_i O[11] -pin PWM_in_1|accelerating_counter_i__0 I0[11] -pin PWM_in_1|accelerating_counter_i__1 I0[11]
load net PWM_in_1|accelerating_counter_i_n_13 -attr @rip(#000000) O[10] -attr @name accelerating_counter_i_n_13 -pin PWM_in_1|accelerating_counter_i O[10] -pin PWM_in_1|accelerating_counter_i__0 I0[10] -pin PWM_in_1|accelerating_counter_i__1 I0[10]
load net PWM_in_1|accelerating_counter_i_n_14 -attr @rip(#000000) O[9] -attr @name accelerating_counter_i_n_14 -pin PWM_in_1|accelerating_counter_i O[9] -pin PWM_in_1|accelerating_counter_i__0 I0[9] -pin PWM_in_1|accelerating_counter_i__1 I0[9]
load net PWM_in_1|accelerating_counter_i_n_15 -attr @rip(#000000) O[8] -attr @name accelerating_counter_i_n_15 -pin PWM_in_1|accelerating_counter_i O[8] -pin PWM_in_1|accelerating_counter_i__0 I0[8] -pin PWM_in_1|accelerating_counter_i__1 I0[8]
load net PWM_in_1|accelerating_counter_i_n_16 -attr @rip(#000000) O[7] -attr @name accelerating_counter_i_n_16 -pin PWM_in_1|accelerating_counter_i O[7] -pin PWM_in_1|accelerating_counter_i__0 I0[7] -pin PWM_in_1|accelerating_counter_i__1 I0[7]
load net PWM_in_1|accelerating_counter_i_n_17 -attr @rip(#000000) O[6] -attr @name accelerating_counter_i_n_17 -pin PWM_in_1|accelerating_counter_i O[6] -pin PWM_in_1|accelerating_counter_i__0 I0[6] -pin PWM_in_1|accelerating_counter_i__1 I0[6]
load net PWM_in_1|accelerating_counter_i_n_18 -attr @rip(#000000) O[5] -attr @name accelerating_counter_i_n_18 -pin PWM_in_1|accelerating_counter_i O[5] -pin PWM_in_1|accelerating_counter_i__0 I0[5] -pin PWM_in_1|accelerating_counter_i__1 I0[5]
load net PWM_in_1|accelerating_counter_i_n_19 -attr @rip(#000000) O[4] -attr @name accelerating_counter_i_n_19 -pin PWM_in_1|accelerating_counter_i O[4] -pin PWM_in_1|accelerating_counter_i__0 I0[4] -pin PWM_in_1|accelerating_counter_i__1 I0[4]
load net PWM_in_1|accelerating_counter_i_n_2 -attr @rip(#000000) O[21] -attr @name accelerating_counter_i_n_2 -pin PWM_in_1|accelerating_counter_i O[21] -pin PWM_in_1|accelerating_counter_i__0 I0[21] -pin PWM_in_1|accelerating_counter_i__1 I0[21]
load net PWM_in_1|accelerating_counter_i_n_20 -attr @rip(#000000) O[3] -attr @name accelerating_counter_i_n_20 -pin PWM_in_1|accelerating_counter_i O[3] -pin PWM_in_1|accelerating_counter_i__0 I0[3] -pin PWM_in_1|accelerating_counter_i__1 I0[3]
load net PWM_in_1|accelerating_counter_i_n_21 -attr @rip(#000000) O[2] -attr @name accelerating_counter_i_n_21 -pin PWM_in_1|accelerating_counter_i O[2] -pin PWM_in_1|accelerating_counter_i__0 I0[2] -pin PWM_in_1|accelerating_counter_i__1 I0[2]
load net PWM_in_1|accelerating_counter_i_n_22 -attr @rip(#000000) O[1] -attr @name accelerating_counter_i_n_22 -pin PWM_in_1|accelerating_counter_i O[1] -pin PWM_in_1|accelerating_counter_i__0 I0[1] -pin PWM_in_1|accelerating_counter_i__1 I0[1]
load net PWM_in_1|accelerating_counter_i_n_23 -attr @rip(#000000) O[0] -attr @name accelerating_counter_i_n_23 -pin PWM_in_1|accelerating_counter_i O[0] -pin PWM_in_1|accelerating_counter_i__0 I0[0] -pin PWM_in_1|accelerating_counter_i__1 I0[0]
load net PWM_in_1|accelerating_counter_i_n_3 -attr @rip(#000000) O[20] -attr @name accelerating_counter_i_n_3 -pin PWM_in_1|accelerating_counter_i O[20] -pin PWM_in_1|accelerating_counter_i__0 I0[20] -pin PWM_in_1|accelerating_counter_i__1 I0[20]
load net PWM_in_1|accelerating_counter_i_n_4 -attr @rip(#000000) O[19] -attr @name accelerating_counter_i_n_4 -pin PWM_in_1|accelerating_counter_i O[19] -pin PWM_in_1|accelerating_counter_i__0 I0[19] -pin PWM_in_1|accelerating_counter_i__1 I0[19]
load net PWM_in_1|accelerating_counter_i_n_5 -attr @rip(#000000) O[18] -attr @name accelerating_counter_i_n_5 -pin PWM_in_1|accelerating_counter_i O[18] -pin PWM_in_1|accelerating_counter_i__0 I0[18] -pin PWM_in_1|accelerating_counter_i__1 I0[18]
load net PWM_in_1|accelerating_counter_i_n_6 -attr @rip(#000000) O[17] -attr @name accelerating_counter_i_n_6 -pin PWM_in_1|accelerating_counter_i O[17] -pin PWM_in_1|accelerating_counter_i__0 I0[17] -pin PWM_in_1|accelerating_counter_i__1 I0[17]
load net PWM_in_1|accelerating_counter_i_n_7 -attr @rip(#000000) O[16] -attr @name accelerating_counter_i_n_7 -pin PWM_in_1|accelerating_counter_i O[16] -pin PWM_in_1|accelerating_counter_i__0 I0[16] -pin PWM_in_1|accelerating_counter_i__1 I0[16]
load net PWM_in_1|accelerating_counter_i_n_8 -attr @rip(#000000) O[15] -attr @name accelerating_counter_i_n_8 -pin PWM_in_1|accelerating_counter_i O[15] -pin PWM_in_1|accelerating_counter_i__0 I0[15] -pin PWM_in_1|accelerating_counter_i__1 I0[15]
load net PWM_in_1|accelerating_counter_i_n_9 -attr @rip(#000000) O[14] -attr @name accelerating_counter_i_n_9 -pin PWM_in_1|accelerating_counter_i O[14] -pin PWM_in_1|accelerating_counter_i__0 I0[14] -pin PWM_in_1|accelerating_counter_i__1 I0[14]
load net PWM_in_1|btn_down -attr @name btn_down -hierPin PWM_in_1 btn_down -pin PWM_in_1|btn_down_cnt_i S -pin PWM_in_1|btn_down_cnt_i__0 S
netloc PWM_in_1|btn_down 1 0 2 NJ 528 520
load net PWM_in_1|btn_down_cnt0[0] -attr @rip(#000000) O[0] -attr @name btn_down_cnt0[0] -pin PWM_in_1|btn_down_cnt0_i O[0] -pin PWM_in_1|btn_down_cnt_i I0[0]
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
netloc PWM_in_1|btn_down_cnt0_i__0_n_0 1 1 1 NJ 458
load net PWM_in_1|btn_down_cnt[0] -attr @rip(#000000) 0 -attr @name btn_down_cnt[0] -pin PWM_in_1|btn_down_cnt0_i I0[0] -pin PWM_in_1|btn_down_cnt0_i__0 I0[0] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[0] -pin PWM_in_1|btn_down_db_i A[0]
load net PWM_in_1|btn_down_cnt[1] -attr @rip(#000000) 1 -attr @name btn_down_cnt[1] -pin PWM_in_1|btn_down_cnt0_i I0[1] -pin PWM_in_1|btn_down_cnt0_i__0 I0[1] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[1] -pin PWM_in_1|btn_down_db_i A[1]
load net PWM_in_1|btn_down_cnt[2] -attr @rip(#000000) 2 -attr @name btn_down_cnt[2] -pin PWM_in_1|btn_down_cnt0_i I0[2] -pin PWM_in_1|btn_down_cnt0_i__0 I0[2] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[2] -pin PWM_in_1|btn_down_db_i A[2]
load net PWM_in_1|btn_down_cnt[3] -attr @rip(#000000) 3 -attr @name btn_down_cnt[3] -pin PWM_in_1|btn_down_cnt0_i I0[3] -pin PWM_in_1|btn_down_cnt0_i__0 I0[3] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[3] -pin PWM_in_1|btn_down_db_i A[3]
load net PWM_in_1|btn_down_cnt[4] -attr @rip(#000000) 4 -attr @name btn_down_cnt[4] -pin PWM_in_1|btn_down_cnt0_i I0[4] -pin PWM_in_1|btn_down_cnt0_i__0 I0[4] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[4] -pin PWM_in_1|btn_down_db_i A[4]
load net PWM_in_1|btn_down_cnt[5] -attr @rip(#000000) 5 -attr @name btn_down_cnt[5] -pin PWM_in_1|btn_down_cnt0_i I0[5] -pin PWM_in_1|btn_down_cnt0_i__0 I0[5] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[5] -pin PWM_in_1|btn_down_db_i A[5]
load net PWM_in_1|btn_down_cnt[6] -attr @rip(#000000) 6 -attr @name btn_down_cnt[6] -pin PWM_in_1|btn_down_cnt0_i I0[6] -pin PWM_in_1|btn_down_cnt0_i__0 I0[6] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[6] -pin PWM_in_1|btn_down_db_i A[6]
load net PWM_in_1|btn_down_cnt[7] -attr @rip(#000000) 7 -attr @name btn_down_cnt[7] -pin PWM_in_1|btn_down_cnt0_i I0[7] -pin PWM_in_1|btn_down_cnt0_i__0 I0[7] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[7] -pin PWM_in_1|btn_down_db_i A[7]
load net PWM_in_1|btn_down_cnt[8] -attr @rip(#000000) 8 -attr @name btn_down_cnt[8] -pin PWM_in_1|btn_down_cnt0_i I0[8] -pin PWM_in_1|btn_down_cnt0_i__0 I0[8] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[8] -pin PWM_in_1|btn_down_db_i A[8]
load net PWM_in_1|btn_down_cnt[9] -attr @rip(#000000) 9 -attr @name btn_down_cnt[9] -pin PWM_in_1|btn_down_cnt0_i I0[9] -pin PWM_in_1|btn_down_cnt0_i__0 I0[9] -pin PWM_in_1|btn_down_cnt_reg[9:0] Q[9] -pin PWM_in_1|btn_down_db_i A[9]
load net PWM_in_1|btn_down_cnt__0[0] -attr @rip(#000000) O[0] -attr @name btn_down_cnt__0[0] -pin PWM_in_1|btn_down_cnt_i O[0] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[0]
load net PWM_in_1|btn_down_cnt__0[1] -attr @rip(#000000) O[1] -attr @name btn_down_cnt__0[1] -pin PWM_in_1|btn_down_cnt_i O[1] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[1]
load net PWM_in_1|btn_down_cnt__0[2] -attr @rip(#000000) O[2] -attr @name btn_down_cnt__0[2] -pin PWM_in_1|btn_down_cnt_i O[2] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[2]
load net PWM_in_1|btn_down_cnt__0[3] -attr @rip(#000000) O[3] -attr @name btn_down_cnt__0[3] -pin PWM_in_1|btn_down_cnt_i O[3] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[3]
load net PWM_in_1|btn_down_cnt__0[4] -attr @rip(#000000) O[4] -attr @name btn_down_cnt__0[4] -pin PWM_in_1|btn_down_cnt_i O[4] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[4]
load net PWM_in_1|btn_down_cnt__0[5] -attr @rip(#000000) O[5] -attr @name btn_down_cnt__0[5] -pin PWM_in_1|btn_down_cnt_i O[5] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[5]
load net PWM_in_1|btn_down_cnt__0[6] -attr @rip(#000000) O[6] -attr @name btn_down_cnt__0[6] -pin PWM_in_1|btn_down_cnt_i O[6] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[6]
load net PWM_in_1|btn_down_cnt__0[7] -attr @rip(#000000) O[7] -attr @name btn_down_cnt__0[7] -pin PWM_in_1|btn_down_cnt_i O[7] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[7]
load net PWM_in_1|btn_down_cnt__0[8] -attr @rip(#000000) O[8] -attr @name btn_down_cnt__0[8] -pin PWM_in_1|btn_down_cnt_i O[8] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[8]
load net PWM_in_1|btn_down_cnt__0[9] -attr @rip(#000000) O[9] -attr @name btn_down_cnt__0[9] -pin PWM_in_1|btn_down_cnt_i O[9] -pin PWM_in_1|btn_down_cnt_reg[9:0] D[9]
load net PWM_in_1|btn_down_cnt_i__0_n_0 -attr @name btn_down_cnt_i__0_n_0 -pin PWM_in_1|btn_down_cnt_i__0 O -pin PWM_in_1|btn_down_cnt_reg[9:0] CE
netloc PWM_in_1|btn_down_cnt_i__0_n_0 1 2 1 850 468n
load net PWM_in_1|btn_down_db -attr @name btn_down_db -pin PWM_in_1|btn_down_db_reg Q -pin PWM_in_1|btn_down_prev_reg D -pin PWM_in_1|duty_percent1_i__1 I0 -pin PWM_in_1|duty_percent1_i__2 I0
netloc PWM_in_1|btn_down_db 1 5 5 1610 658 1890 518 NJ 518 NJ 518 NJ
load net PWM_in_1|btn_down_db__0 -attr @name btn_down_db__0 -pin PWM_in_1|btn_down_db_i O -pin PWM_in_1|btn_down_db_reg D
netloc PWM_in_1|btn_down_db__0 1 4 1 NJ 638
load net PWM_in_1|btn_down_prev -attr @name btn_down_prev -pin PWM_in_1|btn_down_prev_reg Q -pin PWM_in_1|duty_percent1_i__2 I1 -pin PWM_in_1|duty_percent2_i I0
netloc PWM_in_1|btn_down_prev 1 6 3 1910 638 NJ 638 2650J
load net PWM_in_1|btn_up -attr @name btn_up -hierPin PWM_in_1 btn_up -pin PWM_in_1|btn_up_cnt_i S -pin PWM_in_1|btn_up_cnt_i__0 S
netloc PWM_in_1|btn_up 1 0 2 NJ 588 520
load net PWM_in_1|btn_up_cnt0[0] -attr @rip(#000000) O[0] -attr @name btn_up_cnt0[0] -pin PWM_in_1|btn_up_cnt0_i O[0] -pin PWM_in_1|btn_up_cnt_i I0[0]
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
netloc PWM_in_1|btn_up_cnt0_i__0_n_0 1 1 1 NJ 698
load net PWM_in_1|btn_up_cnt[0] -attr @rip(#000000) 0 -attr @name btn_up_cnt[0] -pin PWM_in_1|btn_up_cnt0_i I0[0] -pin PWM_in_1|btn_up_cnt0_i__0 I0[0] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[0] -pin PWM_in_1|btn_up_db_i A[0]
load net PWM_in_1|btn_up_cnt[1] -attr @rip(#000000) 1 -attr @name btn_up_cnt[1] -pin PWM_in_1|btn_up_cnt0_i I0[1] -pin PWM_in_1|btn_up_cnt0_i__0 I0[1] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[1] -pin PWM_in_1|btn_up_db_i A[1]
load net PWM_in_1|btn_up_cnt[2] -attr @rip(#000000) 2 -attr @name btn_up_cnt[2] -pin PWM_in_1|btn_up_cnt0_i I0[2] -pin PWM_in_1|btn_up_cnt0_i__0 I0[2] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[2] -pin PWM_in_1|btn_up_db_i A[2]
load net PWM_in_1|btn_up_cnt[3] -attr @rip(#000000) 3 -attr @name btn_up_cnt[3] -pin PWM_in_1|btn_up_cnt0_i I0[3] -pin PWM_in_1|btn_up_cnt0_i__0 I0[3] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[3] -pin PWM_in_1|btn_up_db_i A[3]
load net PWM_in_1|btn_up_cnt[4] -attr @rip(#000000) 4 -attr @name btn_up_cnt[4] -pin PWM_in_1|btn_up_cnt0_i I0[4] -pin PWM_in_1|btn_up_cnt0_i__0 I0[4] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[4] -pin PWM_in_1|btn_up_db_i A[4]
load net PWM_in_1|btn_up_cnt[5] -attr @rip(#000000) 5 -attr @name btn_up_cnt[5] -pin PWM_in_1|btn_up_cnt0_i I0[5] -pin PWM_in_1|btn_up_cnt0_i__0 I0[5] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[5] -pin PWM_in_1|btn_up_db_i A[5]
load net PWM_in_1|btn_up_cnt[6] -attr @rip(#000000) 6 -attr @name btn_up_cnt[6] -pin PWM_in_1|btn_up_cnt0_i I0[6] -pin PWM_in_1|btn_up_cnt0_i__0 I0[6] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[6] -pin PWM_in_1|btn_up_db_i A[6]
load net PWM_in_1|btn_up_cnt[7] -attr @rip(#000000) 7 -attr @name btn_up_cnt[7] -pin PWM_in_1|btn_up_cnt0_i I0[7] -pin PWM_in_1|btn_up_cnt0_i__0 I0[7] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[7] -pin PWM_in_1|btn_up_db_i A[7]
load net PWM_in_1|btn_up_cnt[8] -attr @rip(#000000) 8 -attr @name btn_up_cnt[8] -pin PWM_in_1|btn_up_cnt0_i I0[8] -pin PWM_in_1|btn_up_cnt0_i__0 I0[8] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[8] -pin PWM_in_1|btn_up_db_i A[8]
load net PWM_in_1|btn_up_cnt[9] -attr @rip(#000000) 9 -attr @name btn_up_cnt[9] -pin PWM_in_1|btn_up_cnt0_i I0[9] -pin PWM_in_1|btn_up_cnt0_i__0 I0[9] -pin PWM_in_1|btn_up_cnt_reg[9:0] Q[9] -pin PWM_in_1|btn_up_db_i A[9]
load net PWM_in_1|btn_up_cnt__0[0] -attr @rip(#000000) O[0] -attr @name btn_up_cnt__0[0] -pin PWM_in_1|btn_up_cnt_i O[0] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[0]
load net PWM_in_1|btn_up_cnt__0[1] -attr @rip(#000000) O[1] -attr @name btn_up_cnt__0[1] -pin PWM_in_1|btn_up_cnt_i O[1] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[1]
load net PWM_in_1|btn_up_cnt__0[2] -attr @rip(#000000) O[2] -attr @name btn_up_cnt__0[2] -pin PWM_in_1|btn_up_cnt_i O[2] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[2]
load net PWM_in_1|btn_up_cnt__0[3] -attr @rip(#000000) O[3] -attr @name btn_up_cnt__0[3] -pin PWM_in_1|btn_up_cnt_i O[3] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[3]
load net PWM_in_1|btn_up_cnt__0[4] -attr @rip(#000000) O[4] -attr @name btn_up_cnt__0[4] -pin PWM_in_1|btn_up_cnt_i O[4] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[4]
load net PWM_in_1|btn_up_cnt__0[5] -attr @rip(#000000) O[5] -attr @name btn_up_cnt__0[5] -pin PWM_in_1|btn_up_cnt_i O[5] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[5]
load net PWM_in_1|btn_up_cnt__0[6] -attr @rip(#000000) O[6] -attr @name btn_up_cnt__0[6] -pin PWM_in_1|btn_up_cnt_i O[6] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[6]
load net PWM_in_1|btn_up_cnt__0[7] -attr @rip(#000000) O[7] -attr @name btn_up_cnt__0[7] -pin PWM_in_1|btn_up_cnt_i O[7] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[7]
load net PWM_in_1|btn_up_cnt__0[8] -attr @rip(#000000) O[8] -attr @name btn_up_cnt__0[8] -pin PWM_in_1|btn_up_cnt_i O[8] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[8]
load net PWM_in_1|btn_up_cnt__0[9] -attr @rip(#000000) O[9] -attr @name btn_up_cnt__0[9] -pin PWM_in_1|btn_up_cnt_i O[9] -pin PWM_in_1|btn_up_cnt_reg[9:0] D[9]
load net PWM_in_1|btn_up_cnt_i__0_n_0 -attr @name btn_up_cnt_i__0_n_0 -pin PWM_in_1|btn_up_cnt_i__0 O -pin PWM_in_1|btn_up_cnt_reg[9:0] CE
netloc PWM_in_1|btn_up_cnt_i__0_n_0 1 2 1 790 708n
load net PWM_in_1|btn_up_db -attr @name btn_up_db -pin PWM_in_1|btn_up_db_reg Q -pin PWM_in_1|btn_up_prev_reg D -pin PWM_in_1|duty_percent1_i__3 I0 -pin PWM_in_1|duty_percent1_i__6 I0
netloc PWM_in_1|btn_up_db 1 5 3 1570 838 NJ 838 2260
load net PWM_in_1|btn_up_db__0 -attr @name btn_up_db__0 -pin PWM_in_1|btn_up_db_i O -pin PWM_in_1|btn_up_db_reg D
netloc PWM_in_1|btn_up_db__0 1 4 1 NJ 778
load net PWM_in_1|btn_up_prev -attr @name btn_up_prev -pin PWM_in_1|btn_up_prev_reg Q -pin PWM_in_1|duty_percent1_i__3 I1 -pin PWM_in_1|duty_percent2_i__0 I0
netloc PWM_in_1|btn_up_prev 1 6 2 1910 858 NJ
load net PWM_in_1|clk -attr @name clk -hierPin PWM_in_1 clk -pin PWM_in_1|accelerating_counter_reg[23:0] C -pin PWM_in_1|btn_down_cnt_reg[9:0] C -pin PWM_in_1|btn_down_db_reg C -pin PWM_in_1|btn_down_prev_reg C -pin PWM_in_1|btn_up_cnt_reg[9:0] C -pin PWM_in_1|btn_up_db_reg C -pin PWM_in_1|btn_up_prev_reg C -pin PWM_in_1|counter_reg[18:0] C -pin PWM_in_1|duty_cycle_internal_reg[18:0] C -pin PWM_in_1|duty_percent_reg[6:0] C
netloc PWM_in_1|clk 1 0 18 NJ 608 NJ 608 830 718 NJ 718 1310 688 1570 678 NJ 678 NJ 678 NJ 678 3000 698 NJ 698 NJ 698 NJ 698 NJ 698 4970 798 5370J 688 NJ 688 6150
load net PWM_in_1|counter1 -attr @name counter1 -pin PWM_in_1|counter1_i O -pin PWM_in_1|counter_i S
netloc PWM_in_1|counter1 1 15 1 5330J 578n
load net PWM_in_1|counter[0] -attr @rip(#000000) 0 -attr @name counter[0] -pin PWM_in_1|counter1_i I0[0] -pin PWM_in_1|counter_reg[18:0] Q[0] -pin PWM_in_1|plusOp_i__0 I0[0] -pin PWM_in_1|pwm_out0_i I1[0]
load net PWM_in_1|counter[10] -attr @rip(#000000) 10 -attr @name counter[10] -pin PWM_in_1|counter1_i I0[10] -pin PWM_in_1|counter_reg[18:0] Q[10] -pin PWM_in_1|plusOp_i__0 I0[10] -pin PWM_in_1|pwm_out0_i I1[10]
load net PWM_in_1|counter[11] -attr @rip(#000000) 11 -attr @name counter[11] -pin PWM_in_1|counter1_i I0[11] -pin PWM_in_1|counter_reg[18:0] Q[11] -pin PWM_in_1|plusOp_i__0 I0[11] -pin PWM_in_1|pwm_out0_i I1[11]
load net PWM_in_1|counter[12] -attr @rip(#000000) 12 -attr @name counter[12] -pin PWM_in_1|counter1_i I0[12] -pin PWM_in_1|counter_reg[18:0] Q[12] -pin PWM_in_1|plusOp_i__0 I0[12] -pin PWM_in_1|pwm_out0_i I1[12]
load net PWM_in_1|counter[13] -attr @rip(#000000) 13 -attr @name counter[13] -pin PWM_in_1|counter1_i I0[13] -pin PWM_in_1|counter_reg[18:0] Q[13] -pin PWM_in_1|plusOp_i__0 I0[13] -pin PWM_in_1|pwm_out0_i I1[13]
load net PWM_in_1|counter[14] -attr @rip(#000000) 14 -attr @name counter[14] -pin PWM_in_1|counter1_i I0[14] -pin PWM_in_1|counter_reg[18:0] Q[14] -pin PWM_in_1|plusOp_i__0 I0[14] -pin PWM_in_1|pwm_out0_i I1[14]
load net PWM_in_1|counter[15] -attr @rip(#000000) 15 -attr @name counter[15] -pin PWM_in_1|counter1_i I0[15] -pin PWM_in_1|counter_reg[18:0] Q[15] -pin PWM_in_1|plusOp_i__0 I0[15] -pin PWM_in_1|pwm_out0_i I1[15]
load net PWM_in_1|counter[16] -attr @rip(#000000) 16 -attr @name counter[16] -pin PWM_in_1|counter1_i I0[16] -pin PWM_in_1|counter_reg[18:0] Q[16] -pin PWM_in_1|plusOp_i__0 I0[16] -pin PWM_in_1|pwm_out0_i I1[16]
load net PWM_in_1|counter[17] -attr @rip(#000000) 17 -attr @name counter[17] -pin PWM_in_1|counter1_i I0[17] -pin PWM_in_1|counter_reg[18:0] Q[17] -pin PWM_in_1|plusOp_i__0 I0[17] -pin PWM_in_1|pwm_out0_i I1[17]
load net PWM_in_1|counter[18] -attr @rip(#000000) 18 -attr @name counter[18] -pin PWM_in_1|counter1_i I0[18] -pin PWM_in_1|counter_reg[18:0] Q[18] -pin PWM_in_1|plusOp_i__0 I0[18] -pin PWM_in_1|pwm_out0_i I1[18]
load net PWM_in_1|counter[1] -attr @rip(#000000) 1 -attr @name counter[1] -pin PWM_in_1|counter1_i I0[1] -pin PWM_in_1|counter_reg[18:0] Q[1] -pin PWM_in_1|plusOp_i__0 I0[1] -pin PWM_in_1|pwm_out0_i I1[1]
load net PWM_in_1|counter[2] -attr @rip(#000000) 2 -attr @name counter[2] -pin PWM_in_1|counter1_i I0[2] -pin PWM_in_1|counter_reg[18:0] Q[2] -pin PWM_in_1|plusOp_i__0 I0[2] -pin PWM_in_1|pwm_out0_i I1[2]
load net PWM_in_1|counter[3] -attr @rip(#000000) 3 -attr @name counter[3] -pin PWM_in_1|counter1_i I0[3] -pin PWM_in_1|counter_reg[18:0] Q[3] -pin PWM_in_1|plusOp_i__0 I0[3] -pin PWM_in_1|pwm_out0_i I1[3]
load net PWM_in_1|counter[4] -attr @rip(#000000) 4 -attr @name counter[4] -pin PWM_in_1|counter1_i I0[4] -pin PWM_in_1|counter_reg[18:0] Q[4] -pin PWM_in_1|plusOp_i__0 I0[4] -pin PWM_in_1|pwm_out0_i I1[4]
load net PWM_in_1|counter[5] -attr @rip(#000000) 5 -attr @name counter[5] -pin PWM_in_1|counter1_i I0[5] -pin PWM_in_1|counter_reg[18:0] Q[5] -pin PWM_in_1|plusOp_i__0 I0[5] -pin PWM_in_1|pwm_out0_i I1[5]
load net PWM_in_1|counter[6] -attr @rip(#000000) 6 -attr @name counter[6] -pin PWM_in_1|counter1_i I0[6] -pin PWM_in_1|counter_reg[18:0] Q[6] -pin PWM_in_1|plusOp_i__0 I0[6] -pin PWM_in_1|pwm_out0_i I1[6]
load net PWM_in_1|counter[7] -attr @rip(#000000) 7 -attr @name counter[7] -pin PWM_in_1|counter1_i I0[7] -pin PWM_in_1|counter_reg[18:0] Q[7] -pin PWM_in_1|plusOp_i__0 I0[7] -pin PWM_in_1|pwm_out0_i I1[7]
load net PWM_in_1|counter[8] -attr @rip(#000000) 8 -attr @name counter[8] -pin PWM_in_1|counter1_i I0[8] -pin PWM_in_1|counter_reg[18:0] Q[8] -pin PWM_in_1|plusOp_i__0 I0[8] -pin PWM_in_1|pwm_out0_i I1[8]
load net PWM_in_1|counter[9] -attr @rip(#000000) 9 -attr @name counter[9] -pin PWM_in_1|counter1_i I0[9] -pin PWM_in_1|counter_reg[18:0] Q[9] -pin PWM_in_1|plusOp_i__0 I0[9] -pin PWM_in_1|pwm_out0_i I1[9]
load net PWM_in_1|counter__0 -attr @name counter__0 -pin PWM_in_1|counter_i__0 O -pin PWM_in_1|counter_reg[18:0] RST
netloc PWM_in_1|counter__0 1 17 1 6110 438n
load net PWM_in_1|counter_i_n_0 -attr @name counter_i_n_0 -pin PWM_in_1|counter_i O -pin PWM_in_1|counter_i__0 I1
netloc PWM_in_1|counter_i_n_0 1 16 1 5740J 558n
load net PWM_in_1|duty_cycle_internal0[0] -attr @rip(#000000) O[0] -attr @name duty_cycle_internal0[0] -pin PWM_in_1|duty_cycle_internal0_i O[0] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[0]
load net PWM_in_1|duty_cycle_internal0[10] -attr @rip(#000000) O[10] -attr @name duty_cycle_internal0[10] -pin PWM_in_1|duty_cycle_internal0_i O[10] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[10]
load net PWM_in_1|duty_cycle_internal0[11] -attr @rip(#000000) O[11] -attr @name duty_cycle_internal0[11] -pin PWM_in_1|duty_cycle_internal0_i O[11] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[11]
load net PWM_in_1|duty_cycle_internal0[12] -attr @rip(#000000) O[12] -attr @name duty_cycle_internal0[12] -pin PWM_in_1|duty_cycle_internal0_i O[12] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[12]
load net PWM_in_1|duty_cycle_internal0[13] -attr @rip(#000000) O[13] -attr @name duty_cycle_internal0[13] -pin PWM_in_1|duty_cycle_internal0_i O[13] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[13]
load net PWM_in_1|duty_cycle_internal0[14] -attr @rip(#000000) O[14] -attr @name duty_cycle_internal0[14] -pin PWM_in_1|duty_cycle_internal0_i O[14] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[14]
load net PWM_in_1|duty_cycle_internal0[15] -attr @rip(#000000) O[15] -attr @name duty_cycle_internal0[15] -pin PWM_in_1|duty_cycle_internal0_i O[15] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[15]
load net PWM_in_1|duty_cycle_internal0[16] -attr @rip(#000000) O[16] -attr @name duty_cycle_internal0[16] -pin PWM_in_1|duty_cycle_internal0_i O[16] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[16]
load net PWM_in_1|duty_cycle_internal0[17] -attr @rip(#000000) O[17] -attr @name duty_cycle_internal0[17] -pin PWM_in_1|duty_cycle_internal0_i O[17] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[17]
load net PWM_in_1|duty_cycle_internal0[18] -attr @rip(#000000) O[18] -attr @name duty_cycle_internal0[18] -pin PWM_in_1|duty_cycle_internal0_i O[18] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[18]
load net PWM_in_1|duty_cycle_internal0[1] -attr @rip(#000000) O[1] -attr @name duty_cycle_internal0[1] -pin PWM_in_1|duty_cycle_internal0_i O[1] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[1]
load net PWM_in_1|duty_cycle_internal0[2] -attr @rip(#000000) O[2] -attr @name duty_cycle_internal0[2] -pin PWM_in_1|duty_cycle_internal0_i O[2] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[2]
load net PWM_in_1|duty_cycle_internal0[3] -attr @rip(#000000) O[3] -attr @name duty_cycle_internal0[3] -pin PWM_in_1|duty_cycle_internal0_i O[3] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[3]
load net PWM_in_1|duty_cycle_internal0[4] -attr @rip(#000000) O[4] -attr @name duty_cycle_internal0[4] -pin PWM_in_1|duty_cycle_internal0_i O[4] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[4]
load net PWM_in_1|duty_cycle_internal0[5] -attr @rip(#000000) O[5] -attr @name duty_cycle_internal0[5] -pin PWM_in_1|duty_cycle_internal0_i O[5] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[5]
load net PWM_in_1|duty_cycle_internal0[6] -attr @rip(#000000) O[6] -attr @name duty_cycle_internal0[6] -pin PWM_in_1|duty_cycle_internal0_i O[6] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[6]
load net PWM_in_1|duty_cycle_internal0[7] -attr @rip(#000000) O[7] -attr @name duty_cycle_internal0[7] -pin PWM_in_1|duty_cycle_internal0_i O[7] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[7]
load net PWM_in_1|duty_cycle_internal0[8] -attr @rip(#000000) O[8] -attr @name duty_cycle_internal0[8] -pin PWM_in_1|duty_cycle_internal0_i O[8] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[8]
load net PWM_in_1|duty_cycle_internal0[9] -attr @rip(#000000) O[9] -attr @name duty_cycle_internal0[9] -pin PWM_in_1|duty_cycle_internal0_i O[9] -pin PWM_in_1|duty_cycle_internal_reg[18:0] D[9]
load net PWM_in_1|duty_cycle_internal1[0] -attr @rip(#000000) O[0] -attr @name duty_cycle_internal1[0] -pin PWM_in_1|duty_cycle_internal0_i I0[0] -pin PWM_in_1|duty_cycle_internal1_i O[0]
load net PWM_in_1|duty_cycle_internal1[10] -attr @rip(#000000) O[10] -attr @name duty_cycle_internal1[10] -pin PWM_in_1|duty_cycle_internal0_i I0[10] -pin PWM_in_1|duty_cycle_internal1_i O[10]
load net PWM_in_1|duty_cycle_internal1[11] -attr @rip(#000000) O[11] -attr @name duty_cycle_internal1[11] -pin PWM_in_1|duty_cycle_internal0_i I0[11] -pin PWM_in_1|duty_cycle_internal1_i O[11]
load net PWM_in_1|duty_cycle_internal1[12] -attr @rip(#000000) O[12] -attr @name duty_cycle_internal1[12] -pin PWM_in_1|duty_cycle_internal0_i I0[12] -pin PWM_in_1|duty_cycle_internal1_i O[12]
load net PWM_in_1|duty_cycle_internal1[13] -attr @rip(#000000) O[13] -attr @name duty_cycle_internal1[13] -pin PWM_in_1|duty_cycle_internal0_i I0[13] -pin PWM_in_1|duty_cycle_internal1_i O[13]
load net PWM_in_1|duty_cycle_internal1[14] -attr @rip(#000000) O[14] -attr @name duty_cycle_internal1[14] -pin PWM_in_1|duty_cycle_internal0_i I0[14] -pin PWM_in_1|duty_cycle_internal1_i O[14]
load net PWM_in_1|duty_cycle_internal1[15] -attr @rip(#000000) O[15] -attr @name duty_cycle_internal1[15] -pin PWM_in_1|duty_cycle_internal0_i I0[15] -pin PWM_in_1|duty_cycle_internal1_i O[15]
load net PWM_in_1|duty_cycle_internal1[16] -attr @rip(#000000) O[16] -attr @name duty_cycle_internal1[16] -pin PWM_in_1|duty_cycle_internal0_i I0[16] -pin PWM_in_1|duty_cycle_internal1_i O[16]
load net PWM_in_1|duty_cycle_internal1[17] -attr @rip(#000000) O[17] -attr @name duty_cycle_internal1[17] -pin PWM_in_1|duty_cycle_internal0_i I0[17] -pin PWM_in_1|duty_cycle_internal1_i O[17]
load net PWM_in_1|duty_cycle_internal1[18] -attr @rip(#000000) O[18] -attr @name duty_cycle_internal1[18] -pin PWM_in_1|duty_cycle_internal0_i I0[18] -pin PWM_in_1|duty_cycle_internal1_i O[18]
load net PWM_in_1|duty_cycle_internal1[19] -attr @rip(#000000) O[19] -attr @name duty_cycle_internal1[19] -pin PWM_in_1|duty_cycle_internal0_i I0[19] -pin PWM_in_1|duty_cycle_internal1_i O[19]
load net PWM_in_1|duty_cycle_internal1[1] -attr @rip(#000000) O[1] -attr @name duty_cycle_internal1[1] -pin PWM_in_1|duty_cycle_internal0_i I0[1] -pin PWM_in_1|duty_cycle_internal1_i O[1]
load net PWM_in_1|duty_cycle_internal1[20] -attr @rip(#000000) O[20] -attr @name duty_cycle_internal1[20] -pin PWM_in_1|duty_cycle_internal0_i I0[20] -pin PWM_in_1|duty_cycle_internal1_i O[20]
load net PWM_in_1|duty_cycle_internal1[21] -attr @rip(#000000) O[21] -attr @name duty_cycle_internal1[21] -pin PWM_in_1|duty_cycle_internal0_i I0[21] -pin PWM_in_1|duty_cycle_internal1_i O[21]
load net PWM_in_1|duty_cycle_internal1[22] -attr @rip(#000000) O[22] -attr @name duty_cycle_internal1[22] -pin PWM_in_1|duty_cycle_internal0_i I0[22] -pin PWM_in_1|duty_cycle_internal1_i O[22]
load net PWM_in_1|duty_cycle_internal1[23] -attr @rip(#000000) O[23] -attr @name duty_cycle_internal1[23] -pin PWM_in_1|duty_cycle_internal0_i I0[23] -pin PWM_in_1|duty_cycle_internal1_i O[23]
load net PWM_in_1|duty_cycle_internal1[24] -attr @rip(#000000) O[24] -attr @name duty_cycle_internal1[24] -pin PWM_in_1|duty_cycle_internal0_i I0[24] -pin PWM_in_1|duty_cycle_internal1_i O[24]
load net PWM_in_1|duty_cycle_internal1[2] -attr @rip(#000000) O[2] -attr @name duty_cycle_internal1[2] -pin PWM_in_1|duty_cycle_internal0_i I0[2] -pin PWM_in_1|duty_cycle_internal1_i O[2]
load net PWM_in_1|duty_cycle_internal1[3] -attr @rip(#000000) O[3] -attr @name duty_cycle_internal1[3] -pin PWM_in_1|duty_cycle_internal0_i I0[3] -pin PWM_in_1|duty_cycle_internal1_i O[3]
load net PWM_in_1|duty_cycle_internal1[4] -attr @rip(#000000) O[4] -attr @name duty_cycle_internal1[4] -pin PWM_in_1|duty_cycle_internal0_i I0[4] -pin PWM_in_1|duty_cycle_internal1_i O[4]
load net PWM_in_1|duty_cycle_internal1[5] -attr @rip(#000000) O[5] -attr @name duty_cycle_internal1[5] -pin PWM_in_1|duty_cycle_internal0_i I0[5] -pin PWM_in_1|duty_cycle_internal1_i O[5]
load net PWM_in_1|duty_cycle_internal1[6] -attr @rip(#000000) O[6] -attr @name duty_cycle_internal1[6] -pin PWM_in_1|duty_cycle_internal0_i I0[6] -pin PWM_in_1|duty_cycle_internal1_i O[6]
load net PWM_in_1|duty_cycle_internal1[7] -attr @rip(#000000) O[7] -attr @name duty_cycle_internal1[7] -pin PWM_in_1|duty_cycle_internal0_i I0[7] -pin PWM_in_1|duty_cycle_internal1_i O[7]
load net PWM_in_1|duty_cycle_internal1[8] -attr @rip(#000000) O[8] -attr @name duty_cycle_internal1[8] -pin PWM_in_1|duty_cycle_internal0_i I0[8] -pin PWM_in_1|duty_cycle_internal1_i O[8]
load net PWM_in_1|duty_cycle_internal1[9] -attr @rip(#000000) O[9] -attr @name duty_cycle_internal1[9] -pin PWM_in_1|duty_cycle_internal0_i I0[9] -pin PWM_in_1|duty_cycle_internal1_i O[9]
load net PWM_in_1|duty_cycle_internal[0] -attr @rip(#000000) 0 -attr @name duty_cycle_internal[0] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[0] -pin PWM_in_1|pwm_out0_i I0[0]
load net PWM_in_1|duty_cycle_internal[10] -attr @rip(#000000) 10 -attr @name duty_cycle_internal[10] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[10] -pin PWM_in_1|pwm_out0_i I0[10]
load net PWM_in_1|duty_cycle_internal[11] -attr @rip(#000000) 11 -attr @name duty_cycle_internal[11] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[11] -pin PWM_in_1|pwm_out0_i I0[11]
load net PWM_in_1|duty_cycle_internal[12] -attr @rip(#000000) 12 -attr @name duty_cycle_internal[12] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[12] -pin PWM_in_1|pwm_out0_i I0[12]
load net PWM_in_1|duty_cycle_internal[13] -attr @rip(#000000) 13 -attr @name duty_cycle_internal[13] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[13] -pin PWM_in_1|pwm_out0_i I0[13]
load net PWM_in_1|duty_cycle_internal[14] -attr @rip(#000000) 14 -attr @name duty_cycle_internal[14] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[14] -pin PWM_in_1|pwm_out0_i I0[14]
load net PWM_in_1|duty_cycle_internal[15] -attr @rip(#000000) 15 -attr @name duty_cycle_internal[15] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[15] -pin PWM_in_1|pwm_out0_i I0[15]
load net PWM_in_1|duty_cycle_internal[16] -attr @rip(#000000) 16 -attr @name duty_cycle_internal[16] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[16] -pin PWM_in_1|pwm_out0_i I0[16]
load net PWM_in_1|duty_cycle_internal[17] -attr @rip(#000000) 17 -attr @name duty_cycle_internal[17] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[17] -pin PWM_in_1|pwm_out0_i I0[17]
load net PWM_in_1|duty_cycle_internal[18] -attr @rip(#000000) 18 -attr @name duty_cycle_internal[18] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[18] -pin PWM_in_1|pwm_out0_i I0[18]
load net PWM_in_1|duty_cycle_internal[1] -attr @rip(#000000) 1 -attr @name duty_cycle_internal[1] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[1] -pin PWM_in_1|pwm_out0_i I0[1]
load net PWM_in_1|duty_cycle_internal[2] -attr @rip(#000000) 2 -attr @name duty_cycle_internal[2] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[2] -pin PWM_in_1|pwm_out0_i I0[2]
load net PWM_in_1|duty_cycle_internal[3] -attr @rip(#000000) 3 -attr @name duty_cycle_internal[3] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[3] -pin PWM_in_1|pwm_out0_i I0[3]
load net PWM_in_1|duty_cycle_internal[4] -attr @rip(#000000) 4 -attr @name duty_cycle_internal[4] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[4] -pin PWM_in_1|pwm_out0_i I0[4]
load net PWM_in_1|duty_cycle_internal[5] -attr @rip(#000000) 5 -attr @name duty_cycle_internal[5] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[5] -pin PWM_in_1|pwm_out0_i I0[5]
load net PWM_in_1|duty_cycle_internal[6] -attr @rip(#000000) 6 -attr @name duty_cycle_internal[6] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[6] -pin PWM_in_1|pwm_out0_i I0[6]
load net PWM_in_1|duty_cycle_internal[7] -attr @rip(#000000) 7 -attr @name duty_cycle_internal[7] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[7] -pin PWM_in_1|pwm_out0_i I0[7]
load net PWM_in_1|duty_cycle_internal[8] -attr @rip(#000000) 8 -attr @name duty_cycle_internal[8] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[8] -pin PWM_in_1|pwm_out0_i I0[8]
load net PWM_in_1|duty_cycle_internal[9] -attr @rip(#000000) 9 -attr @name duty_cycle_internal[9] -pin PWM_in_1|duty_cycle_internal_reg[18:0] Q[9] -pin PWM_in_1|pwm_out0_i I0[9]
load net PWM_in_1|duty_percent0 -attr @name duty_percent0 -pin PWM_in_1|duty_percent0_i__3 O -pin PWM_in_1|duty_percent_i__7 I0
netloc PWM_in_1|duty_percent0 1 8 1 2590 398n
load net PWM_in_1|duty_percent0_i__0_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent0_i__0_n_0 -pin PWM_in_1|duty_percent0_i__0 O[6] -pin PWM_in_1|duty_percent_i__0 I0[6]
load net PWM_in_1|duty_percent0_i__0_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent0_i__0_n_1 -pin PWM_in_1|duty_percent0_i__0 O[5] -pin PWM_in_1|duty_percent_i__0 I0[5]
load net PWM_in_1|duty_percent0_i__0_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent0_i__0_n_2 -pin PWM_in_1|duty_percent0_i__0 O[4] -pin PWM_in_1|duty_percent_i__0 I0[4]
load net PWM_in_1|duty_percent0_i__0_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent0_i__0_n_3 -pin PWM_in_1|duty_percent0_i__0 O[3] -pin PWM_in_1|duty_percent_i__0 I0[3]
load net PWM_in_1|duty_percent0_i__0_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent0_i__0_n_4 -pin PWM_in_1|duty_percent0_i__0 O[2] -pin PWM_in_1|duty_percent_i__0 I0[2]
load net PWM_in_1|duty_percent0_i__0_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent0_i__0_n_5 -pin PWM_in_1|duty_percent0_i__0 O[1] -pin PWM_in_1|duty_percent_i__0 I0[1]
load net PWM_in_1|duty_percent0_i__0_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent0_i__0_n_6 -pin PWM_in_1|duty_percent0_i__0 O[0] -pin PWM_in_1|duty_percent_i__0 I0[0]
load net PWM_in_1|duty_percent0_i__1_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent0_i__1_n_0 -pin PWM_in_1|duty_percent0_i__1 O[6] -pin PWM_in_1|duty_percent_i__0 I1[6] -pin PWM_in_1|duty_percent_i__1 I1[6]
load net PWM_in_1|duty_percent0_i__1_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent0_i__1_n_1 -pin PWM_in_1|duty_percent0_i__1 O[5] -pin PWM_in_1|duty_percent_i__0 I1[5] -pin PWM_in_1|duty_percent_i__1 I1[5]
load net PWM_in_1|duty_percent0_i__1_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent0_i__1_n_2 -pin PWM_in_1|duty_percent0_i__1 O[4] -pin PWM_in_1|duty_percent_i__0 I1[4] -pin PWM_in_1|duty_percent_i__1 I1[4]
load net PWM_in_1|duty_percent0_i__1_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent0_i__1_n_3 -pin PWM_in_1|duty_percent0_i__1 O[3] -pin PWM_in_1|duty_percent_i__0 I1[3] -pin PWM_in_1|duty_percent_i__1 I1[3]
load net PWM_in_1|duty_percent0_i__1_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent0_i__1_n_4 -pin PWM_in_1|duty_percent0_i__1 O[2] -pin PWM_in_1|duty_percent_i__0 I1[2] -pin PWM_in_1|duty_percent_i__1 I1[2]
load net PWM_in_1|duty_percent0_i__1_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent0_i__1_n_5 -pin PWM_in_1|duty_percent0_i__1 O[1] -pin PWM_in_1|duty_percent_i__0 I1[1] -pin PWM_in_1|duty_percent_i__1 I1[1]
load net PWM_in_1|duty_percent0_i__1_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent0_i__1_n_6 -pin PWM_in_1|duty_percent0_i__1 O[0] -pin PWM_in_1|duty_percent_i__0 I1[0] -pin PWM_in_1|duty_percent_i__1 I1[0]
load net PWM_in_1|duty_percent0_i__2_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent0_i__2_n_0 -pin PWM_in_1|duty_percent0_i__2 O[6] -pin PWM_in_1|duty_percent_i__3 I0[6]
load net PWM_in_1|duty_percent0_i__2_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent0_i__2_n_1 -pin PWM_in_1|duty_percent0_i__2 O[5] -pin PWM_in_1|duty_percent_i__3 I0[5]
load net PWM_in_1|duty_percent0_i__2_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent0_i__2_n_2 -pin PWM_in_1|duty_percent0_i__2 O[4] -pin PWM_in_1|duty_percent_i__3 I0[4]
load net PWM_in_1|duty_percent0_i__2_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent0_i__2_n_3 -pin PWM_in_1|duty_percent0_i__2 O[3] -pin PWM_in_1|duty_percent_i__3 I0[3]
load net PWM_in_1|duty_percent0_i__2_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent0_i__2_n_4 -pin PWM_in_1|duty_percent0_i__2 O[2] -pin PWM_in_1|duty_percent_i__3 I0[2]
load net PWM_in_1|duty_percent0_i__2_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent0_i__2_n_5 -pin PWM_in_1|duty_percent0_i__2 O[1] -pin PWM_in_1|duty_percent_i__3 I0[1]
load net PWM_in_1|duty_percent0_i__2_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent0_i__2_n_6 -pin PWM_in_1|duty_percent0_i__2 O[0] -pin PWM_in_1|duty_percent_i__3 I0[0]
load net PWM_in_1|duty_percent0_i_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent0_i_n_0 -pin PWM_in_1|duty_percent0_i O[6] -pin PWM_in_1|duty_percent_i I0[6]
load net PWM_in_1|duty_percent0_i_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent0_i_n_1 -pin PWM_in_1|duty_percent0_i O[5] -pin PWM_in_1|duty_percent_i I0[5]
load net PWM_in_1|duty_percent0_i_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent0_i_n_2 -pin PWM_in_1|duty_percent0_i O[4] -pin PWM_in_1|duty_percent_i I0[4]
load net PWM_in_1|duty_percent0_i_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent0_i_n_3 -pin PWM_in_1|duty_percent0_i O[3] -pin PWM_in_1|duty_percent_i I0[3]
load net PWM_in_1|duty_percent0_i_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent0_i_n_4 -pin PWM_in_1|duty_percent0_i O[2] -pin PWM_in_1|duty_percent_i I0[2]
load net PWM_in_1|duty_percent0_i_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent0_i_n_5 -pin PWM_in_1|duty_percent0_i O[1] -pin PWM_in_1|duty_percent_i I0[1]
load net PWM_in_1|duty_percent0_i_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent0_i_n_6 -pin PWM_in_1|duty_percent0_i O[0] -pin PWM_in_1|duty_percent_i I0[0]
load net PWM_in_1|duty_percent1 -attr @name duty_percent1 -pin PWM_in_1|accelerating_counter_i__1 S -pin PWM_in_1|duty_percent1_i__3 O -pin PWM_in_1|duty_percent_i__13 S -pin PWM_in_1|duty_percent_i__6 S
netloc PWM_in_1|duty_percent1 1 8 6 2610 968N 3080 868 3560J 848 NJ 848 4330J 878 4640
load net PWM_in_1|duty_percent1_i__0_n_0 -attr @name duty_percent1_i__0_n_0 -pin PWM_in_1|duty_percent1_i__0 O -pin PWM_in_1|duty_percent_i__0 S -pin PWM_in_1|duty_percent_i__8 S
netloc PWM_in_1|duty_percent1_i__0_n_0 1 9 1 3000 158n
load net PWM_in_1|duty_percent1_i__1_n_0 -attr @name duty_percent1_i__1_n_0 -pin PWM_in_1|duty_percent1_i__1 O -pin PWM_in_1|duty_percent_i__1 S -pin PWM_in_1|duty_percent_i__9 S
netloc PWM_in_1|duty_percent1_i__1_n_0 1 10 1 3500 358n
load net PWM_in_1|duty_percent1_i__2_n_0 -attr @name duty_percent1_i__2_n_0 -pin PWM_in_1|accelerating_counter_i__0 S -pin PWM_in_1|duty_percent1_i__2 O -pin PWM_in_1|duty_percent_i__12 S -pin PWM_in_1|duty_percent_i__5 S
netloc PWM_in_1|duty_percent1_i__2_n_0 1 7 6 2220 1108N N 1108 NJ 1108 NJ 1108 NJ 1108 4370
load net PWM_in_1|duty_percent1_i__4_n_0 -attr @name duty_percent1_i__4_n_0 -pin PWM_in_1|accelerating_counter_i S -pin PWM_in_1|duty_percent1_i__4 O -pin PWM_in_1|duty_percent_i__10 S -pin PWM_in_1|duty_percent_i__11 S -pin PWM_in_1|duty_percent_i__2 S -pin PWM_in_1|duty_percent_i__4 S
netloc PWM_in_1|duty_percent1_i__4_n_0 1 7 6 2240 988 NJ 988 NJ 988 NJ 988 3990 988N 4350
load net PWM_in_1|duty_percent1_i__5_n_0 -attr @name duty_percent1_i__5_n_0 -pin PWM_in_1|duty_percent1_i__5 O -pin PWM_in_1|duty_percent_i__3 S
netloc PWM_in_1|duty_percent1_i__5_n_0 1 10 1 3600 478n
load net PWM_in_1|duty_percent1_i__6_n_0 -attr @name duty_percent1_i__6_n_0 -pin PWM_in_1|duty_percent1_i__6 O -pin PWM_in_1|duty_percent_i__7 S
netloc PWM_in_1|duty_percent1_i__6_n_0 1 8 1 2630 468n
load net PWM_in_1|duty_percent1_i_n_0 -attr @name duty_percent1_i_n_0 -pin PWM_in_1|duty_percent1_i O -pin PWM_in_1|duty_percent_i S
netloc PWM_in_1|duty_percent1_i_n_0 1 11 1 3970 188n
load net PWM_in_1|duty_percent2 -attr @name duty_percent2 -pin PWM_in_1|duty_percent1_i__1 I1 -pin PWM_in_1|duty_percent2_i O
netloc PWM_in_1|duty_percent2 1 9 1 3040J 538n
load net PWM_in_1|duty_percent2_i__0_n_0 -attr @name duty_percent2_i__0_n_0 -pin PWM_in_1|duty_percent1_i__6 I1 -pin PWM_in_1|duty_percent2_i__0 O
netloc PWM_in_1|duty_percent2_i__0_n_0 1 7 1 2240J 908n
load net PWM_in_1|duty_percent[0] -attr @rip(#000000) 0 -attr @name duty_percent[0] -pin PWM_in_1|duty_cycle_internal1_i I0[0] -pin PWM_in_1|duty_percent0_i I0[0] -pin PWM_in_1|duty_percent0_i__0 I0[0] -pin PWM_in_1|duty_percent0_i__1 I0[0] -pin PWM_in_1|duty_percent0_i__2 I0[0] -pin PWM_in_1|duty_percent0_i__3 I0[0] -pin PWM_in_1|duty_percent1_i I0[0] -pin PWM_in_1|duty_percent1_i__0 I0[0] -pin PWM_in_1|duty_percent1_i__5 I0[0] -pin PWM_in_1|duty_percent_reg[6:0] Q[0] -pin PWM_in_1|hundreds_out_i I0[0] -pin PWM_in_1|ones_out_i I0[0] -pin PWM_in_1|tens_out0_i I0[0]
load net PWM_in_1|duty_percent[1] -attr @rip(#000000) 1 -attr @name duty_percent[1] -pin PWM_in_1|duty_cycle_internal1_i I0[1] -pin PWM_in_1|duty_percent0_i I0[1] -pin PWM_in_1|duty_percent0_i__0 I0[1] -pin PWM_in_1|duty_percent0_i__1 I0[1] -pin PWM_in_1|duty_percent0_i__2 I0[1] -pin PWM_in_1|duty_percent0_i__3 I0[1] -pin PWM_in_1|duty_percent1_i I0[1] -pin PWM_in_1|duty_percent1_i__0 I0[1] -pin PWM_in_1|duty_percent1_i__5 I0[1] -pin PWM_in_1|duty_percent_reg[6:0] Q[1] -pin PWM_in_1|hundreds_out_i I0[1] -pin PWM_in_1|ones_out_i I0[1] -pin PWM_in_1|tens_out0_i I0[1]
load net PWM_in_1|duty_percent[2] -attr @rip(#000000) 2 -attr @name duty_percent[2] -pin PWM_in_1|duty_cycle_internal1_i I0[2] -pin PWM_in_1|duty_percent0_i I0[2] -pin PWM_in_1|duty_percent0_i__0 I0[2] -pin PWM_in_1|duty_percent0_i__1 I0[2] -pin PWM_in_1|duty_percent0_i__2 I0[2] -pin PWM_in_1|duty_percent0_i__3 I0[2] -pin PWM_in_1|duty_percent1_i I0[2] -pin PWM_in_1|duty_percent1_i__0 I0[2] -pin PWM_in_1|duty_percent1_i__5 I0[2] -pin PWM_in_1|duty_percent_reg[6:0] Q[2] -pin PWM_in_1|hundreds_out_i I0[2] -pin PWM_in_1|ones_out_i I0[2] -pin PWM_in_1|tens_out0_i I0[2]
load net PWM_in_1|duty_percent[3] -attr @rip(#000000) 3 -attr @name duty_percent[3] -pin PWM_in_1|duty_cycle_internal1_i I0[3] -pin PWM_in_1|duty_percent0_i I0[3] -pin PWM_in_1|duty_percent0_i__0 I0[3] -pin PWM_in_1|duty_percent0_i__1 I0[3] -pin PWM_in_1|duty_percent0_i__2 I0[3] -pin PWM_in_1|duty_percent0_i__3 I0[3] -pin PWM_in_1|duty_percent1_i I0[3] -pin PWM_in_1|duty_percent1_i__0 I0[3] -pin PWM_in_1|duty_percent1_i__5 I0[3] -pin PWM_in_1|duty_percent_reg[6:0] Q[3] -pin PWM_in_1|hundreds_out_i I0[3] -pin PWM_in_1|ones_out_i I0[3] -pin PWM_in_1|tens_out0_i I0[3]
load net PWM_in_1|duty_percent[4] -attr @rip(#000000) 4 -attr @name duty_percent[4] -pin PWM_in_1|duty_cycle_internal1_i I0[4] -pin PWM_in_1|duty_percent0_i I0[4] -pin PWM_in_1|duty_percent0_i__0 I0[4] -pin PWM_in_1|duty_percent0_i__1 I0[4] -pin PWM_in_1|duty_percent0_i__2 I0[4] -pin PWM_in_1|duty_percent0_i__3 I0[4] -pin PWM_in_1|duty_percent1_i I0[4] -pin PWM_in_1|duty_percent1_i__0 I0[4] -pin PWM_in_1|duty_percent1_i__5 I0[4] -pin PWM_in_1|duty_percent_reg[6:0] Q[4] -pin PWM_in_1|hundreds_out_i I0[4] -pin PWM_in_1|ones_out_i I0[4] -pin PWM_in_1|tens_out0_i I0[4]
load net PWM_in_1|duty_percent[5] -attr @rip(#000000) 5 -attr @name duty_percent[5] -pin PWM_in_1|duty_cycle_internal1_i I0[5] -pin PWM_in_1|duty_percent0_i I0[5] -pin PWM_in_1|duty_percent0_i__0 I0[5] -pin PWM_in_1|duty_percent0_i__1 I0[5] -pin PWM_in_1|duty_percent0_i__2 I0[5] -pin PWM_in_1|duty_percent0_i__3 I0[5] -pin PWM_in_1|duty_percent1_i I0[5] -pin PWM_in_1|duty_percent1_i__0 I0[5] -pin PWM_in_1|duty_percent1_i__5 I0[5] -pin PWM_in_1|duty_percent_reg[6:0] Q[5] -pin PWM_in_1|hundreds_out_i I0[5] -pin PWM_in_1|ones_out_i I0[5] -pin PWM_in_1|tens_out0_i I0[5]
load net PWM_in_1|duty_percent[6] -attr @rip(#000000) 6 -attr @name duty_percent[6] -pin PWM_in_1|duty_cycle_internal1_i I0[6] -pin PWM_in_1|duty_percent0_i I0[6] -pin PWM_in_1|duty_percent0_i__0 I0[6] -pin PWM_in_1|duty_percent0_i__1 I0[6] -pin PWM_in_1|duty_percent0_i__2 I0[6] -pin PWM_in_1|duty_percent0_i__3 I0[6] -pin PWM_in_1|duty_percent1_i I0[6] -pin PWM_in_1|duty_percent1_i__0 I0[6] -pin PWM_in_1|duty_percent1_i__5 I0[6] -pin PWM_in_1|duty_percent_reg[6:0] Q[6] -pin PWM_in_1|hundreds_out_i I0[6] -pin PWM_in_1|ones_out_i I0[6] -pin PWM_in_1|tens_out0_i I0[6]
load net PWM_in_1|duty_percent__0[0] -attr @rip(#000000) O[0] -attr @name duty_percent__0[0] -pin PWM_in_1|duty_percent_i__6 O[0] -pin PWM_in_1|duty_percent_reg[6:0] D[0]
load net PWM_in_1|duty_percent__0[1] -attr @rip(#000000) O[1] -attr @name duty_percent__0[1] -pin PWM_in_1|duty_percent_i__6 O[1] -pin PWM_in_1|duty_percent_reg[6:0] D[1]
load net PWM_in_1|duty_percent__0[2] -attr @rip(#000000) O[2] -attr @name duty_percent__0[2] -pin PWM_in_1|duty_percent_i__6 O[2] -pin PWM_in_1|duty_percent_reg[6:0] D[2]
load net PWM_in_1|duty_percent__0[3] -attr @rip(#000000) O[3] -attr @name duty_percent__0[3] -pin PWM_in_1|duty_percent_i__6 O[3] -pin PWM_in_1|duty_percent_reg[6:0] D[3]
load net PWM_in_1|duty_percent__0[4] -attr @rip(#000000) O[4] -attr @name duty_percent__0[4] -pin PWM_in_1|duty_percent_i__6 O[4] -pin PWM_in_1|duty_percent_reg[6:0] D[4]
load net PWM_in_1|duty_percent__0[5] -attr @rip(#000000) O[5] -attr @name duty_percent__0[5] -pin PWM_in_1|duty_percent_i__6 O[5] -pin PWM_in_1|duty_percent_reg[6:0] D[5]
load net PWM_in_1|duty_percent__0[6] -attr @rip(#000000) O[6] -attr @name duty_percent__0[6] -pin PWM_in_1|duty_percent_i__6 O[6] -pin PWM_in_1|duty_percent_reg[6:0] D[6]
load net PWM_in_1|duty_percent_i__0_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__0_n_0 -pin PWM_in_1|duty_percent_i__0 O[6] -pin PWM_in_1|duty_percent_i__1 I0[6]
load net PWM_in_1|duty_percent_i__0_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__0_n_1 -pin PWM_in_1|duty_percent_i__0 O[5] -pin PWM_in_1|duty_percent_i__1 I0[5]
load net PWM_in_1|duty_percent_i__0_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__0_n_2 -pin PWM_in_1|duty_percent_i__0 O[4] -pin PWM_in_1|duty_percent_i__1 I0[4]
load net PWM_in_1|duty_percent_i__0_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__0_n_3 -pin PWM_in_1|duty_percent_i__0 O[3] -pin PWM_in_1|duty_percent_i__1 I0[3]
load net PWM_in_1|duty_percent_i__0_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__0_n_4 -pin PWM_in_1|duty_percent_i__0 O[2] -pin PWM_in_1|duty_percent_i__1 I0[2]
load net PWM_in_1|duty_percent_i__0_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__0_n_5 -pin PWM_in_1|duty_percent_i__0 O[1] -pin PWM_in_1|duty_percent_i__1 I0[1]
load net PWM_in_1|duty_percent_i__0_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__0_n_6 -pin PWM_in_1|duty_percent_i__0 O[0] -pin PWM_in_1|duty_percent_i__1 I0[0]
load net PWM_in_1|duty_percent_i__10_n_0 -attr @name duty_percent_i__10_n_0 -pin PWM_in_1|duty_percent_i__10 O -pin PWM_in_1|duty_percent_i__13 I0
netloc PWM_in_1|duty_percent_i__10_n_0 1 13 1 N 798
load net PWM_in_1|duty_percent_i__11_n_0 -attr @name duty_percent_i__11_n_0 -pin PWM_in_1|duty_percent_i__11 O -pin PWM_in_1|duty_percent_i__12 I0
netloc PWM_in_1|duty_percent_i__11_n_0 1 12 1 N 928
load net PWM_in_1|duty_percent_i__12_n_0 -attr @name duty_percent_i__12_n_0 -pin PWM_in_1|duty_percent_i__12 O -pin PWM_in_1|duty_percent_i__13 I1
netloc PWM_in_1|duty_percent_i__12_n_0 1 13 1 4660 818n
load net PWM_in_1|duty_percent_i__13_n_0 -attr @name duty_percent_i__13_n_0 -pin PWM_in_1|duty_percent_i__13 O -pin PWM_in_1|duty_percent_reg[6:0] CE
netloc PWM_in_1|duty_percent_i__13_n_0 1 14 1 4950 718n
load net PWM_in_1|duty_percent_i__1_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__1_n_0 -pin PWM_in_1|duty_percent_i__1 O[6] -pin PWM_in_1|duty_percent_i__2 I1[6] -pin PWM_in_1|duty_percent_i__4 I1[6] -pin PWM_in_1|duty_percent_i__5 I1[6]
load net PWM_in_1|duty_percent_i__1_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__1_n_1 -pin PWM_in_1|duty_percent_i__1 O[5] -pin PWM_in_1|duty_percent_i__2 I1[5] -pin PWM_in_1|duty_percent_i__4 I1[5] -pin PWM_in_1|duty_percent_i__5 I1[5]
load net PWM_in_1|duty_percent_i__1_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__1_n_2 -pin PWM_in_1|duty_percent_i__1 O[4] -pin PWM_in_1|duty_percent_i__2 I1[4] -pin PWM_in_1|duty_percent_i__4 I1[4] -pin PWM_in_1|duty_percent_i__5 I1[4]
load net PWM_in_1|duty_percent_i__1_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__1_n_3 -pin PWM_in_1|duty_percent_i__1 O[3] -pin PWM_in_1|duty_percent_i__2 I1[3] -pin PWM_in_1|duty_percent_i__4 I1[3] -pin PWM_in_1|duty_percent_i__5 I1[3]
load net PWM_in_1|duty_percent_i__1_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__1_n_4 -pin PWM_in_1|duty_percent_i__1 O[2] -pin PWM_in_1|duty_percent_i__2 I1[2] -pin PWM_in_1|duty_percent_i__4 I1[2] -pin PWM_in_1|duty_percent_i__5 I1[2]
load net PWM_in_1|duty_percent_i__1_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__1_n_5 -pin PWM_in_1|duty_percent_i__1 O[1] -pin PWM_in_1|duty_percent_i__2 I1[1] -pin PWM_in_1|duty_percent_i__4 I1[1] -pin PWM_in_1|duty_percent_i__5 I1[1]
load net PWM_in_1|duty_percent_i__1_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__1_n_6 -pin PWM_in_1|duty_percent_i__1 O[0] -pin PWM_in_1|duty_percent_i__2 I1[0] -pin PWM_in_1|duty_percent_i__4 I1[0] -pin PWM_in_1|duty_percent_i__5 I1[0]
load net PWM_in_1|duty_percent_i__2_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__2_n_0 -pin PWM_in_1|duty_percent_i__2 O[6] -pin PWM_in_1|duty_percent_i__6 I0[6]
load net PWM_in_1|duty_percent_i__2_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__2_n_1 -pin PWM_in_1|duty_percent_i__2 O[5] -pin PWM_in_1|duty_percent_i__6 I0[5]
load net PWM_in_1|duty_percent_i__2_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__2_n_2 -pin PWM_in_1|duty_percent_i__2 O[4] -pin PWM_in_1|duty_percent_i__6 I0[4]
load net PWM_in_1|duty_percent_i__2_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__2_n_3 -pin PWM_in_1|duty_percent_i__2 O[3] -pin PWM_in_1|duty_percent_i__6 I0[3]
load net PWM_in_1|duty_percent_i__2_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__2_n_4 -pin PWM_in_1|duty_percent_i__2 O[2] -pin PWM_in_1|duty_percent_i__6 I0[2]
load net PWM_in_1|duty_percent_i__2_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__2_n_5 -pin PWM_in_1|duty_percent_i__2 O[1] -pin PWM_in_1|duty_percent_i__6 I0[1]
load net PWM_in_1|duty_percent_i__2_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__2_n_6 -pin PWM_in_1|duty_percent_i__2 O[0] -pin PWM_in_1|duty_percent_i__6 I0[0]
load net PWM_in_1|duty_percent_i__3_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__3_n_0 -pin PWM_in_1|duty_percent_i__3 O[6] -pin PWM_in_1|duty_percent_i__4 I0[6]
load net PWM_in_1|duty_percent_i__3_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__3_n_1 -pin PWM_in_1|duty_percent_i__3 O[5] -pin PWM_in_1|duty_percent_i__4 I0[5]
load net PWM_in_1|duty_percent_i__3_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__3_n_2 -pin PWM_in_1|duty_percent_i__3 O[4] -pin PWM_in_1|duty_percent_i__4 I0[4]
load net PWM_in_1|duty_percent_i__3_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__3_n_3 -pin PWM_in_1|duty_percent_i__3 O[3] -pin PWM_in_1|duty_percent_i__4 I0[3]
load net PWM_in_1|duty_percent_i__3_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__3_n_4 -pin PWM_in_1|duty_percent_i__3 O[2] -pin PWM_in_1|duty_percent_i__4 I0[2]
load net PWM_in_1|duty_percent_i__3_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__3_n_5 -pin PWM_in_1|duty_percent_i__3 O[1] -pin PWM_in_1|duty_percent_i__4 I0[1]
load net PWM_in_1|duty_percent_i__3_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__3_n_6 -pin PWM_in_1|duty_percent_i__3 O[0] -pin PWM_in_1|duty_percent_i__4 I0[0]
load net PWM_in_1|duty_percent_i__4_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__4_n_0 -pin PWM_in_1|duty_percent_i__4 O[6] -pin PWM_in_1|duty_percent_i__5 I0[6]
load net PWM_in_1|duty_percent_i__4_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__4_n_1 -pin PWM_in_1|duty_percent_i__4 O[5] -pin PWM_in_1|duty_percent_i__5 I0[5]
load net PWM_in_1|duty_percent_i__4_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__4_n_2 -pin PWM_in_1|duty_percent_i__4 O[4] -pin PWM_in_1|duty_percent_i__5 I0[4]
load net PWM_in_1|duty_percent_i__4_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__4_n_3 -pin PWM_in_1|duty_percent_i__4 O[3] -pin PWM_in_1|duty_percent_i__5 I0[3]
load net PWM_in_1|duty_percent_i__4_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__4_n_4 -pin PWM_in_1|duty_percent_i__4 O[2] -pin PWM_in_1|duty_percent_i__5 I0[2]
load net PWM_in_1|duty_percent_i__4_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__4_n_5 -pin PWM_in_1|duty_percent_i__4 O[1] -pin PWM_in_1|duty_percent_i__5 I0[1]
load net PWM_in_1|duty_percent_i__4_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__4_n_6 -pin PWM_in_1|duty_percent_i__4 O[0] -pin PWM_in_1|duty_percent_i__5 I0[0]
load net PWM_in_1|duty_percent_i__5_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i__5_n_0 -pin PWM_in_1|duty_percent_i__5 O[6] -pin PWM_in_1|duty_percent_i__6 I1[6]
load net PWM_in_1|duty_percent_i__5_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i__5_n_1 -pin PWM_in_1|duty_percent_i__5 O[5] -pin PWM_in_1|duty_percent_i__6 I1[5]
load net PWM_in_1|duty_percent_i__5_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i__5_n_2 -pin PWM_in_1|duty_percent_i__5 O[4] -pin PWM_in_1|duty_percent_i__6 I1[4]
load net PWM_in_1|duty_percent_i__5_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i__5_n_3 -pin PWM_in_1|duty_percent_i__5 O[3] -pin PWM_in_1|duty_percent_i__6 I1[3]
load net PWM_in_1|duty_percent_i__5_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i__5_n_4 -pin PWM_in_1|duty_percent_i__5 O[2] -pin PWM_in_1|duty_percent_i__6 I1[2]
load net PWM_in_1|duty_percent_i__5_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i__5_n_5 -pin PWM_in_1|duty_percent_i__5 O[1] -pin PWM_in_1|duty_percent_i__6 I1[1]
load net PWM_in_1|duty_percent_i__5_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i__5_n_6 -pin PWM_in_1|duty_percent_i__5 O[0] -pin PWM_in_1|duty_percent_i__6 I1[0]
load net PWM_in_1|duty_percent_i__7_n_0 -attr @name duty_percent_i__7_n_0 -pin PWM_in_1|duty_percent_i__7 O -pin PWM_in_1|duty_percent_i__8 I1 -pin PWM_in_1|duty_percent_i__9 I1
netloc PWM_in_1|duty_percent_i__7_n_0 1 9 2 3040 338 3540
load net PWM_in_1|duty_percent_i__8_n_0 -attr @name duty_percent_i__8_n_0 -pin PWM_in_1|duty_percent_i__8 O -pin PWM_in_1|duty_percent_i__9 I0
netloc PWM_in_1|duty_percent_i__8_n_0 1 10 1 3560 258n
load net PWM_in_1|duty_percent_i__9_n_0 -attr @name duty_percent_i__9_n_0 -pin PWM_in_1|duty_percent_i__10 I1 -pin PWM_in_1|duty_percent_i__11 I1 -pin PWM_in_1|duty_percent_i__12 I1 -pin PWM_in_1|duty_percent_i__9 O
netloc PWM_in_1|duty_percent_i__9_n_0 1 11 2 3950 818 4390
load net PWM_in_1|duty_percent_i_n_0 -attr @rip(#000000) O[6] -attr @name duty_percent_i_n_0 -pin PWM_in_1|duty_percent_i O[6] -pin PWM_in_1|duty_percent_i__2 I0[6]
load net PWM_in_1|duty_percent_i_n_1 -attr @rip(#000000) O[5] -attr @name duty_percent_i_n_1 -pin PWM_in_1|duty_percent_i O[5] -pin PWM_in_1|duty_percent_i__2 I0[5]
load net PWM_in_1|duty_percent_i_n_2 -attr @rip(#000000) O[4] -attr @name duty_percent_i_n_2 -pin PWM_in_1|duty_percent_i O[4] -pin PWM_in_1|duty_percent_i__2 I0[4]
load net PWM_in_1|duty_percent_i_n_3 -attr @rip(#000000) O[3] -attr @name duty_percent_i_n_3 -pin PWM_in_1|duty_percent_i O[3] -pin PWM_in_1|duty_percent_i__2 I0[3]
load net PWM_in_1|duty_percent_i_n_4 -attr @rip(#000000) O[2] -attr @name duty_percent_i_n_4 -pin PWM_in_1|duty_percent_i O[2] -pin PWM_in_1|duty_percent_i__2 I0[2]
load net PWM_in_1|duty_percent_i_n_5 -attr @rip(#000000) O[1] -attr @name duty_percent_i_n_5 -pin PWM_in_1|duty_percent_i O[1] -pin PWM_in_1|duty_percent_i__2 I0[1]
load net PWM_in_1|duty_percent_i_n_6 -attr @rip(#000000) O[0] -attr @name duty_percent_i_n_6 -pin PWM_in_1|duty_percent_i O[0] -pin PWM_in_1|duty_percent_i__2 I0[0]
load net PWM_in_1|hundreds_out[0] -attr @rip(#000000) 0 -attr @name hundreds_out[0] -hierPin PWM_in_1 hundreds_out[0] -pin PWM_in_1|hundreds_out_i O
netloc PWM_in_1|hundreds_out[0] 1 19 1 6880 578
load net PWM_in_1|ones_out[0] -attr @rip(#000000) O[0] -attr @name ones_out[0] -hierPin PWM_in_1 ones_out[0] -pin PWM_in_1|ones_out_i O[0]
load net PWM_in_1|ones_out[1] -attr @rip(#000000) O[1] -attr @name ones_out[1] -hierPin PWM_in_1 ones_out[1] -pin PWM_in_1|ones_out_i O[1]
load net PWM_in_1|ones_out[2] -attr @rip(#000000) O[2] -attr @name ones_out[2] -hierPin PWM_in_1 ones_out[2] -pin PWM_in_1|ones_out_i O[2]
load net PWM_in_1|ones_out[3] -attr @rip(#000000) O[3] -attr @name ones_out[3] -hierPin PWM_in_1 ones_out[3] -pin PWM_in_1|ones_out_i O[3]
load net PWM_in_1|plusOp[0] -attr @rip(#000000) O[0] -attr @name plusOp[0] -pin PWM_in_1|accelerating_counter_i I1[0] -pin PWM_in_1|plusOp_i O[0]
load net PWM_in_1|plusOp[10] -attr @rip(#000000) O[10] -attr @name plusOp[10] -pin PWM_in_1|accelerating_counter_i I1[10] -pin PWM_in_1|plusOp_i O[10]
load net PWM_in_1|plusOp[11] -attr @rip(#000000) O[11] -attr @name plusOp[11] -pin PWM_in_1|accelerating_counter_i I1[11] -pin PWM_in_1|plusOp_i O[11]
load net PWM_in_1|plusOp[12] -attr @rip(#000000) O[12] -attr @name plusOp[12] -pin PWM_in_1|accelerating_counter_i I1[12] -pin PWM_in_1|plusOp_i O[12]
load net PWM_in_1|plusOp[1] -attr @rip(#000000) O[1] -attr @name plusOp[1] -pin PWM_in_1|accelerating_counter_i I1[1] -pin PWM_in_1|plusOp_i O[1]
load net PWM_in_1|plusOp[2] -attr @rip(#000000) O[2] -attr @name plusOp[2] -pin PWM_in_1|accelerating_counter_i I1[2] -pin PWM_in_1|plusOp_i O[2]
load net PWM_in_1|plusOp[3] -attr @rip(#000000) O[3] -attr @name plusOp[3] -pin PWM_in_1|accelerating_counter_i I1[3] -pin PWM_in_1|plusOp_i O[3]
load net PWM_in_1|plusOp[4] -attr @rip(#000000) O[4] -attr @name plusOp[4] -pin PWM_in_1|accelerating_counter_i I1[4] -pin PWM_in_1|plusOp_i O[4]
load net PWM_in_1|plusOp[5] -attr @rip(#000000) O[5] -attr @name plusOp[5] -pin PWM_in_1|accelerating_counter_i I1[5] -pin PWM_in_1|plusOp_i O[5]
load net PWM_in_1|plusOp[6] -attr @rip(#000000) O[6] -attr @name plusOp[6] -pin PWM_in_1|accelerating_counter_i I1[6] -pin PWM_in_1|plusOp_i O[6]
load net PWM_in_1|plusOp[7] -attr @rip(#000000) O[7] -attr @name plusOp[7] -pin PWM_in_1|accelerating_counter_i I1[7] -pin PWM_in_1|plusOp_i O[7]
load net PWM_in_1|plusOp[8] -attr @rip(#000000) O[8] -attr @name plusOp[8] -pin PWM_in_1|accelerating_counter_i I1[8] -pin PWM_in_1|plusOp_i O[8]
load net PWM_in_1|plusOp[9] -attr @rip(#000000) O[9] -attr @name plusOp[9] -pin PWM_in_1|accelerating_counter_i I1[9] -pin PWM_in_1|plusOp_i O[9]
load net PWM_in_1|plusOp_i__0_n_0 -attr @rip(#000000) O[17] -attr @name plusOp_i__0_n_0 -pin PWM_in_1|counter_reg[18:0] D[17] -pin PWM_in_1|plusOp_i__0 O[17]
load net PWM_in_1|plusOp_i__0_n_1 -attr @rip(#000000) O[16] -attr @name plusOp_i__0_n_1 -pin PWM_in_1|counter_reg[18:0] D[16] -pin PWM_in_1|plusOp_i__0 O[16]
load net PWM_in_1|plusOp_i__0_n_10 -attr @rip(#000000) O[7] -attr @name plusOp_i__0_n_10 -pin PWM_in_1|counter_reg[18:0] D[7] -pin PWM_in_1|plusOp_i__0 O[7]
load net PWM_in_1|plusOp_i__0_n_11 -attr @rip(#000000) O[6] -attr @name plusOp_i__0_n_11 -pin PWM_in_1|counter_reg[18:0] D[6] -pin PWM_in_1|plusOp_i__0 O[6]
load net PWM_in_1|plusOp_i__0_n_12 -attr @rip(#000000) O[5] -attr @name plusOp_i__0_n_12 -pin PWM_in_1|counter_reg[18:0] D[5] -pin PWM_in_1|plusOp_i__0 O[5]
load net PWM_in_1|plusOp_i__0_n_13 -attr @rip(#000000) O[4] -attr @name plusOp_i__0_n_13 -pin PWM_in_1|counter_reg[18:0] D[4] -pin PWM_in_1|plusOp_i__0 O[4]
load net PWM_in_1|plusOp_i__0_n_14 -attr @rip(#000000) O[3] -attr @name plusOp_i__0_n_14 -pin PWM_in_1|counter_reg[18:0] D[3] -pin PWM_in_1|plusOp_i__0 O[3]
load net PWM_in_1|plusOp_i__0_n_15 -attr @rip(#000000) O[2] -attr @name plusOp_i__0_n_15 -pin PWM_in_1|counter_reg[18:0] D[2] -pin PWM_in_1|plusOp_i__0 O[2]
load net PWM_in_1|plusOp_i__0_n_16 -attr @rip(#000000) O[1] -attr @name plusOp_i__0_n_16 -pin PWM_in_1|counter_reg[18:0] D[1] -pin PWM_in_1|plusOp_i__0 O[1]
load net PWM_in_1|plusOp_i__0_n_17 -attr @rip(#000000) O[0] -attr @name plusOp_i__0_n_17 -pin PWM_in_1|counter_reg[18:0] D[0] -pin PWM_in_1|plusOp_i__0 O[0]
load net PWM_in_1|plusOp_i__0_n_2 -attr @rip(#000000) O[15] -attr @name plusOp_i__0_n_2 -pin PWM_in_1|counter_reg[18:0] D[15] -pin PWM_in_1|plusOp_i__0 O[15]
load net PWM_in_1|plusOp_i__0_n_3 -attr @rip(#000000) O[14] -attr @name plusOp_i__0_n_3 -pin PWM_in_1|counter_reg[18:0] D[14] -pin PWM_in_1|plusOp_i__0 O[14]
load net PWM_in_1|plusOp_i__0_n_4 -attr @rip(#000000) O[13] -attr @name plusOp_i__0_n_4 -pin PWM_in_1|counter_reg[18:0] D[13] -pin PWM_in_1|plusOp_i__0 O[13]
load net PWM_in_1|plusOp_i__0_n_5 -attr @rip(#000000) O[12] -attr @name plusOp_i__0_n_5 -pin PWM_in_1|counter_reg[18:0] D[12] -pin PWM_in_1|plusOp_i__0 O[12]
load net PWM_in_1|plusOp_i__0_n_6 -attr @rip(#000000) O[11] -attr @name plusOp_i__0_n_6 -pin PWM_in_1|counter_reg[18:0] D[11] -pin PWM_in_1|plusOp_i__0 O[11]
load net PWM_in_1|plusOp_i__0_n_7 -attr @rip(#000000) O[10] -attr @name plusOp_i__0_n_7 -pin PWM_in_1|counter_reg[18:0] D[10] -pin PWM_in_1|plusOp_i__0 O[10]
load net PWM_in_1|plusOp_i__0_n_8 -attr @rip(#000000) O[9] -attr @name plusOp_i__0_n_8 -pin PWM_in_1|counter_reg[18:0] D[9] -pin PWM_in_1|plusOp_i__0 O[9]
load net PWM_in_1|plusOp_i__0_n_9 -attr @rip(#000000) O[8] -attr @name plusOp_i__0_n_9 -pin PWM_in_1|counter_reg[18:0] D[8] -pin PWM_in_1|plusOp_i__0 O[8]
load net PWM_in_1|pwm_out -attr @name pwm_out -hierPin PWM_in_1 pwm_out -pin PWM_in_1|pwm_out0_i O
netloc PWM_in_1|pwm_out 1 19 1 6880 678n
load net PWM_in_1|rst -attr @name rst -hierPin PWM_in_1 rst -pin PWM_in_1|accelerating_counter_reg[23:0] CLR -pin PWM_in_1|btn_down_cnt_reg[9:0] CLR -pin PWM_in_1|btn_down_db_reg CLR -pin PWM_in_1|btn_down_prev_reg CLR -pin PWM_in_1|btn_up_cnt_reg[9:0] CLR -pin PWM_in_1|btn_up_db_reg CLR -pin PWM_in_1|btn_up_prev_reg CLR -pin PWM_in_1|counter_i__0 S -pin PWM_in_1|duty_percent_reg[6:0] CLR
netloc PWM_in_1|rst 1 0 17 NJ 628 NJ 628 810 568N N 568 1330 568N 1590 538N N 538 NJ 538 NJ 538 3020J 718N NJ 718 NJ 718 NJ 718 NJ 718 4910 648N N 648 NJ
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
load netBundle @PWM_in_1|accelerating_counter_ 24 PWM_in_1|accelerating_counter_i_n_0 PWM_in_1|accelerating_counter_i_n_1 PWM_in_1|accelerating_counter_i_n_2 PWM_in_1|accelerating_counter_i_n_3 PWM_in_1|accelerating_counter_i_n_4 PWM_in_1|accelerating_counter_i_n_5 PWM_in_1|accelerating_counter_i_n_6 PWM_in_1|accelerating_counter_i_n_7 PWM_in_1|accelerating_counter_i_n_8 PWM_in_1|accelerating_counter_i_n_9 PWM_in_1|accelerating_counter_i_n_10 PWM_in_1|accelerating_counter_i_n_11 PWM_in_1|accelerating_counter_i_n_12 PWM_in_1|accelerating_counter_i_n_13 PWM_in_1|accelerating_counter_i_n_14 PWM_in_1|accelerating_counter_i_n_15 PWM_in_1|accelerating_counter_i_n_16 PWM_in_1|accelerating_counter_i_n_17 PWM_in_1|accelerating_counter_i_n_18 PWM_in_1|accelerating_counter_i_n_19 PWM_in_1|accelerating_counter_i_n_20 PWM_in_1|accelerating_counter_i_n_21 PWM_in_1|accelerating_counter_i_n_22 PWM_in_1|accelerating_counter_i_n_23 -autobundled
netbloc @PWM_in_1|accelerating_counter_ 1 7 2 2260 968 2590J
load netBundle @PWM_in_1|accelerating_counter__1 24 PWM_in_1|accelerating_counter_i__0_n_0 PWM_in_1|accelerating_counter_i__0_n_1 PWM_in_1|accelerating_counter_i__0_n_2 PWM_in_1|accelerating_counter_i__0_n_3 PWM_in_1|accelerating_counter_i__0_n_4 PWM_in_1|accelerating_counter_i__0_n_5 PWM_in_1|accelerating_counter_i__0_n_6 PWM_in_1|accelerating_counter_i__0_n_7 PWM_in_1|accelerating_counter_i__0_n_8 PWM_in_1|accelerating_counter_i__0_n_9 PWM_in_1|accelerating_counter_i__0_n_10 PWM_in_1|accelerating_counter_i__0_n_11 PWM_in_1|accelerating_counter_i__0_n_12 PWM_in_1|accelerating_counter_i__0_n_13 PWM_in_1|accelerating_counter_i__0_n_14 PWM_in_1|accelerating_counter_i__0_n_15 PWM_in_1|accelerating_counter_i__0_n_16 PWM_in_1|accelerating_counter_i__0_n_17 PWM_in_1|accelerating_counter_i__0_n_18 PWM_in_1|accelerating_counter_i__0_n_19 PWM_in_1|accelerating_counter_i__0_n_20 PWM_in_1|accelerating_counter_i__0_n_21 PWM_in_1|accelerating_counter_i__0_n_22 PWM_in_1|accelerating_counter_i__0_n_23 -autobundled
netbloc @PWM_in_1|accelerating_counter__1 1 8 1 2670 918n
load netBundle @PWM_in_1|accelerating_counter__2 24 PWM_in_1|accelerating_counter__0[23] PWM_in_1|accelerating_counter__0[22] PWM_in_1|accelerating_counter__0[21] PWM_in_1|accelerating_counter__0[20] PWM_in_1|accelerating_counter__0[19] PWM_in_1|accelerating_counter__0[18] PWM_in_1|accelerating_counter__0[17] PWM_in_1|accelerating_counter__0[16] PWM_in_1|accelerating_counter__0[15] PWM_in_1|accelerating_counter__0[14] PWM_in_1|accelerating_counter__0[13] PWM_in_1|accelerating_counter__0[12] PWM_in_1|accelerating_counter__0[11] PWM_in_1|accelerating_counter__0[10] PWM_in_1|accelerating_counter__0[9] PWM_in_1|accelerating_counter__0[8] PWM_in_1|accelerating_counter__0[7] PWM_in_1|accelerating_counter__0[6] PWM_in_1|accelerating_counter__0[5] PWM_in_1|accelerating_counter__0[4] PWM_in_1|accelerating_counter__0[3] PWM_in_1|accelerating_counter__0[2] PWM_in_1|accelerating_counter__0[1] PWM_in_1|accelerating_counter__0[0] -autobundled
netbloc @PWM_in_1|accelerating_counter__2 1 9 1 3040 788n
load netBundle @PWM_in_1|btn_down_cnt0 10 PWM_in_1|btn_down_cnt0[9] PWM_in_1|btn_down_cnt0[8] PWM_in_1|btn_down_cnt0[7] PWM_in_1|btn_down_cnt0[6] PWM_in_1|btn_down_cnt0[5] PWM_in_1|btn_down_cnt0[4] PWM_in_1|btn_down_cnt0[3] PWM_in_1|btn_down_cnt0[2] PWM_in_1|btn_down_cnt0[1] PWM_in_1|btn_down_cnt0[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt0 1 1 1 NJ 308
load netBundle @PWM_in_1|btn_down_cnt__0 10 PWM_in_1|btn_down_cnt__0[9] PWM_in_1|btn_down_cnt__0[8] PWM_in_1|btn_down_cnt__0[7] PWM_in_1|btn_down_cnt__0[6] PWM_in_1|btn_down_cnt__0[5] PWM_in_1|btn_down_cnt__0[4] PWM_in_1|btn_down_cnt__0[3] PWM_in_1|btn_down_cnt__0[2] PWM_in_1|btn_down_cnt__0[1] PWM_in_1|btn_down_cnt__0[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt__0 1 2 1 870 318n
load netBundle @PWM_in_1|btn_up_cnt0 10 PWM_in_1|btn_up_cnt0[9] PWM_in_1|btn_up_cnt0[8] PWM_in_1|btn_up_cnt0[7] PWM_in_1|btn_up_cnt0[6] PWM_in_1|btn_up_cnt0[5] PWM_in_1|btn_up_cnt0[4] PWM_in_1|btn_up_cnt0[3] PWM_in_1|btn_up_cnt0[2] PWM_in_1|btn_up_cnt0[1] PWM_in_1|btn_up_cnt0[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt0 1 1 1 NJ 818
load netBundle @PWM_in_1|btn_up_cnt__0 10 PWM_in_1|btn_up_cnt__0[9] PWM_in_1|btn_up_cnt__0[8] PWM_in_1|btn_up_cnt__0[7] PWM_in_1|btn_up_cnt__0[6] PWM_in_1|btn_up_cnt__0[5] PWM_in_1|btn_up_cnt__0[4] PWM_in_1|btn_up_cnt__0[3] PWM_in_1|btn_up_cnt__0[2] PWM_in_1|btn_up_cnt__0[1] PWM_in_1|btn_up_cnt__0[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt__0 1 2 1 N 828
load netBundle @PWM_in_1|duty_cycle_internal0 19 PWM_in_1|duty_cycle_internal0[18] PWM_in_1|duty_cycle_internal0[17] PWM_in_1|duty_cycle_internal0[16] PWM_in_1|duty_cycle_internal0[15] PWM_in_1|duty_cycle_internal0[14] PWM_in_1|duty_cycle_internal0[13] PWM_in_1|duty_cycle_internal0[12] PWM_in_1|duty_cycle_internal0[11] PWM_in_1|duty_cycle_internal0[10] PWM_in_1|duty_cycle_internal0[9] PWM_in_1|duty_cycle_internal0[8] PWM_in_1|duty_cycle_internal0[7] PWM_in_1|duty_cycle_internal0[6] PWM_in_1|duty_cycle_internal0[5] PWM_in_1|duty_cycle_internal0[4] PWM_in_1|duty_cycle_internal0[3] PWM_in_1|duty_cycle_internal0[2] PWM_in_1|duty_cycle_internal0[1] PWM_in_1|duty_cycle_internal0[0] -autobundled
netbloc @PWM_in_1|duty_cycle_internal0 1 17 1 6110J 708n
load netBundle @PWM_in_1|duty_cycle_internal1 25 PWM_in_1|duty_cycle_internal1[24] PWM_in_1|duty_cycle_internal1[23] PWM_in_1|duty_cycle_internal1[22] PWM_in_1|duty_cycle_internal1[21] PWM_in_1|duty_cycle_internal1[20] PWM_in_1|duty_cycle_internal1[19] PWM_in_1|duty_cycle_internal1[18] PWM_in_1|duty_cycle_internal1[17] PWM_in_1|duty_cycle_internal1[16] PWM_in_1|duty_cycle_internal1[15] PWM_in_1|duty_cycle_internal1[14] PWM_in_1|duty_cycle_internal1[13] PWM_in_1|duty_cycle_internal1[12] PWM_in_1|duty_cycle_internal1[11] PWM_in_1|duty_cycle_internal1[10] PWM_in_1|duty_cycle_internal1[9] PWM_in_1|duty_cycle_internal1[8] PWM_in_1|duty_cycle_internal1[7] PWM_in_1|duty_cycle_internal1[6] PWM_in_1|duty_cycle_internal1[5] PWM_in_1|duty_cycle_internal1[4] PWM_in_1|duty_cycle_internal1[3] PWM_in_1|duty_cycle_internal1[2] PWM_in_1|duty_cycle_internal1[1] PWM_in_1|duty_cycle_internal1[0] -autobundled
netbloc @PWM_in_1|duty_cycle_internal1 1 16 1 5740J 748n
load netBundle @PWM_in_1|duty_percent0_i_n_ 7 PWM_in_1|duty_percent0_i_n_0 PWM_in_1|duty_percent0_i_n_1 PWM_in_1|duty_percent0_i_n_2 PWM_in_1|duty_percent0_i_n_3 PWM_in_1|duty_percent0_i_n_4 PWM_in_1|duty_percent0_i_n_5 PWM_in_1|duty_percent0_i_n_6 -autobundled
netbloc @PWM_in_1|duty_percent0_i_n_ 1 11 1 3990 88n
load netBundle @PWM_in_1|duty_percent0_i__0_n_ 7 PWM_in_1|duty_percent0_i__0_n_0 PWM_in_1|duty_percent0_i__0_n_1 PWM_in_1|duty_percent0_i__0_n_2 PWM_in_1|duty_percent0_i__0_n_3 PWM_in_1|duty_percent0_i__0_n_4 PWM_in_1|duty_percent0_i__0_n_5 PWM_in_1|duty_percent0_i__0_n_6 -autobundled
netbloc @PWM_in_1|duty_percent0_i__0_n_ 1 9 1 N 88
load netBundle @PWM_in_1|duty_percent0_i__1_n_ 7 PWM_in_1|duty_percent0_i__1_n_0 PWM_in_1|duty_percent0_i__1_n_1 PWM_in_1|duty_percent0_i__1_n_2 PWM_in_1|duty_percent0_i__1_n_3 PWM_in_1|duty_percent0_i__1_n_4 PWM_in_1|duty_percent0_i__1_n_5 PWM_in_1|duty_percent0_i__1_n_6 -autobundled
netbloc @PWM_in_1|duty_percent0_i__1_n_ 1 9 2 3020 178 3500J
load netBundle @PWM_in_1|duty_percent0_i__2_n_ 7 PWM_in_1|duty_percent0_i__2_n_0 PWM_in_1|duty_percent0_i__2_n_1 PWM_in_1|duty_percent0_i__2_n_2 PWM_in_1|duty_percent0_i__2_n_3 PWM_in_1|duty_percent0_i__2_n_4 PWM_in_1|duty_percent0_i__2_n_5 PWM_in_1|duty_percent0_i__2_n_6 -autobundled
netbloc @PWM_in_1|duty_percent0_i__2_n_ 1 10 1 NJ 408
load netBundle @PWM_in_1|duty_percent_i_n_ 7 PWM_in_1|duty_percent_i_n_0 PWM_in_1|duty_percent_i_n_1 PWM_in_1|duty_percent_i_n_2 PWM_in_1|duty_percent_i_n_3 PWM_in_1|duty_percent_i_n_4 PWM_in_1|duty_percent_i_n_5 PWM_in_1|duty_percent_i_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i_n_ 1 12 1 4390 218n
load netBundle @PWM_in_1|duty_percent_i__0_n_ 7 PWM_in_1|duty_percent_i__0_n_0 PWM_in_1|duty_percent_i__0_n_1 PWM_in_1|duty_percent_i__0_n_2 PWM_in_1|duty_percent_i__0_n_3 PWM_in_1|duty_percent_i__0_n_4 PWM_in_1|duty_percent_i__0_n_5 PWM_in_1|duty_percent_i__0_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__0_n_ 1 10 1 3580 98n
load netBundle @PWM_in_1|duty_percent_i__1_n_ 7 PWM_in_1|duty_percent_i__1_n_0 PWM_in_1|duty_percent_i__1_n_1 PWM_in_1|duty_percent_i__1_n_2 PWM_in_1|duty_percent_i__1_n_3 PWM_in_1|duty_percent_i__1_n_4 PWM_in_1|duty_percent_i__1_n_5 PWM_in_1|duty_percent_i__1_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__1_n_ 1 11 2 3990 508 4390
load netBundle @PWM_in_1|duty_percent_i__2_n_ 7 PWM_in_1|duty_percent_i__2_n_0 PWM_in_1|duty_percent_i__2_n_1 PWM_in_1|duty_percent_i__2_n_2 PWM_in_1|duty_percent_i__2_n_3 PWM_in_1|duty_percent_i__2_n_4 PWM_in_1|duty_percent_i__2_n_5 PWM_in_1|duty_percent_i__2_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__2_n_ 1 13 1 4640 498n
load netBundle @PWM_in_1|duty_percent_i__3_n_ 7 PWM_in_1|duty_percent_i__3_n_0 PWM_in_1|duty_percent_i__3_n_1 PWM_in_1|duty_percent_i__3_n_2 PWM_in_1|duty_percent_i__3_n_3 PWM_in_1|duty_percent_i__3_n_4 PWM_in_1|duty_percent_i__3_n_5 PWM_in_1|duty_percent_i__3_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__3_n_ 1 11 1 3970 418n
load netBundle @PWM_in_1|duty_percent_i__4_n_ 7 PWM_in_1|duty_percent_i__4_n_0 PWM_in_1|duty_percent_i__4_n_1 PWM_in_1|duty_percent_i__4_n_2 PWM_in_1|duty_percent_i__4_n_3 PWM_in_1|duty_percent_i__4_n_4 PWM_in_1|duty_percent_i__4_n_5 PWM_in_1|duty_percent_i__4_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__4_n_ 1 12 1 4330 568n
load netBundle @PWM_in_1|duty_percent_i__5_n_ 7 PWM_in_1|duty_percent_i__5_n_0 PWM_in_1|duty_percent_i__5_n_1 PWM_in_1|duty_percent_i__5_n_2 PWM_in_1|duty_percent_i__5_n_3 PWM_in_1|duty_percent_i__5_n_4 PWM_in_1|duty_percent_i__5_n_5 PWM_in_1|duty_percent_i__5_n_6 -autobundled
netbloc @PWM_in_1|duty_percent_i__5_n_ 1 13 1 N 618
load netBundle @PWM_in_1|duty_percent__0 7 PWM_in_1|duty_percent__0[6] PWM_in_1|duty_percent__0[5] PWM_in_1|duty_percent__0[4] PWM_in_1|duty_percent__0[3] PWM_in_1|duty_percent__0[2] PWM_in_1|duty_percent__0[1] PWM_in_1|duty_percent__0[0] -autobundled
netbloc @PWM_in_1|duty_percent__0 1 14 1 4930 608n
load netBundle @PWM_in_1|ones_out 4 PWM_in_1|ones_out[3] PWM_in_1|ones_out[2] PWM_in_1|ones_out[1] PWM_in_1|ones_out[0] -autobundled
netbloc @PWM_in_1|ones_out 1 19 1 NJ 778
load netBundle @PWM_in_1|plusOp 13 PWM_in_1|plusOp[12] PWM_in_1|plusOp[11] PWM_in_1|plusOp[10] PWM_in_1|plusOp[9] PWM_in_1|plusOp[8] PWM_in_1|plusOp[7] PWM_in_1|plusOp[6] PWM_in_1|plusOp[5] PWM_in_1|plusOp[4] PWM_in_1|plusOp[3] PWM_in_1|plusOp[2] PWM_in_1|plusOp[1] PWM_in_1|plusOp[0] -autobundled
netbloc @PWM_in_1|plusOp 1 6 1 1890J 1018
load netBundle @PWM_in_1|plusOp_i__0_n_ 18 PWM_in_1|plusOp_i__0_n_0 PWM_in_1|plusOp_i__0_n_1 PWM_in_1|plusOp_i__0_n_2 PWM_in_1|plusOp_i__0_n_3 PWM_in_1|plusOp_i__0_n_4 PWM_in_1|plusOp_i__0_n_5 PWM_in_1|plusOp_i__0_n_6 PWM_in_1|plusOp_i__0_n_7 PWM_in_1|plusOp_i__0_n_8 PWM_in_1|plusOp_i__0_n_9 PWM_in_1|plusOp_i__0_n_10 PWM_in_1|plusOp_i__0_n_11 PWM_in_1|plusOp_i__0_n_12 PWM_in_1|plusOp_i__0_n_13 PWM_in_1|plusOp_i__0_n_14 PWM_in_1|plusOp_i__0_n_15 PWM_in_1|plusOp_i__0_n_16 PWM_in_1|plusOp_i__0_n_17 -autobundled
netbloc @PWM_in_1|plusOp_i__0_n_ 1 17 1 6130J 488n
load netBundle @PWM_in_1|tens_out0 7 PWM_in_1|tens_out0[6] PWM_in_1|tens_out0[5] PWM_in_1|tens_out0[4] PWM_in_1|tens_out0[3] PWM_in_1|tens_out0[2] PWM_in_1|tens_out0[1] PWM_in_1|tens_out0[0] -autobundled
netbloc @PWM_in_1|tens_out0 1 18 1 NJ 858
load netBundle @PWM_in_1|tens_out 4 PWM_in_1|tens_out[3] PWM_in_1|tens_out[2] PWM_in_1|tens_out[1] PWM_in_1|tens_out[0] -autobundled
netbloc @PWM_in_1|tens_out 1 19 1 NJ 868
load netBundle @PWM_in_1|btn_down_cnt 10 PWM_in_1|btn_down_cnt[9] PWM_in_1|btn_down_cnt[8] PWM_in_1|btn_down_cnt[7] PWM_in_1|btn_down_cnt[6] PWM_in_1|btn_down_cnt[5] PWM_in_1|btn_down_cnt[4] PWM_in_1|btn_down_cnt[3] PWM_in_1|btn_down_cnt[2] PWM_in_1|btn_down_cnt[1] PWM_in_1|btn_down_cnt[0] -autobundled
netbloc @PWM_in_1|btn_down_cnt 1 0 4 110 548 NJ 548 NJ 548 1140
load netBundle @PWM_in_1|duty_percent 7 PWM_in_1|duty_percent[6] PWM_in_1|duty_percent[5] PWM_in_1|duty_percent[4] PWM_in_1|duty_percent[3] PWM_in_1|duty_percent[2] PWM_in_1|duty_percent[1] PWM_in_1|duty_percent[0] -autobundled
netbloc @PWM_in_1|duty_percent 1 7 12 2220 478 2610 498 3060 478 3520 138 NJ 138 NJ 138 NJ 138 NJ 138 5350 668 NJ 668 6130 768 6540
load netBundle @PWM_in_1|btn_up_cnt 10 PWM_in_1|btn_up_cnt[9] PWM_in_1|btn_up_cnt[8] PWM_in_1|btn_up_cnt[7] PWM_in_1|btn_up_cnt[6] PWM_in_1|btn_up_cnt[5] PWM_in_1|btn_up_cnt[4] PWM_in_1|btn_up_cnt[3] PWM_in_1|btn_up_cnt[2] PWM_in_1|btn_up_cnt[1] PWM_in_1|btn_up_cnt[0] -autobundled
netbloc @PWM_in_1|btn_up_cnt 1 0 4 110 918 NJ 918 NJ 918 1140
load netBundle @PWM_in_1|counter 19 PWM_in_1|counter[18] PWM_in_1|counter[17] PWM_in_1|counter[16] PWM_in_1|counter[15] PWM_in_1|counter[14] PWM_in_1|counter[13] PWM_in_1|counter[12] PWM_in_1|counter[11] PWM_in_1|counter[10] PWM_in_1|counter[9] PWM_in_1|counter[8] PWM_in_1|counter[7] PWM_in_1|counter[6] PWM_in_1|counter[5] PWM_in_1|counter[4] PWM_in_1|counter[3] PWM_in_1|counter[2] PWM_in_1|counter[1] PWM_in_1|counter[0] -autobundled
netbloc @PWM_in_1|counter 1 14 5 4930 478 NJ 478 5740 418 NJ 418 6520
load netBundle @PWM_in_1|duty_cycle_internal 19 PWM_in_1|duty_cycle_internal[18] PWM_in_1|duty_cycle_internal[17] PWM_in_1|duty_cycle_internal[16] PWM_in_1|duty_cycle_internal[15] PWM_in_1|duty_cycle_internal[14] PWM_in_1|duty_cycle_internal[13] PWM_in_1|duty_cycle_internal[12] PWM_in_1|duty_cycle_internal[11] PWM_in_1|duty_cycle_internal[10] PWM_in_1|duty_cycle_internal[9] PWM_in_1|duty_cycle_internal[8] PWM_in_1|duty_cycle_internal[7] PWM_in_1|duty_cycle_internal[6] PWM_in_1|duty_cycle_internal[5] PWM_in_1|duty_cycle_internal[4] PWM_in_1|duty_cycle_internal[3] PWM_in_1|duty_cycle_internal[2] PWM_in_1|duty_cycle_internal[1] PWM_in_1|duty_cycle_internal[0] -autobundled
netbloc @PWM_in_1|duty_cycle_internal 1 18 1 6500 668n
load netBundle @PWM_in_1|accelerating_counter 24 PWM_in_1|accelerating_counter[23] PWM_in_1|accelerating_counter[22] PWM_in_1|accelerating_counter[21] PWM_in_1|accelerating_counter[20] PWM_in_1|accelerating_counter[19] PWM_in_1|accelerating_counter[18] PWM_in_1|accelerating_counter[17] PWM_in_1|accelerating_counter[16] PWM_in_1|accelerating_counter[15] PWM_in_1|accelerating_counter[14] PWM_in_1|accelerating_counter[13] PWM_in_1|accelerating_counter[12] PWM_in_1|accelerating_counter[11] PWM_in_1|accelerating_counter[10] PWM_in_1|accelerating_counter[9] PWM_in_1|accelerating_counter[8] PWM_in_1|accelerating_counter[7] PWM_in_1|accelerating_counter[6] PWM_in_1|accelerating_counter[5] PWM_in_1|accelerating_counter[4] PWM_in_1|accelerating_counter[3] PWM_in_1|accelerating_counter[2] PWM_in_1|accelerating_counter[1] PWM_in_1|accelerating_counter[0] -autobundled
netbloc @PWM_in_1|accelerating_counter 1 5 6 1590 818 NJ 818 2260J 798 NJ 798 3000J 848 3500
levelinfo -pg 1 0 80 7060
levelinfo -hier PWM_in_1 * 330 660 930 1190 1390 1690 2040 2410 2820 3230 3770 4200 4510 4780 5120 5540 5910 6320 6730 *
pagesize -pg 1 -db -bbox -sgen 0 -10 7060 1170
pagesize -hier PWM_in_1 -db -bbox -sgen 80 28 6940 1138
show
fullfit
#
# initialize ictrl to current module top_level work:top_level:NOFILE
ictrl init topinfo |
