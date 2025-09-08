//===========================================
// Q1: A rise -> B high next cycle 🚀
property p1; @(posedge clk) $rose(A) |=> B; endproperty
assert property(p1);

//===========================================
// Q2: Signal stable 3 cycles 🛑
property p2; @(posedge clk) $stable(sig)[*3]; endproperty
assert property(p2);

//===========================================
// Q3: B falls -> C low next cycle ⬇️
property p3; @(posedge clk) $fell(B) |=> !C; endproperty
assert property(p3);

//===========================================
// Q4: A high -> C must toggle next cycle 🔀
property p4; @(posedge clk) A |=> C != $past(C); endproperty
assert property(p4);

//===========================================
// Q5: A rising -> B stays 1 for 2 cycles ✌️
property p5; @(posedge clk) $rose(A) |=> B[*2]; endproperty
assert property(p5);

//===========================================
// Q6: C must always be 0 when reset active ❌
property p6; @(posedge clk) reset |-> C==0; endproperty
assert property(p6);

//===========================================
// Q7: D rising -> E low for 3 cycles 📉
property p7; @(posedge clk) $rose(D) |=> !E[*3]; endproperty
assert property(p7);

//===========================================
// Q8: Clock duty cycle 50% ⏱️
property p8; @(posedge clk) $rose(clk) |=> ##1 $fell(clk); endproperty
assert property(p8);

//===========================================
// Q9: Signal toggles every cycle 🔄
property p9; @(posedge clk) sig != $past(sig); endproperty
assert property(p9);

//===========================================
// Q10: A high -> B low same cycle ⚡
property p10; @(posedge clk) A |-> !B; endproperty
assert property(p10);

//===========================================
// Q11: A goes high -> B goes high in 2 cycles ⏩
property p11; @(posedge clk) $rose(A) |=> ##2 B; endproperty
assert property(p11);

//===========================================
// Q12: If enable, then data stable 📊
property p12; @(posedge clk) enable |-> $stable(data); endproperty
assert property(p12);

//===========================================
// Q13: A and B never high together 🚫
property p13; @(posedge clk) !(A && B); endproperty
assert property(p13);

//===========================================
// Q14: Req -> Ack within 3 cycles 📬
property p14; @(posedge clk) req |=> ##[1:3] ack; endproperty
assert property(p14);

//===========================================
// Q15: Start -> Done in 5 cycles ✅
property p15; @(posedge clk) start |=> ##5 done; endproperty
assert property(p15);

//===========================================
// Q16: Reset -> Count=0 🔢
property p16; @(posedge clk) reset |-> (count==0); endproperty
assert property(p16);

//===========================================
// Q17: Toggle signal every 2 cycles ♻️
property p17; @(posedge clk) $rose(tg) |=> ##2 $fell(tg); endproperty
assert property(p17);

//===========================================
// Q18: A high -> keep B until C high ⏳
property p18; @(posedge clk) A |-> (B throughout !C); endproperty
assert property(p18);

//===========================================
// Q19: Data changes only when enable 🔐
property p19; @(posedge clk) !$rose(data) or enable; endproperty
assert property(p19);

//===========================================
// Q20: Pulse width 1 cycle 📏
property p20; @(posedge clk) $rose(pulse) |=> ##1 !$fell(pulse); endproperty
assert property(p20);

//===========================================
// Q21: Req -> Ack -> Done sequence 🛠️
sequence s21; req ##1 ack ##1 done; endsequence
property p21; @(posedge clk) s21; endproperty
assert property(p21);

//===========================================
// Q22: Data unchanged for 4 cycles 📦
property p22; @(posedge clk) $stable(data)[*4]; endproperty
assert property(p22);

//===========================================
// Q23: Two consecutive rises of A impossible 🚷
property p23; @(posedge clk) $rose(A) |=> !$rose(A)[*1]; endproperty
assert property(p23);

//===========================================
// Q24: A high -> B toggles next cycle 🔃
property p24; @(posedge clk) A |=> B != $past(B); endproperty
assert property(p24);

