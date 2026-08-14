
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
command.buffer.time = 3

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+y
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y+z
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~a+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~c+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, c+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~c+a
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, c+a
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b+c
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~a+b+c
time = 20

;---------

[Command]
name = "DHyper2"
command = ~D, F, DF, a+b
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, ~a+b
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, ~c+b
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, c+b
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, ~c+a
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, c+a
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, a+b+c
time = 20

[Command]
name = "DHyper2"
command = ~D, F, DF, ~a+b+c
time = 20

;---------


[Command]
name = "Hyper3"
command = ~F, D ,DF, a+b
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+b
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, a+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, a+b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+b+c
time= 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "ShoryukenX"
command = ~F, D, DF, x

[Command]
name = "ShoryukenX"
command = ~F, D, DF, ~x

[Command]
name = "ShoryukenY"
command = ~F, D, DF, y

[Command]
name = "ShoryukenY"
command = ~F, D, DF, ~y

[Command]
name = "ShoryukenZ"
command = ~F, D, DF, z

[Command]
name = "ShoryukenZ"
command = ~F, D, DF, ~z

[Command]
name = "Eye_Beam"
command = ~D, DB, B, ~a

[Command]
name = "Eye_Beam"
command = ~D, DB, B, a

[Command]
name = "Eye_Beam"
command = ~D, DB, B, ~b

[Command]
name = "Eye_Beam"
command = ~D, DB, B, b

[Command]
name = "Eye_Beam"
command = ~D, DB, B, ~c

[Command]
name = "Eye_Beam"
command = ~D, DB, B, c

[Command]
name = "Break_StromX"
command = ~D, DF, F, x

[Command]
name = "Break_StromX"
command = ~D, DF, F, ~x

[Command]
name = "Break_StromY"
command = ~D, DF, F, y

[Command]
name = "Break_StromY"
command = ~D, DF, F, ~y

[Command]
name = "Break_StromZ"
command = ~D, DF, F, z

[Command]
name = "Break_StromZ"
command = ~D, DF, F, ~z

[Command]
name = "Shoulder_Ram_X"
command = ~D, DB, B, x

[Command]
name = "Shoulder_Ram_X"
command = ~D, DB, B, ~x

[Command]
name = "Shoulder_Ram_Y"
command = ~D, DB, B, y

[Command]
name = "Shoulder_Ram_Y"
command = ~D, DB, B, ~y

[Command]
name = "Shoulder_Ram_Z"
command = ~D, DB, B, z

[Command]
name = "Shoulder_Ram_Z"
command = ~D, DB, B, ~z

[Command]
name = "slashA"
command = ~D, DF, F, a

[Command]
name = "slashA"
command = ~D, DF, F, ~a

[Command]
name = "slashB"
command = ~D, DF, F, b

[Command]
name = "slashB"
command = ~D, DF, F, ~b

[Command]
name = "slashC"
command = ~D, DF, F, c

[Command]
name = "slashC"
command = ~D, DF, F, ~c

[Command]
name = "Command_Grab"
command = ~F, D, DF, a

[Command]
name = "Command_Grab"
command = ~F, D, DF, ~a

[Command]
name = "Command_Grab"
command = ~F, D, DF, b

[Command]
name = "Command_Grab"
command = ~F, D, DF, ~b

[Command]
name = "Command_Grab"
command = ~F, D, DF, c

[Command]
name = "Command_Grab"
command = ~F, D, DF, ~c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Tag Motions |----------------------------------------------------------
[Command]
name = "SnapBack"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "Tag Counter"
command = a+b+c
time = 20

[Command]
name = "Dual Hyper"
command = ~D,DF,F,x+a
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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

;-| super jump |-----------------------------------------------------------
[Command]
name = "du"
command =  $D, $U
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

;-|Dir |--------------------------------------------------------------
[Command]
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
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

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
time = 1

;-| Single Counter Motions |-------------------------------------------

[Command]
name = "Counter"
command = /F, x+a
time = 8

[Command]
name = "Counter"
command = /F, y+b
time = 8

[Command]
name = "Counter"
command = /F, z+c
time = 8


;---------------------------------------------------------------------------------------------
[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef -1]
;===========================================================================
;Artificial Intelligence
;===========================================================================

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;You're boring him.....===========================================================================
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5110 || p2stateno = 5020 || p2stateno = 5030

[State -1, Super Jump]
type = ChangeState
value = 2600
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 2
trigger1 = stateno = 420 

[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1,AI Air Dash]
type = ChangeState
value = 100000
triggerall = var(59) != 0
triggerall = statetype != S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 100
trigger1 = p2bodydist X < 3


