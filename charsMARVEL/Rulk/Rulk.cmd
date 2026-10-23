
[command]
name = "AI1"
command = a,a,b,b,c,c
time = 0

[command]
name = "AI2"
command = b,b,c,c,a,a
time = 0

[command]
name = "AI3"
command = c,c,a,a,b,b
time = 0

[command]
name = "AI4"
command = x,x,y,y,z,z
time = 0

[command]
name = "AI5"
command = y,y,z,z,x,x
time = 0

[command]
name = "AI6"
command = z,z,x,x,y,y
time = 0

[command]
name = "AI7"
command = F,F,D,D,DF,DF
time = 0

[command]
name = "AI8"
command = D,D,DF,DF,F,F
time = 0

[command]
name = "AI9"
command = DF,DF,F,F,D,D
time = 0

[command]
name = "AI10"
command = B,B,D,D,DB,DB
time = 0

[command]
name = "AI11"
command = D,D,DB,DB,B,B
time = 0

[command]
name = "AI12"
command = DB,DB,B,B,D,D
time = 0

[command]
name = "AI13"
command = F,F,U,U,UF,UF
time = 0

[command]
name = "AI14"
command = U,U,UF,UF,F,F
time = 0

[command]
name = "AI15"
command = UF,UF,F,F,U,U
time = 0

[command]
name = "AI16"
command = B,B,U,U,UB,UB
time = 0

[command]
name = "AI17"
command = U,U,UB,UB,B,B
time = 0

[command]
name = "AI18"
command = UB,UB,B,B,U,U
time = 0

[command]
name = "AI19"
command = F,F,B,B,U,U
time = 0

[command]
name = "AI20"
command = B,B,U,U,F,F
time = 0

[command]
name = "AI21"
command = U,U,F,F,B,B
time = 0

[command]
name = "AI22"
command = UB,B,UB,B,U,U
time = 0

[command]
name = "AI23"
command = F,B,B,F,U,U
time = 0

[command]
name = "AI24"
command = B,U,B,U,F,F
time = 0

[command]
name = "AI25"
command = U,F,U,F,B,B
time = 0

[command]
name = "AI26"
command = x,U,U,F,F,B,B
time = 0

[command]
name = "AI27"
command = x,UB,B,UB,B,U,U
time = 0

[command]
name = "AI28"
command = x,F,B,B,F,U,U
time = 0

[command]
name = "AI29"
command = x,B,U,B,U,F,F
time = 0

[command]
name = "AI30"
command = x,U,F,U,F,B,B
time = 0
;>>>>>>>>>> added by tunglashor (AI)

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D,$U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
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


;-| Hypers |-----------------------------------------------------------
[Command] 
name = "Amalgam"
command = ~D, DF, F, z+c
time = 40
[Command] 
name = "Amalgam"
command = ~D, DF, F, y+b
time = 40
[Command] 
name = "Amalgam"
command = ~D, DF, F, x+a
time = 40
[Command] 
name = "Amalgam"
command = ~D, DB, B, z+c
time = 40
[Command] 
name = "Amalgam"
command = ~D, DB, B, y+b
time = 40
[Command] 
name = "Amalgam"
command = ~D, DB, B, x+a
time = 40

;Gamma Crush
[Command]
name = "Gamma Crush"
command = ~D, DB, B, x+z

;Gamma Crush
[Command]
name = "Gamma Crush"
command = ~D, DB, B, x+y

;Gamma Crush
[Command]
name = "Gamma Crush"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_pk"
command = ~D, DB, B, a+x

[Command]
name = "qcb_pk"
command = ~D, DB, B, b+y

[Command]
name = "qcb_pk"
command = ~D, DB, B, c+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c