//===========================================
// Q25: Start -> Ready within 2 cycles ⏱️
property p25; @(posedge clk) start |=> ##[1:2] ready; endproperty
assert property(p25);

//===========================================
// Q26: Valid -> Enable next cycle 📡
property p26; @(posedge clk) valid |=> ##1 enable; endproperty
assert property(p26);

//===========================================
// Q27: A low -> B must be 1 🟢
property p27; @(posedge clk) !A |-> B; endproperty
assert property(p27);

//===========================================
// Q28: B must remain low during reset 🔒
property p28; @(posedge clk) reset |-> !B; endproperty
assert property(p28);

//===========================================
// Q29: A high 2 times -> B must high after 🔁
sequence s29; A ##1 A; endsequence
property p29; @(posedge clk) s29 |=> B; endproperty
assert property(p29);

//===========================================
// Q30: Rising edge of A -> C stable 🧊
property p30; @(posedge clk) $rose(A) |=> $stable(C)[*3]; endproperty
assert property(p30);

//===========================================
// Q31: B never high for >4 cycles ⛔
property p31; @(posedge clk) B[*5] |-> 0; endproperty
assert property(p31);

//===========================================
// Q32: Count must increment 📈
property p32; @(posedge clk) !reset |-> count == $past(count)+1; endproperty
assert property(p32);

//===========================================
// Q33: A must follow B ⏩
property p33; @(posedge clk) $rose(B) |=> $rose(A); endproperty
assert property(p33);

//===========================================
// Q34: If C rises, D must fall ⤵️
property p34; @(posedge clk) $rose(C) |=> $fell(D); endproperty
assert property(p34);

//===========================================
// Q35: Req -> Ack before 5 cycles 📨
property p35; @(posedge clk) req |=> ##[1:5] ack; endproperty
assert property(p35);

//===========================================
// Q36: Toggle every clock 🔂
property p36; @(posedge clk) sig != $past(sig); endproperty
assert property(p36);

//===========================================
// Q37: D stable until enable 💾
property p37; @(posedge clk) !enable |-> $stable(D); endproperty
assert property(p37);

//===========================================
// Q38: Ready -> Valid before ⏪
property p38; @(posedge clk) ready |-> valid; endproperty
assert property(p38);

//===========================================
// Q39: Pulse width exactly 2 cycles ⌛
property p39; @(posedge clk) $rose(pulse) |=> pulse[*2] ##1 !$fell(pulse); endproperty
assert property(p39);

//===========================================
// Q40: Reset low -> Output unknown ❓
property p40; @(posedge clk) !reset |-> !$isunknown(out); endproperty
assert property(p40);

//===========================================
// Q41: A rise -> B must 1, C must 0 ⚖️
property p41; @(posedge clk) $rose(A) |=> (B && !C); endproperty
assert property(p41);

//===========================================
// Q42: Req & Ack not together 🚫
property p42; @(posedge clk) !(req && ack); endproperty
assert property(p42);

//===========================================
// Q43: Enable -> Count increments 🔢
property p43; @(posedge clk) enable |=> count==$past(count)+1; endproperty
assert property(p43);

//===========================================
// Q44: Valid must last 1 cycle only ⏹️
property p44; @(posedge clk) $rose(valid) |=> !valid[*2]; endproperty
assert property(p44);

//===========================================
// Q45: C must toggle every 2 cycles 🔁
property p45; @(posedge clk) $rose(C) |=> ##2 $fell(C); endproperty
assert property(p45);

//===========================================
// Q46: No glitch on signal 🚫⚡
property p46; @(posedge clk) !$changed(sig) within 1ns; endproperty
assert property(p46);

//===========================================
// Q47: Reset high keeps Q low 🛑
property p47; @(posedge clk) reset |-> (Q==0); endproperty
assert property(p47);

//===========================================
// Q48: Start must eventually Done 🎯
property p48; @(posedge clk) start |=> ##[1:$] done; endproperty
assert property(p48);

//===========================================
// Q49: Toggle exactly once per 4 cycles ⏳
property p49; @(posedge clk) sig |=> sig[*4]; endproperty
assert property(p49);

