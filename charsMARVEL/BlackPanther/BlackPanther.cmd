;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
;===========================================================================

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;Hyper 1 = Spear Combo

[Command]
name =  "Spear Combo"
command = ~D, DF, F, x+y
time = 17

[Command]
name =  "Spear Combo"
command = ~D, DF, F, y+z
time = 17

[Command]
name =  "Spear Combo"
command = ~D, DF, F, x+z
time = 17

;---------------------------------------------------------------------------

;Hyper 2 = Dash Slash

[Command]
name =  "DashSlash"
command = ~D, DB, B, x+y
time = 17

[Command]
name =  "DashSlash"
command = ~D, DB, B, y+z
time = 17

[Command]
name =  "DashSlash"
command = ~D, DB, B, x+z
time = 17

;---------------------------------------------------------------------------
;Hyper 3 = Panther Jackknife

[Command]
name = "Jackknife"
command = ~D, DF, F, a+b
time = 17

[Command]
name = "Jackknife"
command = ~D, DF, F, a+c
time = 17

[Command]
name = "Jackknife"
command = ~D, DF, F, b+c
time = 17

;---------------------------------------------------------------------------
;Hyper 4 = Vibranium Overload

[Command]
name = "VibraniumOverload"
command = ~D, DB, B, a+b
time = 17

[Command]
name = "VibraniumOverload"
command = ~D, DB, B, b+c
time = 17

[Command]
name = "VibraniumOverload"
command = ~D, DB, B, a+c
time = 17


;---------------------------------------------------------------------------
;Specials
;-------------------------------------------------------------------------
;Vibranium Daggers Upward

[Command]
name = "DaggersUX"
command = ~B, D, B, x

[Command]
name = "DaggersUY"
command = ~B, D, B, y

[Command]
name = "DaggersUZ"
command = ~B, D, B, z

;-------------------------------------------------------------------------
;Vibranium Daggers

[Command]
name = "DaggersX"
command = ~D, DF, F, x

[Command]
name = "DaggersY"
command = ~D, DF, F, y

[Command]
name = "DaggersZ"
command = ~D, DF, F, z

;-------------------------------------------------------------------------
;Panther Slash

[Command]
name = "SlashX"
command = ~D,DB,B, x

[Command]
name = "SlashY"
command = ~D,DB,B, y

[Command]
name = "SlashZ"
command = ~D,DB,B, z

;-------------------------------------------------------------------------
;Vibranium Spear

[Command]
name = "Spear"
command = ~F,D,DF,x

[Command]
name = "Spear"
command = ~F,D,DF,y

[Command]
name = "Spear"
command = ~F,D,DF,z

;---------------------------------------------------------------------------
;Air Lunge

[Command]
name = "Lunge"
command = ~D, DF, F, a

[Command]
name = "Lunge"
command = ~D, DF, F, b

[Command]
name = "Lunge"
command = ~D, DF, F, c

;---------------------------------------------------------------------------
;Vibranium Stand Off

[Command]
name = "Vibranium SO"
command = ~D, DB, B, a

[Command]
name = "Vibranium SO"
command = ~D, DB, B, b

[Command]
name = "Vibranium SO"
command = ~D, DB, B, c

;---------------------------------------------------------------------------
;Lunge
[Command]
name = "LungeA"
command = ~D, DF, F, a

[Command]
name = "LungeB"
command = ~D, DF, F, b

[Command]
name = "LungeC"
command = ~D, DF, F, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
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

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
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

;---------------------------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------

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

;---------------------------------------------------------------------------------------------
;Hold dir
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

[Command]
name = "SJ"
command = $D, $U

;===============================================================================
;A.I.
;===============================================================================

;-------------------------------------------------------------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
;===========================================================================

[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

[State -1, AI Deactivate] 
type = VarSet
triggerall = var(59)= 1
trigger1 = win = 1
trigger2 = loseko = 1
trigger3 = life <= 0
v = 59
value = 0

;--------------------------------------
;Combo AI
;--------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 220) && movecontact
value = 250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 240) && movecontact
value = 220

;Start Standing Chain Combo
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 200
;End Standing Chain

;Start Crouching Chain
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel < 3
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 440) && movecontact
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = AILevel < 3
trigger2 = (stateno = 430) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1];Alternate start for Easy AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
trigger2 = AILevel < 3
value = 430