[State -1: Alpha Counter]
type = ChangeState
value = 910
triggerall = var(59) != 0
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = (stateno = [150,155]) && random = [401,700]
trigger1 = (p2bodydist x=[0,30]) && !(enemy,ctrl) && (p2bodydist y=[-20,5])

;Recover===========================================================================
[State -1]
type = ChangeState
value = 5210
triggerall = var(59) != 0
triggerall = canrecover = 1 && roundstate =2
triggerall = random = [401,700]
triggerall = alive
triggerall = time > 20
trigger1 = stateno = 5050

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) && prevstateno !=3010
triggerall = Pos Y >= -5
triggerall = time > 10
trigger1 = random = [401,700]
value = 895

;===========================================================================
; AI Guard
;===========================================================================

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;---------------------------------------------------------------------------
;AI Guard (Standing)
[State -1, AI Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Crouching)
[State -1, AI Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Air)
[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A

;---------------------------------------------------------------------------
;AI Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 570
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 154
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = A
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 550
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = S
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 560
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 152
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = C
ignorehitpause = 1

;Stand Still--If you win, STOP MOVING!!!
[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;==============================|-AI Combos-|============================================

;==============================Ground Combo=============================================

;COMBO 1

;AI Standing Light Punch
[State -1,1]
type = ChangeState
value = 200
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,28]
trigger1 = random = [401,700]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,28]
trigger2 = random = [401,700]

;AI launcher
[State -1,3]
type = ChangeState
value = 420
triggerall = var(59) != 0 
triggerall = statetype != A && roundstate =2
triggerall = random = [401,700]
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Standing Medium Punch
[State -1,2]
type = ChangeState
value = 210
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 230 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Standing Strong Punch 2
[State -1,2]
type = ChangeState
value = 220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 230 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430
trigger4 = movecontact 

;COMBO 2

;AI Standing Light Kick
[State -1,1]
type = ChangeState
value = 230
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,28]
trigger1 = random = [401,700]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,28]
trigger2 = random = [401,700]

;AI Standing Medium Kick
[State -1,2]
type = ChangeState
value = 240
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 230 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Standing Strong Kick 
[State -1,2]
type = ChangeState
value = 220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 230 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;COMBO 3

;AI Crouching Light Punch
[State -1,1]
type = ChangeState
value = 400
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,28]
trigger1 = random = [401,700]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,28]
trigger2 = random = [401,700]

;AI launcher
[State -1,3]
type = ChangeState
value = 420
triggerall = var(59) != 0 
triggerall = statetype != A && roundstate =2
triggerall = random = [401,700]
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Crouching Medium Punch
[State -1,2]
type = ChangeState
value = 410
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;COMBO 4

;AI Crouching Light Kick
[State -1,1]
type = ChangeState
value = 430
triggerall = var(59) != 0 && roundstate =2 
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,28]
trigger1 = random = [401,700]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,28]
trigger2 = random = [401,700]

;AI launcher
[State -1,3]
type = ChangeState
value = 420
triggerall = var(59) != 0 
triggerall = statetype != A && roundstate =2
triggerall =  random = [401,700]
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Crouching Medium Kick
[State -1,2]
type = ChangeState
value = 440
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A && enemynear, statetype = L
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Crouch Strong Kick
[State -1,2]
type = ChangeState
value = 450
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 

;===========================================================================

;AI earth explosion A
[State -1,3]
type = ChangeState
value = 1000
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 450 
trigger1 = movecontact 
trigger2 = stateno = 410  
trigger2 = movecontact 
trigger3 = stateno = 440  
trigger3 = movecontact 

;AI earth explosion B
[State -1,3]
type = ChangeState
value = 1010
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact 
trigger2 = stateno = 220 
trigger2 = movecontact 
trigger3 = stateno = 240  
trigger3 = movecontact 
trigger4 = stateno = 250  
trigger4 = movecontact 
trigger5 = stateno = 410 
trigger5 = movecontact 
trigger6 = stateno = 440 
trigger6 = movecontact 

;AI earth explosion C
[State -1,3]
type = ChangeState
value = 1020
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = p2bodydist x = [200,300]
trigger1 = random < 100
trigger1 = ctrl = 1
trigger1 = enemynear, statetype != L && P2statetype != C

;AI Shoryuken X
[State -1,3]
type = ChangeState
value = 1100
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 400 
trigger2 = movecontact 

;AI Shoulder Ram
[State -1,3]
type = ChangeState
value = 1300
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact 
trigger2 = stateno = 220 
trigger2 = movecontact 
trigger3 = stateno = 240  
trigger3 = movecontact 
trigger4 = stateno = 250  
trigger4 = movecontact 
trigger5 = stateno = 410  
trigger5 = movecontact 
trigger6 = stateno = 440  
trigger6 = movecontact 