;-| Specials |-----------------------------------------------------------
[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "GunshotStand_x"
command = ~D, DF, F, x

[Command]
name = "GunshotStand2_x"
command = ~D, DB, B, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

;GAMMA POUND

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "pound"
command = ~D, DB, B, a

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z


[Command] ;Gamma Charge weak: Charge back, then forward + a
name = "Charge_b_a"
command = ~30$B, F, a
time = 10

[Command] ;Gamma Charge medium: Charge back, then forward + b
name = "Charge_b_b"
command = ~30$B, F, b
time = 10

[Command] ;Gamma Charge strong: Charge back, then forward + c
name = "Charge_b_c"
command = ~30$B, F, c
time = 10

[Command] ;upward Gamma Charge weak: Charge down, then up + a
name = "Charge_d_a"
command = ~30$D, U, a
time = 10

[Command] ;upward Gamma Charge medium: Charge down, then up + b
name = "Charge_d_b"
command = ~30$D, U, b
time = 10

[Command] ;upward Gamma Charge strong: Charge down, then up + c
name = "Charge_d_c"
command = ~30$D, U, c
time = 10

[Command] ; Road Rage: Hold down, push all 3 punches
name = "RoadRage"
command = /$D, x+y+z

[Command]
name = "guardpush"
command = x+y
time = 5


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "AI1"
trigger2  = command = "AI2"
trigger3  = command = "AI3"
trigger4  = command = "AI4"
trigger5  = command = "AI5"
trigger6  = command = "AI6"
trigger7  = command = "AI7"
trigger8  = command = "AI8"
trigger9  = command = "AI9"
trigger10  = command = "AI10"
trigger11  = command = "AI11"
trigger12  = command = "AI12"
trigger13  = command = "AI13"
trigger14  = command = "AI14"
trigger15  = command = "AI15"
trigger16  = command = "AI16"
trigger17  = command = "AI17"
trigger18  = command = "AI18"
trigger19  = command = "AI19"
trigger20  = command = "AI20"
trigger21  = command = "AI21"
trigger22  = command = "AI22"
trigger23  = command = "AI23"
trigger24  = command = "AI24"
trigger25  = command = "AI25"
trigger26  = command = "AI26"
trigger27  = command = "AI27"
trigger28  = command = "AI28"
trigger29  = command = "AI29"
trigger30  = command = "AI30"
var(59) = 1

[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0  ; it is on and
Trigger1=RoundState!=2  ; the round is not started yet or is already over
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
type = ChangeState
value = 0
triggerall = (AILevel>0)
triggerall = Win = 1
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = (AILevel>0)
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 

[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = (AILevel>0)
triggerall = stateno != 105 && backedgedist > 50 && p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70 && statetype = S && ctrl && random < 80
trigger2 = p2statetype = L && statetype = S && ctrl && random < 80 && (p2bodydist x = [0,40])

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = (AILevel>0)
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = (AILevel>0)
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
triggerall = (AILevel>0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 800)
value = 130

[State -1]
type = ChangeState
triggerall = (AILevel>0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = (AILevel>0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 800)
value = 132

[State AI]
type = ChangeState
value = 5201
triggerall = (AILevel>0) && Alive && Vel Y > 0 && Pos Y >= 0 && random <= 999
;triggerall = var(48)= 0
trigger1 = StateNo = 5050
trigger2 = StateNo = 5071

[State -1, Guard Push]
type = ChangeState
value = 6320
triggerall = (AILevel>0)  
trigger1 = random < 400
trigger1 = statetype = A 
trigger1 = stateno = [150,155] ;The guard state numbers

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 6300
triggerall = (AILevel>0)  
trigger1 = random < 400
trigger1 = statetype = S
trigger1 = stateno = [150,155] 

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 6310
triggerall = (AILevel>0)  
trigger1 = random < 400
trigger1 = statetype = C
trigger1 = stateno = [150,155] 



[State -1, Projectile]
type = ChangeState
triggerall = AILevel>0 && p2life!= 0 && Random < 550 && Life != 0 && stateno != [800,899] 
triggerall = StateType = S
triggerall = ctrl && p2life!= 0 
triggerall = p2movetype = A
triggerall = p2statetype != L
triggerall = Stateno!= 40 && Prevstateno!= 40
trigger1 = P2BodyDist X = [100,250]
trigger1 = enemy, Numproj <= 0&&enemy,stateno<2999
trigger2 = P2BodyDist X = [100,250]
trigger2 = enemy, Numhelper <= 0&&enemy,stateno<2999
trigger3 = Stateno = 140
trigger3 = ctrl && enemynear,movetype=A && (p2bodydist x=[20,200])
trigger3 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100)
trigger4 = (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AT) && (p2bodydist x=[-20,200])
trigger4 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100) 
trigger4 = Stateno = 140
trigger4 = (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger4 = random<ifelse((enemy,hitdefattr=SC,AT),500,100)
value = 40

; Stand light Punch
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = (AILevel>0) && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = (AILevel>0) && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (AILevel>0) && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact


;-------------------------------------------------------------------------------
; Stand light kick
[State -1, Combo 2]
type = ChangeState
value = 230
triggerall = (AILevel>0) && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = (AILevel>0) && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Hard kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (AILevel>0) && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel>0
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl && random < 500 

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel>0
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400 || stateno = 430
trigger1 = movehit && random < 200

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (AILevel>0) && statetype != A && RoundState = 2
triggerall = (stateno != [3000,4000])
; (chain combos)
trigger1 = (stateno = 410) && movecontact

[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = (AILevel>0) && ctrl
triggerall = (stateno != [3000,4000])
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (AILevel>0)
triggerall = (stateno != [3000,4000])
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = ctrl && frontedgedist > 180
trigger2 = p2bodydist x > 120 && random < 100
trigger2 = p2bodydist y = 0 && p2movetype = A
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (AILevel>0) && p2statetype != A ;&& P2statetype = S
triggerall = stateno != 430
trigger1 = p2bodydist x <= 40
trigger1 = statetype != A 
trigger1 = ctrl && random < 800

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel>0
triggerall = stateno != 440
trigger1 = stateno = 430 || stateno = 400 || stateno = 220
trigger1 = movehit
trigger1 = random < 100
trigger2 = stateno = 200
trigger2 = movehit && random <=100 && p2statetype != A
trigger3 = stateno = 230 || stateno = 200
trigger3 = movehit
trigger3 = random < 300
trigger3 = p2bodydist y = [-2,2]

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel>0
triggerall = p2bodydist x = [-2,44]
triggerall = P2MoveType != A
trigger1 = stateno = 440 || stateno = 430
trigger1 = movehit
trigger1 = random < ifelse(power > 1000,300,100)
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = random < 200
;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 650 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (AILevel>0) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = (AILevel>0) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = (AILevel>0) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


[State -1]
; 6 disparos de pistola (50% de chance)
type = ChangeState
triggerall = (AILevel>0) && ctrl && prevstateno != 1000
triggerall = (stateno != [3000,4000])
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 &&  Random < 50
value = 1000

;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 1001
triggerall = (AILevel>0) && p2life!= 0 && Random >= 450
triggerall = (stateno != [3000,4000])
triggerall = statetype != C
triggerall = ctrl
triggerall = P2BodyDist X = [100,175]
trigger1 = p2movetype = A
trigger1 = random >= 50
trigger2 = enemy, Numproj > 0
trigger3 = enemy, Numhelper > 0
trigger4 = Facing = -1
trigger4 = (enemy(0), Facing = -1)
trigger4 = BackEdgeBodyDist < (enemy(0), BackEdgeBodyDist)
trigger5 = Facing = 1
trigger5 = (enemy(0), Facing = 1)
trigger5 = BackEdgeBodyDist < (enemy(0), BackEdgeBodyDist)

[State -1, SpinBall 1]
type = ChangeState
value = 1012
triggerall = (AILevel>0) && StateType != A
triggerall = (stateno != [3000,4000])
triggerall = roundstate = 2
trigger3 = (p2bodydist y < -1)&&  (random = [85,120])
triggerall = p2bodydist x<=45
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = !(EnemyNear,IsHelper)
triggerall = movetype != H
triggerall = var(7) < 8
trigger1= ctrl &&  (random = [84,120])
trigger2 = (stateno=[200,450])&&movehit  &&  (random = [85,120])
triggerall = p2stateno !=[120,150]

;AI Gamma Pound
[State -1]
type = ChangeState
value = ifelse(random<500,890,1890)
triggerall = AILevel>0 && random > life && time % 4 
triggerall = Life != 0 && stateno < 600
triggerall = p2bodydist X = [21,125]
triggerall = roundstate = 2 && ctrl = 1
triggerall = StateType != A && MoveType != H
triggerall = P2MoveType != H
triggerall = P2StateNo != 40
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != [5000,5999]
triggerall = movetype != H 
triggerall = random > 500
trigger1 = enemy, numproj = 0
trigger2 = p2movetype != A

[State -1, AI rock]
type = ChangeState
value = 1003
Triggerall = numhelper(1092) < 1
triggerall = (stateno != [3000,4000])
triggerall = (roundstate = 2) && (AILevel>0)
;triggerall = p2bodydist X = [20,270]
triggerall = p2bodydist Y = [-5,5]
trigger1 = statetype != A && ctrl && random < 100

[State -1,Grab]
type = ChangeState
value = ifelse((random <= 500),850,ifelse ((random<=500),1890,890))
triggerall = (AILevel>0)
trigger1 = var(4) <= 0 && random <= 400 && stateno != [100,107]
trigger1 = p2stateno != 131 && p2stateno != 130 && P2bodydist X <= 20 && p2stateno != 1302 && statetype != A && p2statetype != A && p2statetype != L && p2stateno != 5120
trigger1 = p2movetype != H && p2movetype != A && ctrl

[State -1, AIR THROW]
type = ChangeState
value = 750
triggerall = (AILevel>0) && random <= 500
trigger1 = statetype = A && ctrl && p2bodydist Y > -25 
trigger1 = p2bodydist Y < 25 && p2statetype = A && pos Y < -25 && p2movetype != H
trigger1 = ifelse(p2name = "Juggernaut" , p2bodydist x < 25, p2bodydist X < 10) 

[State -1, PhaseDash]
type = ChangeState
triggerall = (roundstate = 2) && (AILevel>0)
triggerall = stateno !=[3000,8502]
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,60])
value = 3200

; Hyper Blast
[State -1, MainManAir]
type = ChangeState
value = 3400
triggerall = (power = [1000,1500]) && (AILevel>0) && ctrl 
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random <= 55
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 55

; Hyper Blast
[State -1, MainManAir]
type = ChangeState
value = 3000
triggerall = (power = [1501,2700]) && (AILevel>0) && ctrl 
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random <= 100
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 100

[State -1,shinku pied]
type = ChangeState
value = 3500
triggerall = enemynear,life > 300
triggerall = var(59) = 1 && (stateno != [3000,4000])
triggerall = (power = [2000,2700])
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall =  (var(8) = [-20,20])
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact

; Hyper Explosion
[State -1, MegaFrag]
type = ChangeState
value = 3600
triggerall = (AILevel >0) && StateType != A && power >= 2701
triggerall = roundstate = 2
triggerall = stateno !=[800,899]
triggerall = stateno !=[3100,3801]
trigger1 = ctrl
triggerall = p2bodydist x<=13&&random<800 && enemy, movetype != A
triggerall = p2statetype != L
trigger2 = movehit

;======;HUMAN COMMANDS;=======================================================================================================
[State -1, Hyper1]
type = ChangeState
value = 3600
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "Amalgam"
trigger1 = (ctrl = 1)

; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 750
triggerall = command = "z" || command = "y"
triggerall = p2BodyDist X < 10 && p2BodyDist Y = [-80,30]
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = var(20) != 20
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 7
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

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

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "qcf_2p"
trigger1 = (ctrl = 1)
trigger2 = stateno=1102



[State -1, Gamma Crush]
type = ChangeState
value = 3400
triggerall = !var(59)
triggerall = command = "Gamma Crush"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SC,NA,NP,SA,SP) && movecontact
trigger3 = stateno = 21275
trigger4 = stateno = [1240,1260]

[State -1, Gamma Crush]
type = ChangeState
value = 3500
triggerall = !var(59)
triggerall = command = "qcf_2k"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SC,NA,NP,SA,SP) && movecontact
trigger3 = stateno = 21275
trigger4 = stateno = [1240,1260]