[State -1];Combo start for Med/Hard AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 400
;End Crouching Chain


[State -1] ; Always superjump on launch
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7500

;Start Air Chain
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1];Start air chain after medium charge attack
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall = prevstateno != 600
trigger1 =  stateno = 1011 ;leap over after charge move
value = 600

[State -1];Followup jump attack with crouch hard kick
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 450


;--|-AI|-----------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

;--|-AI Defense-|-----------------------------------------------------------
[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 132

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S) && (p2statetype != C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 130

[State -1, AI Guard Push];AI Guard Push (Standing)
type = ChangeState
value = 6300
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SC,NA,NT,NP,SA,ST,SP
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)

[State -1, AI Guard Push];AI Guard Push (Crouching)
type = null;ChangeState
value = 6310
triggerall = Var(59)
triggerall = AILevel >= 5
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

[State -1, AI Guard Push];AI Guard Push (Air)
type = null;ChangeState
value = 6320
triggerall = Var(59)
triggerall = AILevel >= 6
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

[State -1];AI Recovery Roll Forward after KnockDown
type = ChangeState
value = 832
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x <= 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1

[State -1];AI Recovery Roll Backwards after KnockDown
type = ChangeState
value = 855
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x > 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1

;===========================================================================
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59)=1 && RoundState = 2 && ctrl && stateno != 100 && prevstateno != 100
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 

[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(59)=1
triggerall = stateno != 105 && backedgedist > 50 && p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70 && statetype = S && ctrl && random < 80
trigger2 = p2statetype = L && statetype = S && ctrl && random < 80 && (p2bodydist x = [0,40])

[State -1, Projectile]
type = ChangeState
triggerall = var(59)=1 && p2life!= 0 && Random < 550 && Life != 0 && stateno != [800,899] 
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

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = p2statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl
trigger1 = random < 500

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59)=1 && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = statetype = S
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl && p2statetype = S && random < 300
Triggerall = stateno !=450
Triggerall = stateno !=450
Triggerall = stateno !=230
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;[State -1, AirThrow1]
;type = ChangeState
;value = 800
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = A && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59)=1 && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl && random < 500 

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
;[State -1, Crouch Light Kick]
;type = ChangeState
;value = 430
;triggerall = (var(59)=1) && p2statetype != A ;&& P2statetype = S
;triggerall = stateno != [3000,4000]
;triggerall = stateno != 430
;trigger1 = p2bodydist x <= 40
;trigger1 = statetype != A 
;trigger1 = ctrl && random < 400

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;---------------------------------------------------------------------------

;-|-Tentativa de Super da IA-|----------------------------------------------
[State -1, Easy AI] ;Easy AI Offset
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel = 1
trigger1 = stateno >= 1000
trigger1 = stateno < 3000
trigger2 = (AILevel = 2) || (AILevel = 3)
trigger2 = stateno = [1010, 1219]
trigger3 = AILevel <= 5
trigger3 = stateno = 200 || stateno = 400
trigger3 = (random > (AILevel * 200))
value = 0
ctrl = 1

[State -1, Easy AI] ;Easy AI Offset
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel = 2
trigger1 = stateno = [1010, 1219]
value = 0
ctrl = 1

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 180  && (random = [0,110])  && enemynear,statetype =A
trigger2 = P2BodyDist X > 180  && (random = [0,110])  && enemynear,statetype !=A
value = 1000

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 180  && (random = [0,110])  && enemynear,statetype =A
trigger2 = P2BodyDist X > 180  && (random = [0,110])  && enemynear,statetype !=A
value = 1010

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 180  && (random = [0,110])  && enemynear,statetype =A
trigger2 = P2BodyDist X > 180  && (random = [0,110])  && enemynear,statetype !=A
value = 1020

[State -1] ;Projectile
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = stateno != 1375
trigger1 = ctrl
trigger1 = random <= 110 
trigger1= (P2BodyDist Y = [-170, -60]) 
value = 1035

[State -1] ;Projectile
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = stateno != 1375
trigger1 = ctrl
trigger1 = random <= 110 
trigger1= (P2BodyDist Y = [-170, -60]) 
value = 1040