;AI Air Shoulder Ram
[State -1,3]
type = ChangeState
value = 1340
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != S
trigger1 = stateno = 640 
trigger1 = movecontact 

;AI SLASH C
[State -1,3]
type = ChangeState
value = 1620
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact 
trigger2 = stateno = 220 
trigger2 = movecontact 
trigger3 = stateno = 240  
trigger3 = movecontact 
trigger4 = stateno = 250  
trigger4 = movecontact 
trigger5 = stateno = 410  
trigger5 = movecontact 
trigger6 = stateno = 440  
trigger6 = movecontact 

;AI Command Grab
[State -1,3]
type = ChangeState
value = 1700
triggerall = (roundstate = 2) && (var(59) != 0) && random = [401,700]
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A 
trigger1 = (p2bodydist X <= 10)&&(EnemyNear, Pos Y > -100) 
trigger1 = (prevstateno != 5120) 

;AI Shoryuken Y
[State -1,3]
type = ChangeState
value = 1110
triggerall = (roundstate = 2) && (var(59) != 0) && random = [401,700]
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A 
trigger1 = (p2bodydist X <= 20)&&(EnemyNear, Pos Y > -100) 
trigger1 = (prevstateno != 5120) 

;AI Eye Beam
[State -1,3]
type = ChangeState
value = 1500
triggerall = (roundstate = 2) && (var(59) != 0) && random = [401,700]
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A && enemynear, statetype != L
trigger1 = (p2bodydist X <= 50)&&(EnemyNear, Pos Y > -1000) 
trigger1 = (prevstateno != 5050) 

;=======================================================================================
;================================AI AIR COMBO=============================================

[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 65 && p2bodydist y = [-70,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2


;=======================================================================================

;======================================AI Attempt Hyper=================================

;AI Bomber Dx
[State -1]
type = ChangeState
value = 3000
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
triggerall = stateno < 3000 
trigger1 = stateno = 1300 
trigger1 = movehit = 1
trigger2 = anim = 1612 
trigger2 = animtime = -30

;AI Bomber Dx Air
[State -1]
type = ChangeState
value = 3100
triggerall = statetype = A && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
triggerall = stateno < 3100 
trigger1 = stateno = 640
trigger1 = movehit = 1

;AI Break Cannon
[State -1]
type = ChangeState
value = 3200
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
triggerall = stateno < 3200 
triggerall = (abs(var(58)) != 3000) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist y = [-20,0]
trigger1 = p2movetype = I
trigger1 = p2stateno != [120,159]
trigger1 = (enemy, ctrl = 0) || (time = 0 && random < 100)
trigger1 = ctrl
trigger2 = p2bodydist x > 200
trigger2 = p2bodydist y = [-20,0]
trigger2 = p2movetype = A
trigger2 = ctrl

;AI Break Cannon Diagonal
[State -1]
type = ChangeState
value = 3300
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
triggerall = stateno < 3300 
trigger1 = anim = 1000
trigger1 = animtime = -45
trigger2 = anim = 1612 
trigger2 = animtime = -26

;===========================================AI End======================================
;=======================================================================================

; ================= (Marvel vs Capcom 2 Tag commands) =========================
; Original code by R.o.q.u.e., modified by AeroGP
; Adapted by FerchogtX
[State -1, Tag Counter]
type = ChangeState
value = 4800
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "Tag Counter"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = power >= 1000
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = stateno = [150, 152]
ignorehitpause = 1

[State -1, Dual Hyper Attack]
type = ChangeState
value = 4600
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "Dual Hyper"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = power >= 2000
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact

[State -1, Partner Assist]
type = ChangeState
value = 4700
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y" && command = "b"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact

[State -1, Partner Change]
type = ChangeState
value = 4510
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c" && command = "z"
triggerall = command = "z" && command = "c"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact

;SnapBack
[State -1, SnapBack]
type = ChangeState
value = 50000
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "SnapBack"
triggerall = var(30) = 1
triggerall = Power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && MoveContact


;===========================================================================

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = statetype != A 
triggerall = NumProjID(3000) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = (200,1320)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]
trigger3 = stateno != [800,899]
trigger3 = stateno = [1600,1633]

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = statetype != S 
trigger1 = statetype = A && ctrl
trigger2 = stateno = (600,1420)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]

[State -1, Hyper4]
type = ChangeState
value = 3300
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "DHyper2"
triggerall = power >= 1000 
triggerall = statetype != A 
trigger1 = statetype = S && ctrl
trigger2 = stateno = (200,1320)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]
trigger3 = stateno = [1600,1633]

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Hyper2"
triggerall = power >= 1000 
triggerall = statetype != A 
trigger1 = statetype = S && ctrl
trigger2 = stateno = (200,1320)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]
trigger3 = stateno = [1600,1632]

