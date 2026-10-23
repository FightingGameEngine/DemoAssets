
;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command] ;Half circle back + a
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command] ;Half circle back + a
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command] ;Half circle back + a
name = "HCB_z"
command = ~F, DF, D, DB, B, z

[Command] ;Half circle back + a
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command] ;Half circle back + a
name = "HCF_y"
command = ~B, DB, D, DF, F, y

[Command] ;Half circle back + a
name = "HCF_z"
command = ~B, DB, D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "QCF_2k"
command = ~D, DF, F, a+b

[Command]
name = "QCF_2k"
command = ~D, DF, F, a+c

[Command]
name = "QCF_2k"
command = ~D, DF, F, b+c

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+y

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+z

[Command]
name = "QCF_2p"
command = ~D, DF, F, y+z

[Command]
name = "QCB_2p"
command = ~D, DB, B, x+y

[Command]
name = "QCB_2p"
command = ~D, DB, B, x+z

[Command]
name = "QCB_2p"
command = ~D, DB, B, y+z


[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "pushback"
command = y+b

[Command]
name = "launcher"
command = x+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "FWD_y"
command = /$F,y
time = 1

[Command]
name = "FWD_z"
command = /$F,z
time = 1

[Command]
name = "FWD_b"
command = /$F,b
time = 1

[Command]
name = "FWD_c"
command = /$F,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "counter"
command = /$B, x + a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "DU"
command = D, U
time = 15

[Command]
name = "DU"
command = D, UB
time = 15

[Command]
name = "DU"
command = D, UF
time = 15

[Command]
name = "airfollow"
command = U

[Command]
name = "airfollow"
command = UF

[Command]
name = "airfollow" ;Required (do not remove)
command = /$U
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;Dash Forward
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = (Statetype != A) && (ctrl)
trigger1 = (command = "FF") && (var(59) = 0)
trigger2 = (var(59) = 1) && (P2BodyDist X = [200, 400]) && (stateno != 161) && (random > 900)

;Air Dash Forward
[State -1, Dash Forward Air]
type = ChangeState
value = 101
trigger1 = (command = "FF") && (var(59) = 0) && (Statetype = A) && (ctrl) && (stateno != 101)
trigger2 = (var(59) = 1) && (P2BodyDist X = [200, 400]) && (random > 900) && (Statetype = A) && (ctrl) && (stateno != 101)

;AI
[State -1,AI Combo]
type = ChangeState
value = 3300
triggerall = (var(59) = 1) && (ctrl)
trigger1 = (P2BodyDist X = [0, 20]) && (P2BodyDist y = [-10, 10]) && var(35) != 3300 && var(36) = 0 && (random > 600) && p2life > 0

;Dash Backward
[State -1, Dash Backward]
type = ChangeState
value = 105
triggerall = (Statetype != A) && (ctrl)
trigger1 = (command = "BB") && (var(59) = 0)
trigger2 = (var(59) = 1) && (P2BodyDist X = [0, 100]) && (backedgedist > 200) && random >= 980

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = (Statetype != A) && (ctrl)
trigger1 = (command = "DU") ;&& (var(20) = 0)

[State -1, Hyper Pumpkin Bomb]
type = ChangeState
value = 3100
triggerall = (ctrl)
trigger1 = (command = "QCF_2p") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Glider Attack]
type = ChangeState
value = 3000
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "QCF_2k") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Goblin Line]
type = ChangeState
value = 3200
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "qcb_2k") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Goblins Attack]
type = ChangeState
value = 3400
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "QCB_2p") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Hyper Pumpkin Bomb Combo]
type = ChangeState
value = 3100
triggerall = (stateno = [200,7002])
trigger1 = (command = "QCF_2p") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Glider Attack Combo]
type = ChangeState
value = 3000
triggerall = (Statetype = S) && (stateno = [200,450]) && movecontact
trigger1 = (command = "QCF_2k") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Goblin Line Combo]
type = ChangeState
value = 3200
triggerall = (Statetype = S) && (stateno = [200,450]) && movecontact
trigger1 = (command = "qcb_2k") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1, Goblins Attack Combo]
type = ChangeState
value = 3400
triggerall = (Statetype = S) && (stateno = [200,450]) && movecontact
trigger1 = (command = "QCB_2p") && (power >= 1000) && (var(59) = 0)
trigger2 = (var(59) = 1) && (power >= 1000) && (P2BodyDist X > 80) && random >= 900