[State -1] ;Projectile
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = stateno != 1375
trigger1 = ctrl
trigger1 = random <= 110 
trigger1= (P2BodyDist Y = [-170, -60]) 
value = 1045

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall= roundstate=2 && statetype=A 
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
triggerall = stateno!= [1050,1070]
trigger1= ctrl && vel y>-2 && random<200
value = 1050

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall= roundstate=2 && statetype=A 
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
triggerall = stateno!= [1050,1070]
trigger1= ctrl && vel y>-2 && random<200
value = 1060

[State -1] ;Projectile
type = ChangeState
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall= roundstate=2 && statetype=A 
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
triggerall = stateno!= [1050,1070]
trigger1= ctrl && vel y>-2 && random<200
value = 1070

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1100) = 0) && (numhelper (1110) = 0)&& (numhelper (1120) = 0)
triggerall = (random <= AILevel*10)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1100

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1100) = 0) && (numhelper (1110) = 0)&& (numhelper (1120) = 0)
triggerall = (random <= AILevel*10)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1110

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1100) = 0) && (numhelper (1110) = 0)&& (numhelper (1120) = 0)
triggerall = (random <= AILevel*10)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1120

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(AILevel + 500)) && (random <(AILevel*8) + 500)
triggerall = stateno < 1500
trigger1 = (p2bodydist x >= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1300

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = p2stateno != 7600
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (random >=(AILevel + 180)) && (random <(AILevel*100) + 99)
trigger1 = (p2bodydist x >= 75) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1310

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (random = [450,500])
trigger1 = (p2bodydist x >= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1320

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(59) = 1 && StateType != A
triggerall = AILevel >= 3
triggerall = random <= AILevel*20
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = power >= 300
value = 1330

[State -1] ;Wall Jump
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)
value = 1401

[State -1,] ;Spear
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)
value = 1500

[State -1,] ; Vibranium
type = ChangeState
value = 1200
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)


;-|-Tentativa de Hyper da IA-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact
value = 3000

[State -1]
type = ChangeState
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact
value = 3100

[State -1];Feral Charge
type = ChangeState
value = 3200
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact

[State -1];Vibranium Overload
type = ChangeState
value = 3300
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact

;----------------------------

[State -1, WallCling]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 1400 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(59) = 0
triggerall = StateType != A
trigger1 = Command = "SJ" &&  ctrl
trigger2 = command = "holdup" && stateno = 420 && movehit
trigger3 = command = "holdup" && prevstateno = 1052

;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype != A
triggerall = statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SC,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]


[State -1, Guard Push crouch]
type = null;ChangeState
value = 6310
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = null;ChangeState
value = 6320
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = anim = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = anim = 5120
trigger1 = alive = 1

;------------------------------

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

[State -1, Dash Forward]
type = ChangeState
value = 101
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 101)
trigger1 = var(59) = 0
trigger1 = Command = "FF"
trigger2 = var(59) != 0
trigger2 = AILevel >=6
trigger2 = random = [400,450]

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 105)
trigger2 = var(59) = 0
trigger1 = Command = "BB"
trigger2 = var(59) != 0
trigger2 = AILevel <= 3

;---------------------------------------------------------------------------
;Ground Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
triggerall = (p2bodydist X < 15) && (p2movetype != H)
triggerall = (p2statetype = S) || (p2statetype = C)
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;-----------------------------

[State -1, Vibranium Overload]
type = ChangeState
value = 3300
triggerall = command = "VibraniumOverload"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)

;-----------------------------

[State -1, Hyper Lunge]
type = ChangeState
value = 3200
triggerall = command = "Jackknife"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)

;-----------------------------

[State -1, Dash Slash]
type = ChangeState
value = 3100
triggerall = command = "DashSlash"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 245 && MoveContact
;trigger9 = stateno = 765

;-----------------------------

[State -1, Hyper 1]
type = ChangeState
value = 3000
triggerall = command = "Spear Combo"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)

;---------------------------------------------------------------------------

[State -1, Spear]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command = "Spear"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------

;Daggers
[State -1, Daggers x]
type = ChangeState
value = 1000
triggerall = !Var(59)
triggerall = Numprojid(1000) = 0
triggerall = Command = "DaggersX"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;--------------------------------------------------------------------------

;Daggers
[State -1, Daggers y]
type = ChangeState
value = 1010
triggerall = !Var(59)
triggerall = Numprojid(1000) = 0
triggerall = Command = "DaggersY"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;--------------------------------------------------------------------------