;[State -1, Hyper5]
;type = ChangeState
;value = 3400
;triggerall = roundstate = 2 
;triggerall =  var(59) = 0
;triggerall = command = "Hyper3"
;triggerall = power >= 3000 
;triggerall = statetype != A 
;Triggerall = numhelper(900000009)!=1
;trigger1 =  ctrl

;===========================================================================
[State -1, ShoryukenX]
type = ChangeState
value = 1100
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "ShoryukenX"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, ShoryukenY]
type = ChangeState
value = 1110
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "ShoryukenY"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499])
trigger3= stateno = 5110

[State -1, ShoryukenZ]
type = ChangeState
value = 1120
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "ShoryukenZ"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

;==========================================================================

[State -1, Break_StromX]
type = ChangeState
value = 1000
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Break_StromX"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Break_StromY]
type = ChangeState
value = 1010
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Break_StromY"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Break_StromZ]
type = ChangeState
value = 1020
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Break_StromZ"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Command_Grab]
type = ChangeState
value = 1700
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Command_Grab"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])

[State -1, SlashA]
type = ChangeState
value = 1600
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "slashA"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, SlashB]
type = ChangeState
value = 1610
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "slashB"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, SlashC]
type = ChangeState
value = 1620
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "slashC"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110
;===========================================================================

[State -1, eye beam]
type = ChangeState
value = 1500
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Eye_Beam"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])

;===========================================================================

[State -1, Shoulder_Ram_X]
type = ChangeState
value = 1300
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_X"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Shoulder_Ram_y]
type = ChangeState
value = 1310
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_Y"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Shoulder_Ram_z]
type = ChangeState
value = 1320
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_Z"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) 
trigger3= stateno = 5110

[State -1, Air_Shoulder_Ram_X]
type = ChangeState
value = 1330
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_X"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_Shoulder_Ram_y]
type = ChangeState
value = 1340
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_Y"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_Shoulder_Ram_z]
type = ChangeState
value = 1350
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "Shoulder_Ram_Z"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================

[State -1,Air Forward Dash] ;Air Forward Dash
type = ChangeState
value = 100000
triggerall =  var(59) = 0
triggerall = (StateType = A && command = "FF")
trigger1 = StateNo != [100,109]
trigger1 = ctrl

;===========================================================================

; Counter Moves
[State -1, Counter Move]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = (command = "Counter") && (power >= 1000)
trigger1 = stateno = [150,153]

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 260 
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "du" || command = "abc" 
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno =420
trigger2 = time > 10

; Push Block (Stand)
[State -1]
type = ChangeState
value = 550
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 560
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 570
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = stateno = 0 || stateno = 10 || stateno = 20 || stateno = 52 || stateno = [105,106]
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = stateno = 0 || stateno = 10 || stateno = 20 || stateno = 52 || stateno = [100,101]
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"
trigger3 = command = "y" && command = "z"
trigger4 = command = "x" && command = "y" && command = "z"

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 
triggerall = P2Name != "Abyss"|| EnemyNear,AuthorName !="XsLaught"
triggerall = P2Name != "Onslaught"|| EnemyNear,AuthorName !="XsLaught"
triggerall = P2Name != "Apocalypse"|| EnemyNear,AuthorName !="OnslaughtX & Kung Fu Man"
triggerall =  var(59) = 0
triggerall = command = "z" || command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = roundstate = 2 
triggerall =  var(59) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================

;---------------------------------------------------------------------------


;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200)&& (Movecontact)
trigger3 = (stateno = 230)&& (Movecontact)

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = StateNo = 400&& Movecontact
trigger5 = StateNo = 430&& Movecontact
trigger6 = (stateno=[100,101])

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = StateNo = 400&& Movecontact
trigger5 = StateNo = 430&& Movecontact
trigger6 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 430) && (Movecontact)

;Stand meduim Kick
[State -1, Stand meduim Kick]
type = ChangeState
value = 240
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (stateno=[100,101])

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = StateNo = 400&& Movecontact
trigger5 = StateNo = 430&& Movecontact
trigger6 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)

;Crouching meduim Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 205) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = StateNo = 400 && Movecontact
trigger6 = StateNo = 430 && Movecontact
trigger7 = (stateno=[100,101])

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = StateNo = 400&& Movecontact
trigger5 = StateNo = 430&& Movecontact
trigger8 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)

;Crouching Strong Kick
[State -1, Crouching med Kick]
type = ChangeState
value = 440
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = StateNo = 400&& Movecontact
trigger5 = StateNo = 430&& Movecontact
trigger6 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact 
trigger4 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = StateNo = 640&& MoveContact
trigger6 = stateno = 100000
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall =  var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = StateNo = 640&& MoveContact
trigger6 = stateno = 100000