;Hyper Tornado - ABC
[State -1, Hyper Hurricane - ABC]
type = ChangeState
value = 3200
triggerall = !Win;KO
triggerall = !(Pos Y)
triggerall = command = "qcb_2k"
triggerall = power >= 1000
trigger1 = statetype = S && statetype !=A
trigger1 = ctrl

; Gamma Pound
[State -1, Throw]
type = ChangeState
value = 890
triggerall = command = "pound"
triggerall = StateType != A
triggerall = var(20) != 20
trigger1 = Ctrl = 1

; Gamma Pound
[State -1, Throw]
type = ChangeState
value = 1890
triggerall = command = "qcb_b"
triggerall = StateType != A
triggerall = var(20) != 20
trigger1 = Ctrl = 1

[State -1, Gunshot weak standing]
type = ChangeState
value = 1000
triggerall = Command = "GunshotStand_x" || Command = "GunshotStand2_x"
triggerall = stateno != [2000,2006]
triggerall = stateno != [2030,4012]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Gamma Charge H Near]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = command = "qcf_y"
triggerall = statetype != C
trigger1 = ctrl
trigger2 = (hitdefattr = SC,NA,NP) && movecontact

[State -1]
type = ChangeState
value = 1012
triggerall = command = "qcb_y"
triggerall = statetype != A
triggerall = var(20) != 20
trigger1 = ctrl = 1
trigger2 = MoveContact && StateNo = 400
trigger3 = MoveContact && StateNo = 410
trigger4 = MoveContact && StateNo = 420
trigger5 = MoveContact && StateNo = 430
trigger6 = MoveContact && StateNo = 440
trigger7 = MoveContact && StateNo = 450

[State -1, Earth Quake Punch]
type = ChangeState
value = 1003
triggerall = !var(59)
triggerall = command = "qcf_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(58)
triggerall = (statetype = S) && (command = "BB") && (ctrl = 1) && Var(3) = 0
trigger1 = command = "BB"
trigger2 = (command = "3P") && (command = "holdback")

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(58)
triggerall = (statetype = S) && (ctrl = 1) && Var(3) = 0
trigger1 = command = "FF"


;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = !var(58)
triggerall = (statetype != A) && Var(3) = 0
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (StateNo = 420) && MoveHit && (command = "holdup")


;---------------------------------------------------------------------------
; Standing basics
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(58)
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(58)
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 230)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !var(58)
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(58)
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 200) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !var(58)
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 230)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = !var(58)
triggerall = command = "c"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !var(58)
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !var(58)
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 400) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(58)
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 430)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !var(58)
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410) || (stateno = 430)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = !var(58)
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = !var(58)
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = !var(58)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = !var(58)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 600) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(58)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = !var(58)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = !var(58)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;---------------------------------------------------------------------------
;Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = !var(58)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