//===========================================
// Q50: A & B never equal 🚫==
property p50; @(posedge clk) !(A==B); endproperty
assert property(p50);

//===========================================
// Q51: Req -> Ack in 1 cycle 📨
property p51; @(posedge clk) req |=> ##1 ack; endproperty
assert property(p51);

//===========================================
// Q52: Enable holds output constant ⛓️
property p52; @(posedge clk) enable |-> $stable(out); endproperty
assert property(p52);

//===========================================
// Q53: Counter rolls after 15 🔄
property p53; @(posedge clk) count==15 |=> ##1 count==0; endproperty
assert property(p53);

//===========================================
// Q54: Data valid -> parity check 🧮
property p54; @(posedge clk) valid |-> (^data == parity); endproperty
assert property(p54);

//===========================================
// Q55: Handshake req->ack within 2 cycles 🤝
property p55; @(posedge clk) req |=> ##[1:2] ack; endproperty
assert property(p55);

//===========================================
// Q56: FIFO full -> write disabled 📦
property p56; @(posedge clk) full |-> !write; endproperty
assert property(p56);

//===========================================
// Q57: FIFO empty -> read disabled 📭
property p57; @(posedge clk) empty |-> !read; endproperty
assert property(p57);

//===========================================
// Q58: Load -> Count=data_in 📥
property p58; @(posedge clk) load |=> count==data_in; endproperty
assert property(p58);

//===========================================
// Q59: JK flipflop toggle 🔀
property p59; @(posedge clk) (J && K) |=> Q != $past(Q); endproperty
assert property(p59);

//===========================================
// Q60: FSM reset -> state=S0 🔄
property p60; @(posedge clk) reset |-> state==S0; endproperty
assert property(p60);

//===========================================
// Q61: Sequence 101 detect 🔍
sequence s61; 1 ##1 0 ##1 1; endsequence
property p61; @(posedge clk) s61 |=> detect; endproperty
assert property(p61);

//===========================================
// Q62: A stable until B high 🛑
property p62; @(posedge clk) $rose(A) |-> (A throughout !B); endproperty
assert property(p62);

//===========================================
// Q63: Ack must follow Req 📨
property p63; @(posedge clk) req |=> ##[1:$] ack; endproperty
assert property(p63);

//===========================================
// Q64: Data bus not X ❌
property p64; @(posedge clk) !$isunknown(data); endproperty
assert property(p64);

//===========================================
// Q65: Reset clears all regs 🧹
property p65; @(posedge clk) reset |-> regs==0; endproperty
assert property(p65);

//===========================================
// Q66: Valid stable till ready ⛓️
property p66; @(posedge clk) valid |-> (valid throughout !ready); endproperty
assert property(p66);

//===========================================
// Q67: Done within 10 cycles ⏲️
property p67; @(posedge clk) start |=> ##[1:10] done; endproperty
assert property(p67);

//===========================================
// Q68: Parity error detect ⚠️
property p68; @(posedge clk) (^data)!=parity |-> error; endproperty
assert property(p68);

//===========================================
// Q69: Counter never >MAX ⛔
property p69; @(posedge clk) count <= MAX; endproperty
assert property(p69);

//===========================================
// Q70: Start pulse width 1 cycle 📏
property p70; @(posedge clk) $rose(start) |=> !start; endproperty
assert property(p70);

//===========================================
// Q71: Request must not overlap 🚫
property p71; @(posedge clk) !(req && $past(req)); endproperty
assert property(p71);

//===========================================
// Q72: Reset synchronizes clk 🔔
property p72; @(posedge clk) reset |-> ##1 !reset; endproperty
assert property(p72);

//===========================================
// Q73: Ack low until req high ⏳
property p73; @(posedge clk) !req |-> !ack; endproperty
assert property(p73);

//===========================================
// Q74: A follows B delay 2 cycles ⏩
property p74; @(posedge clk) $rose(B) |=> ##2 A; endproperty
assert property(p74);

//===========================================
// Q75: Load->Q=data ⬇️
property p75; @(posedge clk) load |=> Q==data; endproperty
assert property(p75);

