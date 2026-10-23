;----------------------programação feita por Mauteck---------------------------;
;---------------------- terminada por O Ilusionista -------------------------------;

;-| CPU |--------------------------------------------------------------

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

;-| Hold Button |----------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
time = 1

;-------------------------------------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Ataques |------------------------------------------------------------;

; Heroes for Hire
 [Command]
name = "x_x_F_a_z"
command=x,x,F,a,z
time = 48

[Command]
name = "super laço"
command = ~D,B,x+y
time = 15

[Command]
name = "super laço"
command = ~D,B,y+z
time = 15

[Command]
name = "super laço"
command = ~D,B,x+z
time = 15


[Command]
name = "QCF_x+y"
command = ~D,F,x+y
time = 15

[Command]
name = "QCF_x+y"
command = ~D,F,y+z
time = 15

[Command]
name = "QCF_x+y"
command = ~D,F,x+z
time = 15

[Command]
name = "QCF_a+b"
command = ~D,F,a+b
time = 15

[Command]
name = "QCF_a+b"
command = ~D,F,b+c
time = 15

[Command]
name = "QCF_a+b"
command = ~D,F,a+c
time = 15

[Command]
name = "hyper4"
command = ~D,B,a+c
time = 15

[Command]
name = "hyper4"
command = ~D,B,a+b
time = 15

[Command]
name = "hyper4"
command = ~D,B,b+c
time = 15

[Command]
name = "badluck"
command = ~D,D,x+y
time = 15

[Command]
name = "badluck"
command = ~D,D,y+z
time = 15

[Command]
name = "badluck"
command = ~D,D,x+z
time = 15

[Command]
name = "stick_wall"
command = ~D,D,a+b
time = 15

[Command]
name = "stick_wall"
command = ~D,D,b+c
time = 15

[Command]
name = "stick_wall"
command = ~D,D,a+c
time = 15

;-| Ataques Especiais |--------------------------------------------------------;

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[command]
name = "DP_x"
command = ~F,D,DF,x


[command]
name = "DP_y"
command = ~F,D,DF,y


[command]
name = "DP_z"
command = ~F,D,DF,z


[Command]
name = "DF_x"
command = ~D, F,x

[Command]
name = "DF_y"
command = ~D, F,y

[Command]
name = "DF_z"
command = ~D, F,z