;Daggers
[State -1, Daggers z]
type = ChangeState
value = 1020
triggerall = !Var(59)
triggerall = Command = "DaggersZ"
triggerall = Numprojid(1000) = 0
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;--------------------------------------------------------------------------

;Upward Daggers
[State -1, Daggers UX]
type = ChangeState
value = 1035
triggerall = !Var(59)
triggerall = Numprojid(1000) = 0
triggerall = Command = "DaggersUX"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Upward Daggers
[State -1, Daggers UY]
type = ChangeState
value = 1040
triggerall = !Var(59)
triggerall = Numprojid(1000) = 0
triggerall = Command = "DaggersUY"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Upward Daggers
[State -1, Daggers UZ]
type = ChangeState
value = 1045
triggerall = !Var(59)
triggerall = Numprojid(1000) = 0
triggerall = Command = "DaggersUZ"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


;Air Daggers x
[State -1, Air Daggers]
type = ChangeState
value = 1050
triggerall = Command = "DaggersX"
triggerall = !Var(59)
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;--------------------------------------------------------------------------

;Air Daggers y
[State -1, Air Daggers]
type = ChangeState
value = 1060
triggerall = Command = "DaggersY"
triggerall = !Var(59)
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;--------------------------------------------------------------------------

;Air Daggers z
[State -1, Air Daggers]
type = ChangeState
value = 1070
triggerall = !Var(59)
triggerall = Command = "DaggersZ"
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;--------------------------------------------------------------------------
;Panther Slash
[State -1, Slash]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "SlashX"
triggerall = NumHelper(1100) = 0
triggerall = NumHelper(1110) = 0
triggerall = NumHelper(1120) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;--------------------------------------------------------------------------
;Panther Slash
[State -1, Slash]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "SlashY"
triggerall = NumHelper(1100) = 0
triggerall = NumHelper(1110) = 0
triggerall = NumHelper(1120) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;--------------------------------------------------------------------------
;Panther Slash
[State -1, Slash]
type = ChangeState
value = 1120
triggerall = var(59) = 0            ;
triggerall = command = "SlashZ"
triggerall = NumHelper(1100) = 0
triggerall = NumHelper(1110) = 0
triggerall = NumHelper(1120) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;--------------------------------------------------------------------------

[State -1, Vibranium SO]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = stateno != 1200
triggerall = stateno != 1210
triggerall = stateno != 1211
triggerall = command = "Vibranium SO"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

;--------------------------------------------------------------------------

[State -1, Lunge]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "LungeA"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Lunge]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = command = "LungeB"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Lunge]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = command = "LungeC"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Lunge Air]
type = ChangeState
value = 1330
triggerall = var(59) = 0
triggerall = command = "Lunge"
triggerall = Stateno < 1500
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;-----------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Command = "start"
triggerall = (Ctrl) && (StateNo != 195)
trigger1 = StateType != A
trigger1 = Ctrl

;----------------------------------------------------------------------------
;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;Stand Fierce Punch
;立ち強パンチ
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = [240,241]) && movecontact;||(stateno = 244) && movecontact
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = [200,205]) && movecontact
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;Standing Fierce Kick
;立ち強キック
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = [240,241]) && movecontact;||(stateno = 244) && movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact||(stateno = 230) && movecontact
trigger3 = (stateno = 400) && movecontact||(stateno = 430) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;しゃがみ強パンチ
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,241]) && movecontact;||(stateno = 244) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,205]) && movecontact||(stateno = [400,405]) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
;trigger4 = (stateno = [210,211]) && movecontact||(stateno = 410) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;しゃがみ強キック
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
trigger4 = (stateno = [210,211]) && movecontact||(stateno = 410) && movecontact
trigger5 = (stateno = 240) && movecontact||(stateno = 440) && movecontact
;trigger6 = (stateno = 220) && movecontact||(stateno = 420) && movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 13
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact||(stateno = 640) && movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
;trigger4 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Kick
;空中強キック
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630||stateno=610||stateno=640 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;-----------------------------

;---------------------------------------------------------------------------
;Launch Magic AX
;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "holddown" && command = "z") && (statetype = S) && !var(7)
trigger1 = ctrl = 1
trigger2 = (StateNo = 240) && (movecontact >= 1)
trigger3 = (StateNo = 210) && (movecontact >= 1)