//===========================================
// Q76: Reset->FSM idle 😴
property p76; @(posedge clk) reset |-> state==IDLE; endproperty
assert property(p76);

//===========================================
// Q77: Rising edge of clk toggles q 🔄
property p77; @(posedge clk) q != $past(q); endproperty
assert property(p77);

//===========================================
// Q78: Ack must deassert after req 🚪
property p78; @(posedge clk) $fell(req) |=> ##[0:1] !ack; endproperty
assert property(p78);

//===========================================
// Q79: Counter increments only when enable 📈
property p79; @(posedge clk) !enable |-> count==$past(count); endproperty
assert property(p79);

//===========================================
// Q80: Data valid until ack 📨
property p80; @(posedge clk) valid |-> (valid throughout !ack); endproperty
assert property(p80);

//===========================================
// Q81: Ready in 4-6 cycles 🕓
property p81; @(posedge clk) valid |=> ##[4:6] ready; endproperty
assert property(p81);

//===========================================
// Q82: A high -> B low next 2 cycles ⬇️
property p82; @(posedge clk) A |=> !B[*2]; endproperty
assert property(p82);

//===========================================
// Q83: Req->Ack->Done ✔️
sequence s83; req ##1 ack ##1 done; endsequence
property p83; @(posedge clk) s83; endproperty
assert property(p83);

//===========================================
// Q84: J=1,K=0 -> Set 🟢
property p84; @(posedge clk) (J && !K) |=> Q; endproperty
assert property(p84);

//===========================================
// Q85: J=0,K=1 -> Reset 🔴
property p85; @(posedge clk) (!J && K) |=> !Q; endproperty
assert property(p85);

//===========================================
// Q86: Counter down mode ⬇️
property p86; @(posedge clk) down |=> count==$past(count)-1; endproperty
assert property(p86);

//===========================================
// Q87: Counter up mode ⬆️
property p87; @(posedge clk) up |=> count==$past(count)+1; endproperty
assert property(p87);

//===========================================
// Q88: A toggles every 3 cycles 🔂
property p88; @(posedge clk) $rose(A) |=> ##3 $fell(A); endproperty
assert property(p88);

//===========================================
// Q89: Req->Ack in 1-3 cycles ⏱️
property p89; @(posedge clk) req |=> ##[1:3] ack; endproperty
assert property(p89);

//===========================================
// Q90: Done stays high 2 cycles ✌️
property p90; @(posedge clk) $rose(done) |=> done[*2]; endproperty
assert property(p90);

//===========================================
// Q91: FSM detect "110" 🔍
sequence s91; 1 ##1 1 ##1 0; endsequence
property p91; @(posedge clk) s91 |=> detect; endproperty
assert property(p91);

//===========================================
// Q92: Signal never X ❌
property p92; @(posedge clk) !$isunknown(sig); endproperty
assert property(p92);

//===========================================
// Q93: Reset clears counter 0 🧽
property p93; @(posedge clk) reset |-> count==0; endproperty
assert property(p93);

//===========================================
// Q94: Overflow -> Error ⚠️
property p94; @(posedge clk) overflow |-> error; endproperty
assert property(p94);

//===========================================
// Q95: Load sync with clk ⏰
property p95; @(posedge clk) $rose(load) |-> ##1 data; endproperty
assert property(p95);

//===========================================
// Q96: Rising A->falling B ↔️
property p96; @(posedge clk) $rose(A) |=> $fell(B); endproperty
assert property(p96);

//===========================================
// Q97: Enable->Out changes 🌀
property p97; @(posedge clk) enable |-> $changed(out); endproperty
assert property(p97);

//===========================================
// Q98: Out stable until enable 🧊
property p98; @(posedge clk) !enable |-> $stable(out); endproperty
assert property(p98);

//===========================================
// Q99: Handshake valid->ready->done 🤝
sequence s99; valid ##1 ready ##1 done; endsequence
property p99; @(posedge clk) s99; endproperty
assert property(p99);