[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "souplet"
command = x+y+z

[command]
name = "super pulo"
command = ~$D,U
time = 15

;-| Dois Toques |--------------------------------------------------------------;
[Command]
name = "FF"     ;Requerido (não remova)
command = F, F
time = 20

[Command]
name = "BB"     ;Requerido (não remova)
command = B, B
time = 20

;-| 2/3 combinações de botões|-------------------------------------------------;
[Command]
name = "recovery";Requerido (não remova)
command = x+y
time = 1

;-| Dir + Botão |--------------------------------------------------------------;
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-|Botões |--------------------------------------------------------------------;
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

;-| Segurar Dir |--------------------------------------------------------------;
[Command]
name = "holdfwd";Requerido (não remova)
command = /$F
time = 1

[Command]
name = "holdback";Requerido (não remova)
command = /$B
time = 1

[Command]
name = "holdup" ;Requerido (não remova)
command = /$U
time = 1

[Command]
name = "holddown";Requerido (não remova)
command = /$D
time = 1
;---------------------------------------------------------------------------
;Bloco requerido dos comandos
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;---------------------------------------------------------------------------
;------------------------------- AI CODES ----------------------------------
;---------------------------------------------------------------------------

;-------------------------------------------------------------------------
; A.I. - Standing Guard

[State -1, 1]
type = changestate
triggerall = RoundState = 2 && Var(20)
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = StateType = S
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl && P2BodyDist X <=90
value = 130

;-------------------------------------------------------------------------
; A.I. - Standing to Crouching Guard

[State -1, 2]
type = ChangeState
triggerall = RoundState = 2 && Var(20)
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;-------------------------------------------------------------------------
; A.I. - Crouching Guard

[State -1, 3]
type = ChangeState
triggerall = RoundState = 2 && Var(20)
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl = 1
;trigger1 = random <= 800
value = 131

;-------------------------------------------------------------------------
; A.I. - Crouching to Standing Guard

[State -1, 4]
type = ChangeState
triggerall = RoundState = 2 && Var(20)
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 152
trigger1 = 1
value = 150

;-------------------------------------------------------------------------
; A.I. - Jumping Guard

[State -1, 5]
type = changestate
triggerall = RoundState = 2 && Var(20)
triggerall = StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = ctrl
;trigger1 = random <= 800
value = 132

;---------------------------------------------------------------------------
; A.I. - Jump Over Projectiles

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(20)
triggerall = (StateType != A) && (StateType != L)
triggerall = (P2MoveType = A) && (P2StateType != A)
triggerall = StateNo != 40
triggerall = (Enemy, NumProj >0)
trigger1 = Ctrl = 1
trigger1 = Random = [0,100]
value = ifelse(random<500,1250,900)

;---------------------------------------------------------------------------
; A.I. - Combos Starters
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Combo 1 - CLP

[State -1, AI COMBO]
type = changestate
Triggerall = roundstate = 2 && Var(20) && (statetype = S)&& (p2statetype != A)
Triggerall = Ctrl && prevstateno !=52 && (p2statetype !=L)
trigger1 = (p2bodydist X <=45) && time > 3
value = ifelse((random <350)&&(p2bodydist x <=25)&& Prevstateno != 1250,800,400)
;value = ifelse((p2bodydist x <=45)&& Prevstateno != 1250,800,400)

;---------------------------------------------------------------------------
; Combo 2 - CLP > CMK/SHP

[State -2, 2]
type = changestate
Triggerall = roundstate = 2 && Var(20)
trigger1 = (stateno = 400 || stateno = 230) && (movehit);&& time > 3
value = ifelse (random < 500,450,250)

;---------------------------------------------------------------------------
; Combo 2a - CMP > Senpu no Hakujin || Joukoirai Kon'hou

[State -2, 2]
type = changestate
Triggerall = roundstate = 2 && Var(20)
trigger1 = (stateno = 450) && (movecontact) && time > 3
value = ifelse(power>=1000,3000+(random%2*100),(ifelse(random >500,1100,800)))

[State -2, 2]
type = changestate
Triggerall = roundstate = 2 && Var(20)
trigger1 = (stateno = 1100 || stateno = 1110) && (prevstateno != 1110)&& (movecontact) && time > 3
value = ifelse(power>=1000,3000+(random%3*100),1110)

;---------------------------------------------------------------------------
; Combo 3a - SHP > Aerial Rave

[State -2, 6]
type = changestate
Triggerall = roundstate = 2 && Var(20)
trigger1 = (stateno = 250)&& (movehit) && time > 3  && (statetype = S)
value = 900

;---------------------------------------------------------------------------
; A.I. - Air Combos

;---------------------------------------------------------------------------
; Air Combo 1 - JLP / JLK

[State -1, 1]
type = changestate
Triggerall = roundstate = 2 && Var(20) && (statetype = A)
triggerall = (time > 4) && ctrl && prevstateno != [620,650]
trigger1 = stateno = 901 && EnemyNear, Pos X <=90
value = ifelse (random <=500,600,630)

;---------------------------------------------------------------------------
; Air Combo 2 - Jumping Light Punch > Jumping Light Kick

[State -1, 2]
type = changestate
Triggerall = roundstate = 2 && Var(2) && (statetype = A)
trigger1 = (stateno = 600)
trigger1 = (movecontact)
value = 630

;---------------------------------------------------------------------------
; Air Combo 3 - Jumping Light Kick > Jumping Medium Punch

[State -1, 3]
type = changestate
Triggerall = roundstate = 2 && Var(20) && (statetype = A)
triggerall = (movecontact)
trigger1 = (p2bodydist X <= 100)
trigger1 = (stateno = 630)
trigger1 = (prevstateno = 600)
value = 610

;---------------------------------------------------------------------------
; Air Combo 4 - Jumping Medium Punch > Jumping Medium Kick

[State -1, 4]
type = changestate
Triggerall = roundstate = 2 && Var(20) && (statetype = A)
triggerall = (movecontact)
trigger1 = (p2bodydist X <= 100)
trigger1 = (stateno = 610)
trigger1 = (prevstateno = 630)
value = 640;ifelse (power>=1000,3200,640)



;==============================================================================;
;------------------------------------------------------------------------------;
;------------------------------------------------------------------------------;
;----------[Hyper Ataques]-----------------------------------------------------;
;------------------------------------------------------------------------------;

;------------------------------------------------------------------------------;
;Heros 4 Hire Girls
[State -1, maximum cat]
type = ChangeState
value = 3700
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "x_x_F_a_z"
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;------------------------------------------------------------------------------;
;Love Clamp
[State -1, Love Clamp]
type = ChangeState
value = 3100
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = stateno != 100 && p2bodydist X >= 70
triggerall = command = "super laço"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;Vega Style xD
[State -1, Stick Wall]
type = ChangeState
value = 3500
triggerall = !Var(20)
triggerall = NumHelper(3520) = 0
triggerall = fVar(10)<=0
triggerall = command = "stick_wall"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;Bad Luck
[State -1, Bad Luck day]
type = ChangeState
value = 3400
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "badluck"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;------------------------------------------------------------------------------;
;hyper 4
[State -1, Cat Scratch Fever]
type = ChangeState
value = 3299
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "hyper4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact
;------------------------------------------------------------------------------;
;maximum cat
[State -1, maximum cat]
type = ChangeState
value = 3200
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "QCF_a+b"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;------------------------------------------------------------------------------;
;mostrando as garras
[State -1, Claws Barrage]
type = ChangeState
value = 3000
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "QCF_x+y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
trigger3 = stateno = 1100
trigger3 = MoveContact

;------------------------------------------------------------------------------;
;mostrando as garras
[State -1, Basic Intincts]
type = ChangeState
value = 3600
triggerall = !Var(20)
triggerall = fVar(10)<=0
triggerall = command = "QCF_x+y"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = MoveContact
trigger3 = stateno = 2100
trigger3 = MoveContact
;------------------------------------------------------------------------------;
;----------[Ataques Especiais]-------------------------------------------------;
;------------------------------------------------------------------------------;

;Helpless Kitty
[State -1, Helpless Kitty]
type = ChangeState
value = 2100
triggerall = !Var(20)
triggerall = (command = "DF_x") || (command = "DF_y") || (command = "DF_z")
triggerall = statetype =A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = MoveContact

;Heidern Style, baby
[State -1, Lovely Necklace]
type = ChangeState
value = 2000
triggerall = !Var(20)
triggerall = command = "DP_x" || command = "DP_y" || command = "DP_z"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;Suplex
[State -1, Frankensteiner]
type = ChangeState
value = 1300
triggerall = !Var(20)
triggerall = Statetype != A && Ctrl
trigger1 = command = "a" && command = "b"
trigger2 = command = "a" && command = "c"
trigger3 = command = "b" && command = "c"

;laço03
[State -1, Elevator Action03]
type = ChangeState
value = 1252
triggerall = !Var(20)
triggerall = command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;laço02
[State -1, Elevator Action02]
type = ChangeState
value = 1251
triggerall = !Var(20)
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;laço01
[State -1, Elevator Action01]
type = ChangeState
value = 1250
triggerall = !Var(20)
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;------------------------------------------------------------------------------;
;Tarzan
[State -1, Ceiling Blitz]
type = ChangeState
value = 1000
triggerall = !Var(20)
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
;------------------------------------------------------------------------------;
;arranhão
[State -1, Dashing Claws]
type = ChangeState
value = 1100
triggerall = !Var(20)
triggerall = (command = "DF_x") || (command = "DF_y") || (command = "DF_z")
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact
;------------------------------------------------------------------------------;
;Super Pulo
[state -1, super pulo N, F e T]
type = changestate
triggerall = !Var(20)
triggerall = command = "super pulo"
triggerall = statetype!= A
trigger1 = ctrl
value = 900

;subindo na parede
[State -1, Wall Climb]
type = ChangeState
value = 1200
triggerall = !Var(20)
triggerall = (command = "QCB_x") || (command = "QCB_y") || (command = "QCB_z")
triggerall = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------;
;------------------------------------------------------------------------------;
;-----------[ Ataques Básicos ]------------------------------------------------;
;------------------------------------------------------------------------------;
;Agarrão
[State -1, Suplex]
type = ChangeState
value = 800
triggerall = !Var(20)
triggerall = statetype != A
triggerall = stateno != 100 && ctrl
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "y" && command = "z"

;Agarrão
[State -1, Paparazzi Shot]
type = ChangeState
value = 850
triggerall = !Var(20)
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "a" && command = "b"
trigger2 = command = "a" && command = "c"
trigger3 = command = "b" && command = "c"

;------------------------------------------------------------------------------;
;Soco_X
[State -1, Soco_X]
type = ChangeState
value = 200
triggerall = !Var(20)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = time >= 4
;------------------------------------------------------------------------------;
;Soco_Y
[State -1, Soco_Y]
type = ChangeState
value = 210
triggerall = !Var(20)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
trigger6 = stateno = [100,105]
trigger6 = time >= 4
;------------------------------------------------------------------------------;
;Soco_Z
[State -1, Soco_Z]
type = ChangeState
value = 220
triggerall = !Var(20)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
trigger6 = stateno = [100,105]
trigger6 = time >= 4
;------------------------------------------------------------------------------;
;Chute_A
[State -1, Chute_A]
type = ChangeState
value = 230
triggerall = !Var(20)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [400,410]
trigger3 = movecontact
trigger4 = stateno = [430,440]
trigger4 = movecontact
trigger5 = stateno = [100,105]
trigger5 = time >= 4
;------------------------------------------------------------------------------;
;Chute_B
[State -1, Chute_B]
type = ChangeState
value = 240
triggerall = !Var(20)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
trigger6 = stateno = [100,105]
trigger6 = time >= 4
;------------------------------------------------------------------------------;
;Chute_C
[State -1, Chute_C]
type = ChangeState
value = 250
triggerall = !Var(20)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
trigger6 = stateno = [100,105]
trigger6 = time >= 4
;------------------------------------------------------------------------------;
;Soco_X agachado
[State -1, Soco_X agachado]
type = ChangeState
value = 400
triggerall = !Var(20)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
;------------------------------------------------------------------------------;
;Soco_Y agachado
[State -1, Soco_Y agachado]
type = ChangeState
value = 410
triggerall = !Var(20)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
;------------------------------------------------------------------------------;
;Soco_Z agachado
[State -1, Soco_Z agachado]
type = ChangeState
value = 420
triggerall = !Var(20)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
;------------------------------------------------------------------------------;
;Chute_A agachado
[State -1, Chute_A agachado]
type = ChangeState
value = 430
triggerall = !Var(20)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
;------------------------------------------------------------------------------;
;Chute_B agachado
[State -1, Chute_B agachado]
type = ChangeState
value = 440
triggerall = !Var(20)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
;------------------------------------------------------------------------------;
;Chute_C agachado
[State -1, Chute_C agachado]
type = ChangeState
value = 450
triggerall = !Var(20)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact
;------------------------------------------------------------------------------;
;Soco_X no ar
[State -1, Soco_X no ar]
type = ChangeState
Value = 600
triggerall = !Var(20)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 105
;------------------------------------------------------------------------------;
;Soco_Y no ar
[State -1, Soco_Y no ar]
type = ChangeState
value = 610
triggerall = !Var(20)
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 105
;------------------------------------------------------------------------------;
;Soco_Z no ar
[State -1, Soco_Z no ar]
type = ChangeState
value = 620
triggerall = !Var(20)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = stateno = 105
;------------------------------------------------------------------------------;
;Chute_A no ar
[State -1, Chute_A no ar]
type = ChangeState
value = 630
triggerall = !Var(20)
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = 105
;------------------------------------------------------------------------------;
;Chute_B no ar
[State -1, Chute_B no ar]
type = ChangeState
value = 640
triggerall = !Var(20)
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 105
;------------------------------------------------------------------------------;
;Chute_C no ar
[State -1, Chute_C no ar]
type = ChangeState
value = 650
triggerall = !Var(20)
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = stateno = 105
;------------------------------------------------------------------------------;
;Cambalhota pra Frente
[State -1, Cambalhota pra Frente]
type = ChangeState
value = 100
triggerall = !Var(20)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------;
;Cambalhota pra Trás
[State -1, Cambalhota pra Trás]
type = ChangeState
value = 105
triggerall = !Var(20)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------;
;Provocação
[State -1, Provocação]
type = ChangeState
value = 194+random%2
triggerall = !Var(20)
triggerall = command = "start" && statetype !=A
trigger1 = Ctrl
;------------------------------------------------------------------------------;
;Pulo na parede
[State -1, Pulo na parede]
type = ChangeState
value= 60
triggerall = !Var(20)
Triggerall = BackEdgeDist < 2 && ctrl
triggerall = statetype = A && stateno != 60 && Pos Y <= -50
trigger1 = command = "holdfwd"