[State -1,PumpkinBombLight]
type = ChangeState
value = 1000
triggerall = (ctrl)
trigger1 = (command = "QCF_y") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (P2BodyDist X = [0,100]) && random >= 900

[State -1,PumpkinBombMedium]
type = ChangeState
value = 2000
triggerall = (ctrl)
trigger1 = (command = "QCF_z") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (P2BodyDist X = [100,120]) && random >= 900

[State -1,PumpkinBombLong]
type = ChangeState
value = 2001
triggerall = (ctrl)
trigger1 = (command = "QCF_x") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (P2BodyDist X > 110) && random >= 900

[State -1,PumpkinBombDown]
type = ChangeState
value = 1009
trigger1 = (command = "QCF_a") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900

[State -1,PumpkinBombDownForward]
type = ChangeState
value = 1010
trigger1 = (command = "QCF_b") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900

[State -1,PumpkinBombDownForwardMore]
type = ChangeState
value = 1011
trigger1 = (command = "QCF_c") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900

[State -1,Lazer]
type = ChangeState
value = 1200
trigger1 = (command = "QCB_x") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900
trigger3 = (command = "QCB_x") && (var(59) = 0) && (stateno = [200,750]) && movecontact

[State -1,Lazer]
type = ChangeState
value = 1200
trigger1 = (command = "QCB_y") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900
trigger3 = (command = "QCB_y") && (var(59) = 0) && (stateno = [200,750]) && movecontact

[State -1,Lazer]
type = ChangeState
value = 1200
trigger1 = (command = "QCB_z") && (ctrl) && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1000 && var(36) = 0 && (ctrl) && (P2BodyDist X = [100,120]) && random >= 900
trigger3 = (command = "QCB_z") && (var(59) = 0) && (stateno = [200,750]) && movecontact

[State -1, Spear Thing]
type = ChangeState
value = 1100
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "QCB_a") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1110 && var(36) = 0 && (P2BodyDist X > 80) && random >= 900

[State -1, Spear Thing]
type = ChangeState
value = 1110
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "QCB_b") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1110 && var(36) = 0 && (P2BodyDist X > 80) && random >= 900

[State -1, Spear Thing]
type = ChangeState
value = 1120
triggerall = (Statetype = S) && (ctrl)
trigger1 = (command = "QCB_c") && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 1110 && var(36) = 0 && (P2BodyDist X > 80) && random >= 900

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
; Overhead Throw
[State -1, Throw]
type = ChangeState
value = 800
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "holdfwd"   || command = "holdback"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
;trigger1 = p2movetype != H

;Recover Roll
;[State -1, Roll Forward]
;type = ChangeState
;value = 4800
;triggerall = (stateno = 5120) && life
;trigger1 = var(59) = 0 && command = "holdfwd"
;trigger2 = var(59) = 1 &&(P2BodyDist X = [0, 20]) && random >= 990

;[State -1, Roll Back]
;type = ChangeState
;value = 4801
;triggerall = (stateno = 5120) && life
;trigger1 = var(59) = 0 && command = "holdback"  ;holdback
;trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall =  (statetype = S) && (ctrl)
trigger1 = command = "x" && command != "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 200 && var(36) = 0 && (P2BodyDist X = [0, 60]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち強パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =  (statetype = S) && (ctrl)
trigger1 = (var(59) = 0) && (ctrl) && (command != "holddown") && command = "y"
trigger2 = (var(59) = 1) && var(35) != 210 && var(36) = 0 && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 900