//===========================================
// Q100: Clock toggles each half cycle ⏳
property p100; @(posedge clk) clk != $past(clk); endproperty
assert




//===========================================
// Q1: A high -> B next cycle 🚀
property p1; @(posedge clk) A |=> B; endproperty
assert property(p1);

//===========================================
// Q2: B stable for 3 cycles 🛑
property p2; @(posedge clk) $stable(B)[*3]; endproperty
assert property(p2);

//===========================================
// Q3: A rise -> C falls in 2 cycles ⏱️
property p3; @(posedge clk) $rose(A) |=> ##2 $fell(C); endproperty
assert property(p3);

//===========================================
// Q4: A & B never high together ❌
property p4; @(posedge clk) !(A && B); endproperty
assert property(p4);

//===========================================
// Q5: D toggles every 2 cycles 🔁
property p5; @(posedge clk) $changed(D)[*2]; endproperty
assert property(p5);

//===========================================
// Q6: Reset low -> Q=0 📴
property p6; @(posedge clk) !reset |-> (Q==0); endproperty
assert property(p6);

//===========================================
// Q7: Enable -> Data stable 📊
property p7; @(posedge clk) enable |-> $stable(data); endproperty
assert property(p7);

//===========================================
// Q8: Req -> Ack in 1-3 cycles 📩
property p8; @(posedge clk) req |=> ##[1:3] ack; endproperty
assert property(p8);

//===========================================
// Q9: Start -> Done within 5 cycles ✅
property p9; @(posedge clk) start |=> ##[1:5] done; endproperty
assert property(p9);

//===========================================
// Q10: Valid stays until Ready 🙌
property p10; @(posedge clk) valid |-> valid until_with ready; endproperty
assert property(p10);

//===========================================
// Q11: No back-to-back reset 🚷
property p11; @(posedge clk) $rose(reset) |-> !reset[->1]; endproperty
assert property(p11);

//===========================================
// Q12: Pulse width = 2 cycles ⌛
property p12; @(posedge clk) $rose(pulse) |=> pulse[*2]; endproperty
assert property(p12);

//===========================================
// Q13: Req -> Ack -> Deassert Req 📤
property p13; @(posedge clk) req |=> ack ##1 !req; endproperty
assert property(p13);

//===========================================
// Q14: Counter increments 📈
property p14; @(posedge clk) $rose(en) |=> (count == $past(count)+1); endproperty
assert property(p14);

//===========================================
// Q15: Counter resets 🆑
property p15; @(posedge clk) $rose(rst) |=> (count==0); endproperty
assert property(p15);

//===========================================
// Q16: A followed by B 2 cycles later 🔂
property p16; @(posedge clk) A |=> ##2 B; endproperty
assert property(p16);

//===========================================
// Q17: X must toggle every clock ⏳
property p17; @(posedge clk) X != $past(X); endproperty
assert property(p17);

//===========================================
// Q18: Signal stable until ack 🔒
property p18; @(posedge clk) req |-> $stable(sig) until ack; endproperty
assert property(p18);

//===========================================
// Q19: Rising edge of clk_en -> q toggles 🔀
property p19; @(posedge clk) $rose(clk_en) |=> q != $past(q); endproperty
assert property(p19);

//===========================================
// Q20: Load -> Q=Data 🎯
property p20; @(posedge clk) load |=> (Q==D); endproperty
assert property(p20);

//===========================================
// Q21: A high -> B & C low 🔇
property p21; @(posedge clk) A |-> !(B||C); endproperty
assert property(p21);

//===========================================
// Q22: A then not A for 3 cycles 🧩
property p22; @(posedge clk) A |=> !A[*3]; endproperty
assert property(p22);

//===========================================
// Q23: Valid high -> Ack within 2 cycles 🎬
property p23; @(posedge clk) valid |=> ##[1:2] ack; endproperty
assert property(p23);

//===========================================
// Q24: Clock divide by 2 ⏲️
property p24; @(posedge clk) div2 != $past(div2); endproperty
assert property(p24);