;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = (statetype = S) && (ctrl)
trigger1 = (var(59) = 0) && (command = "z") && (command != "holddown") 
trigger2 = (var(59) = 1) & var(35) != 220 && var(36) = 0 && (P2BodyDist X = [0, 100]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (statetype = S) && (ctrl)
trigger1 = (var(59) = 0) && command = "a" && (command != "holddown")
trigger2 = (var(59) = 1) && var(35) != 230 && var(36) = 0 && (P2BodyDist X = [0, 50]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Standing Medium Kick
;立ち強キック
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = (statetype = S) && (ctrl)
trigger1 = command = "b" && command != "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 240 && var(36) = 0 && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 900

;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (statetype = S) && (ctrl)
trigger1 = command = "c" && command != "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 250 && var(36) = 0 && (P2BodyDist X = [0, 150]) && (P2BodyDist y = [-80, 80]) && random >= 900
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 0
trigger1 = command = "start"  && ctrl && (var(59) = 0)

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (statetype = C) && (ctrl)
trigger1 = command = "x" && command = "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 400 && var(36) = 0 && (P2BodyDist X = [0, 60]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Crouching Medium Punch
;しゃがみ強パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (statetype = C) && (ctrl)
trigger1 = command = "y" && command = "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 410 && var(36) = 0 && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 900

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (statetype = C) && (ctrl)
trigger1 = command = "z" && command = "holddown"&& (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 420 && var(36) = 0 && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 900
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (statetype = C) && (ctrl) 
trigger1 = command = "a" && command = "holddown"&& (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 430 && var(36) = 0 && (P2BodyDist X = [0, 60]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching medium Kick]
type = ChangeState
value = 440
triggerall = (statetype = C) && (ctrl)
trigger1 = command = "b"  && command = "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 440 && var(36) = 0 && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 900

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = (statetype = C) && (ctrl)
trigger1 = command = "c" && command = "holddown" && (var(59) = 0)
trigger2 = (var(59) = 1) && var(35) != 450 && var(36) = 0 && (P2BodyDist X = [0,150]) && (P2BodyDist y = [-80, 80]) && random >= 900
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (statetype = A) && (ctrl)
trigger1 = (var(59) = 0) && (command = "x")  
trigger2 = (var(59) = 1) && var(35) != 600 && var(36) = 0 && (P2BodyDist X = [0, 60]) && (P2BodyDist y = [-80, 80]) && random >= 900

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall =  ctrl && statetype = A
trigger1 = var(59) = 0 && command = "y"
trigger2 = (var(59) = 1) && var(35) != 610 && var(36) = 0 && (P2BodyDist X = [0, 70]) && (P2BodyDist y = [-80, 80]) && random >= 900

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (statetype = A) && (ctrl)
trigger1 = (var(59) = 0) && (command = "z") 
trigger2 = (var(59) = 1) && var(35) != 620 && var(36) = 0 && (P2BodyDist X = [0, 60]) && (P2BodyDist y = [-80, 80]) && random >= 900
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
trigger1 = (var(59) = 0) && command = "a" && ctrl && statetype = A
trigger2 = (var(59) = 1) && var(35) != 630 && var(36) = 0 && ctrl && statetype = A && (P2BodyDist X = [0, 50]) && random >= 900

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
trigger1 = command = "b" && (var(59) = 0) && ctrl && statetype = A
trigger2 = (var(59) = 1) && var(35) != 640 && var(36) = 0 && (P2BodyDist X = [0, 70]) && ctrl && statetype = A && random >= 900

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
trigger1 = command = "c" && (var(59) = 0) && ctrl && statetype = A
trigger1 = command != "holdup"
trigger2 = (var(59) = 1) && var(35) != 650 && var(36) = 0 && (P2BodyDist X = [0, 80]) && ctrl && statetype = A && random >= 900

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
trigger1 = command = "c" && (var(59) = 0) && ctrl && statetype = A
trigger1 = command = "holdup"
trigger2 = (var(59) = 1) && var(35) != 650 && var(36) = 0 && (P2BodyDist X = [0, 80]) && ctrl && statetype = A && random >= 900

;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