//===========================================
// Q25: Start -> Busy stays 4 cycles 🔄
property p25; @(posedge clk) start |=> busy[*4]; endproperty
assert property(p25);

//===========================================
// Q26: J=K=1 -> Toggle JK flipflop 🔃
property p26; @(posedge clk) (J && K) |=> Q != $past(Q); endproperty
assert property(p26);

//===========================================
// Q27: J=1,K=0 -> Set Q 🟢
property p27; @(posedge clk) (J && !K) |=> Q; endproperty
assert property(p27);

//===========================================
// Q28: J=0,K=1 -> Reset Q 🔴
property p28; @(posedge clk) (!J && K) |=> !Q; endproperty
assert property(p28);

//===========================================
// Q29: No illegal state in FSM 🚫
property p29; @(posedge clk) !(state==3'b111); endproperty
assert property(p29);

//===========================================
// Q30: FSM reset to S0 🔁
property p30; @(posedge clk) reset |=> (state==S0); endproperty
assert property(p30);

//===========================================
// Q31: Data valid -> latch stable 💾
property p31; @(posedge clk) d_valid |-> $stable(latch); endproperty
assert property(p31);

//===========================================
// Q32: A stays high for 2-4 cycles ⌛
property p32; @(posedge clk) $rose(A) |=> A[*2:4]; endproperty
assert property(p32);

//===========================================
// Q33: Pulse single-cycle only 🔂
property p33; @(posedge clk) $rose(pulse) |=> !pulse; endproperty
assert property(p33);

//===========================================
// Q34: B rise -> A already high ⬆️
property p34; @(posedge clk) $rose(B) |-> A; endproperty
assert property(p34);

//===========================================
// Q35: Valid cannot fall before ack 🧷
property p35; @(posedge clk) valid |-> valid until ack; endproperty
assert property(p35);

//===========================================
// Q36: Counter wraps mod-8 🔁
property p36; @(posedge clk) (count==7) |=> (count==0); endproperty
assert property(p36);

//===========================================
// Q37: No X & Y high together 🚷
property p37; @(posedge clk) !(X && Y); endproperty
assert property(p37);

//===========================================
// Q38: Enable -> Out stable 🔏
property p38; @(posedge clk) enable |-> $stable(out); endproperty
assert property(p38);

//===========================================
// Q39: No glitch on clk_en ⚡
property p39; @(posedge clk) $stable(clk_en); endproperty
assert property(p39);

//===========================================
// Q40: Data changes only with load 🛎️
property p40; @(posedge clk) !$rose(load) |-> $stable(data); endproperty
assert property(p40);

//===========================================
// Q41: Serial start bit always 0 🥏
property p41; @(posedge clk) $rose(tx_start) |-> (tx_line==0); endproperty
assert property(p41);

//===========================================
// Q42: Stop bit always 1 🛑
property p42; @(posedge clk) tx_stop |-> tx_line==1; endproperty
assert property(p42);

//===========================================
// Q43: A toggles every 3 cycles 🔂
property p43; @(posedge clk) $rose(A) |=> ##3 $fell(A); endproperty
assert property(p43);

//===========================================
// Q44: Req implies Gnt in <=4 cycles 📌
property p44; @(posedge clk) req |=> ##[1:4] gnt; endproperty
assert property(p44);

//===========================================
// Q45: FIFO full -> No write 🛑
property p45; @(posedge clk) full |-> !write; endproperty
assert property(p45);

//===========================================
// Q46: FIFO empty -> No read 📥
property p46; @(posedge clk) empty |-> !read; endproperty
assert property(p46);

//===========================================
// Q47: Power on reset clears Q 📴
property p47; @(posedge clk) por |=> (Q==0); endproperty
assert property(p47);

//===========================================
// Q48: Data ready -> Ack within 3 ⏲️
property p48; @(posedge clk) data_rdy |=> ##[1:3] ack; endproperty
assert property(p48);

//===========================================
// Q49: Clock duty cycle check 50% ⚖️
property p49; @(posedge clk) clk |=> ##1 !clk; endproperty
assert property(p49);

//===========================================
// Q50: Enable must not glitch 🚦
property p50; @(posedge clk) $rose(enable) |-> enable[*1:$]; endproperty
assert property(p50);

//===========================================
// Q51: Reset -> Count zero 🎯
property p51; @(posedge clk) reset |=> (cnt==0); endproperty
assert property(p51);

//===========================================
// Q52: Toggle every 4 cycles 🔄
property p52; @(posedge clk) $changed(sig)[*4]; endproperty
assert property(p52);

//===========================================
// Q53: Handshake valid -> ready 👐
property p53; @(posedge clk) valid |-> ready within [1:3]; endproperty
assert property(p53);

//===========================================
// Q54: Address aligned 🧾
property p54; @(posedge clk) (addr%4==0); endproperty
assert property(p54);

//===========================================
// Q55: Data stable during write ✍️
property p55; @(posedge clk) write |-> $stable(data); endproperty
assert property(p55);

//===========================================
// Q56: No two enables overlap 🚫
property p56; @(posedge clk) !(en1 && en2); endproperty
assert property(p56);

//===========================================
// Q57: Rising edge of trigger -> done in 2 ⏲️
property p57; @(posedge clk) $rose(trig) |=> ##2 done; endproperty
assert property(p57);

//===========================================
// Q58: B low until reset deassert ⛔
property p58; @(posedge clk) reset |-> !B until !reset; endproperty
assert property(p58);

//===========================================
// Q59: Output stable 5 cycles 📡
property p59; @(posedge clk) $stable(out)[*5]; endproperty
assert property(p59);

//===========================================
// Q60: Ack before req falls 📝
property p60; @(posedge clk) req |-> req until ack; endproperty
assert property(p60);

//===========================================
// Q61: State machine never S5 🚷
property p61; @(posedge clk) !(state==S5); endproperty
assert property(p61);

//===========================================
// Q62: Signal must init low 📴
property p62; @(posedge clk) $rose(rst_n) |-> !sig; endproperty
assert property(p62);

//===========================================
// Q63: J&K both 0 -> Q holds 🧊
property p63; @(posedge clk) (!J && !K) |=> Q==$past(Q); endproperty
assert property(p63);

//===========================================
// Q64: A pulse width <=2 ⏱️
property p64; @(posedge clk) $rose(A) |=> A[*1:2] ##1 !A; endproperty
assert property(p64);

//===========================================
// Q65: No X rising before reset end ❌
property p65; @(posedge clk) reset |-> !X; endproperty
assert property(p65);

//===========================================
// Q66: Interrupt -> ISR within 5 🖥️
property p66; @(posedge clk) irq |=> ##[1:5] isr; endproperty
assert property(p66);

//===========================================
// Q67: Lock once high stays high 🔒
property p67; @(posedge clk) $rose(lock) |=> lock[*1:$]; endproperty
assert property(p67);

//===========================================
// Q68: Req burst -> Ack after burst 📦
property p68; @(posedge clk) $rose(req) |-> ack within [1:8]; endproperty
assert property(p68);

//===========================================
// Q69: Bus arbiter 1-hot 🔥
property p69; @(posedge clk) $onehot(grant); endproperty
assert property(p69);

//===========================================
// Q70: Grant -> Req active 🛠️
property p70; @(posedge clk) grant |-> req; endproperty
assert property(p70);

//===========================================
// Q71: Valid cannot drop early 🧩
property p71; @(posedge clk) valid |-> valid until ack; endproperty
assert property(p71);

//===========================================
// Q72: Reset synchronizer 2 cycles 🔂
property p72; @(posedge clk) $rose(reset) |=> reset[*2]; endproperty
assert property(p72);

//===========================================
// Q73: Start -> Stop within 10 cycles 🏁
property p73; @(posedge clk) start |=> ##[1:10] stop; endproperty
assert property(p73);

//===========================================
// Q74: Data toggle every enable 🔄
property p74; @(posedge clk) $rose(en) |=> data != $past(data); endproperty
assert property(p74);

//===========================================
// Q75: Config valid -> Load next cycle ⚙️
property p75; @(posedge clk) cfg_valid |=> load; endproperty
assert property(p75);

//===========================================
// Q76: Ack -> Req deassert 📭
property p76; @(posedge clk) ack |=> !req; endproperty
assert property(p76);

//===========================================
// Q77: FIFO never overflow 🚫
property p77; @(posedge clk) (count<=DEPTH); endproperty
assert property(p77);

//===========================================
// Q78: FIFO never underflow 🚫
property p78; @(posedge clk) (count>=0); endproperty
assert property(p78);

//===========================================
// Q79: Address increments by 4 ➕
property p79; @(posedge clk) incr |=> addr==$past(addr)+4; endproperty
assert property(p79);

//===========================================
// Q80: Timeout after 8 cycles ⏰
property p80; @(posedge clk) start |=> ##8 timeout; endproperty
assert property(p80);

//===========================================
// Q81: Signal never X/Z ❎
property p81; @(posedge clk) !$isunknown(sig); endproperty
assert property(p81);

//===========================================
// Q82: Onehot0 grant acceptable 🔥
property p82; @(posedge clk) $onehot0(grant); endproperty
assert property(p82);

//===========================================
// Q83: Req high -> Resp low until done 🔄
property p83; @(posedge clk) req |-> !resp until done; endproperty
assert property(p83);

//===========================================
// Q84: Out stable during busy 🧊
property p84; @(posedge clk) busy |-> $stable(out); endproperty
assert property(p84);

//===========================================
// Q85: Enable toggles clk_out ⏳
property p85; @(posedge clk) $rose(enable) |=> clk_out != $past(clk_out); endproperty
assert property(p85);

//===========================================
// Q86: A must follow B in 1-2 cycles 🔂
property p86; @(posedge clk) B |=> ##[1:2] A; endproperty
assert property(p86);

//===========================================
// Q87: Valid->Done before reset 🔧
property p87; @(posedge clk) valid |-> done until reset; endproperty
assert property(p87);

//===========================================
// Q88: Stable flag during op 🏗️
property p88; @(posedge clk) op |-> $stable(flag); endproperty
assert property(p88);

//===========================================
// Q89: Data must not change if hold 🛑
property p89; @(posedge clk) hold |-> $stable(data); endproperty
assert property(p89);

//===========================================
// Q90: Done pulse single-cycle 🕐
property p90; @(posedge clk) $rose(done) |=> !done; endproperty
assert property(p90);

//===========================================
// Q91: Write must assert valid 🖊️
property p91; @(posedge clk) write |-> valid; endproperty
assert property(p91);

//===========================================
// Q92: Ack within 6 cycles 🕓
property p92; @(posedge clk) req |=> ##[1:6] ack; endproperty
assert property(p92);

//===========================================
// Q93: A rise -> B stable 2 cycles 🔄
property p93; @(posedge clk) $rose(A) |=> $stable(B)[*2]; endproperty
assert property(p93);

//===========================================
// Q94: Handshake: Valid until Ready 🤝
property p94; @(posedge clk) valid |-> valid until_with ready; endproperty
assert property(p94);

//===========================================
// Q95: Config stable till apply ⚙️
property p95; @(posedge clk) cfg |-> $stable(cfg_data) until apply; endproperty
assert property(p95);

//===========================================
// Q96: Error never overlaps Done 🚫
property p96; @(posedge clk) !(error && done); endproperty
assert property(p96);

//===========================================
// Q97: Start -> Finish within 12 ⏱️
property p97; @(posedge clk) start |=> ##[1:12] finish; endproperty
assert property(p97);

//===========================================
// Q98: Busy high until Done ⬆️
property p98; @(posedge clk) $rose(busy) |=> busy until done; endproperty
assert property(p98);

//===========================================
// Q99: Grant follows Request in 2-3 cycles ⏲️
property p99; @(posedge clk) req |=> ##[2:3] grant; endproperty
assert property(p99);

//===========================================
// Q100: A rise -> B fall within 4 cycles 📉
property p100; @(posedge clk) $rose(A) |=> ##[1:4] $fell(B); endproperty
assert property(p100);
