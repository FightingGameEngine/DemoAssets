; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
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
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; balacera
;---------------------------------------------------------------------------
[Command]
name = "balacera"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "balacera"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "balacera"
command = ~D, DF, F, z+x
time = 40

;---------------------------------------------------------------------------
; venomdance
;---------------------------------------------------------------------------
[Command]
name = "venomdance"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "venomdance"
command = ~D, DF, F, b+c
time = 40

[Command]
name = "venomdance"
command = ~D, DF, F, c+a
time = 40

;---------------------------------------------------------------------------
; lanzas ; level 2
;---------------------------------------------------------------------------
[Command]
name = "lanzas"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "lanzas"
command = ~D, DB, B, y+z
time = 40
[Command]
name = "lanzas"
command = ~D, DB, B, z+x
time = 40

;---------------------------------------------------------------------------
; gigante
;--------------------------------------------------------------------------
[Command]
name = "gigante"
command = ~D, DB, B, a+b
time = 25

[Command]
name = "gigante"
command = ~D, DB, B, b+c
time = 25

[Command]
name = "gigante"
command = ~D, DB, B, c+a
time = 25

;-------------------------------------------------------------------------------
;Shining Gou Shock; level 3
;-------------------------------------------------------------------------------
[Command]
name = "Shining_Gou_Shock"
command = ~D, DB, B, a+x
time=45
[Command]
name = "Shining_Gou_Shock"
command = ~D, DB, B, b+y
time=45
[Command]
name = "Shining_Gou_Shock"
command = ~D, DB, B, c+z
time=45


;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; arma
;---------------------------------------------------------------------------

[Command]
name = "arma"
command = ~D, DF, F, x
time = 20

[Command]
name = "arma"
command = ~D, DF, F, y
time = 20

[Command]
name = "arma"
command = ~D, DF, F, z
time = 20

;---------------------------------------------------------------------------
; misil
;---------------------------------------------------------------------------

[Command]
name = "misil"
command = ~D, DF, F, a
time = 20

[Command]
name = "misil"
command = ~D, DF, F, b
time = 20

[Command]
name = "misil"
command = ~D, DF, F, c
time = 20

;---------------------------------------------------------------------------
;cabezas
;---------------------------------------------------------------------------
[Command]
name = "cabezas"
command = ~D, DB, B, a
time = 22

[Command]
name = "cabezas"
command = ~D, DB, B, b
time = 22

[Command]
name = "cabezas"
command = ~D, DB, B, c
time = 22

;---------------------------------------------------------------------------
;mordida
;---------------------------------------------------------------------------
[Command]
name = "mordida"
command =  ~20$B, F, x
time = 20

[Command]
name = "mordida"
command =  ~20$B, F, y
time = 20

[Command]
name = "mordida"
command =  ~20$B, F, z
time = 20

;---------------------------------------------------------------------------
; capullo
;---------------------------------------------------------------------------

[Command]
name = "capullo"
command = x,x,x
time = 20

[Command]
name = "capullo"
command = y,y,y
time = 20

[Command]
name = "capullo"
command = z,z,z
time = 20

;---------------------------------------------------------------------------
; chuzos
;---------------------------------------------------------------------------

[Command]
name = "chuzos"
command = ~D, DF, F, x
time = 20

[Command]
name = "chuzos"
command = ~D, DF, F, y
time = 20

[Command]
name = "chuzos"
command = ~D, DF, F, z
time = 20

;---------------------------------------------------------------------------
; TripleHit
;---------------------------------------------------------------------------

[Command]
name = "TripleHit"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "TripleHit"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "TripleHit"
command = ~D, DF, F, a+b
time = 20

;---------------------------------------------------------------------------
;Flight
;---------------------------------------------------------------------------
[Command]
name = "Flight"
command = a+x
time = 30

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


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



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
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


;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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


;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
[Statedef -1]


[State -1, AIActivate]
type = VarSet
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

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = p2statetype != L
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = p2statetype != L
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1  && StateType = A
triggerall = p2statetype != L
triggerall = Random <= 100
triggerall = (StateNo != 108)
triggerall = (StateNo != 107)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A && Ctrl = 1
value = 107
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1  && StateType = A && P2moveType = A
triggerall = Random <= 50
triggerall = p2statetype != L
triggerall = (StateNo != 108)
triggerall = (StateNo != 107)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
triggerall = roundstate = 2
trigger1 = Ctrl = 1
value = 108
persistent = 0


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132
;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = var(59) && ctrl
triggerall = p2statetype != L && p2statetype !=A
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
triggerall = p2statetype != L
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59)>=1 && numenemy&&roundstate=2&&StateType != A
triggerall =(p2bodydist x = [0, 40])&&(p2bodydist y = [-80,5])&&P2statetype != C&&P2statetype != L
trigger1 = ctrl && random < 500
trigger2 = (stateno = [100,101]) && random < 150
trigger3 = ctrl&&(enemynear,ctrl) && random < 600

[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L
trigger1 = ctrl && random < 100
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
trigger2 = random < 500

[State -1, Standing Medium Punch 2 AI]
type = ChangeState
value = 215
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L && random < 100
trigger1 = stateno=210 && Movehit
trigger2 = stateno=240 && movehit

[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -80, 80]) && p2statetype != L
trigger1 = ctrl && random < 150
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 300

[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 35]) && p2statetype != L
trigger1 = ctrl && random < 200
trigger2 = (stateno = [100,101]) && random < 100
trigger3 = ctrl&&(enemynear,ctrl) && random < 300

[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L
trigger1 = ctrl && random < 150
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
trigger2 = random < 350

[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -70, 50]) && p2statetype != L
trigger1 = ctrl && random < 200
;trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 800

[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 30]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L
trigger1 = ctrl && random < 150
trigger2 = stateno = [100,101]

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L
trigger1 = ctrl && random < 100
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
trigger2 = random < 800

[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A
trigger1 = ctrl && random < 100 && P2statetype != L
trigger2 = ctrl && numtarget(1400) && random < 150 && (enemynear,stateno=5110)&&(p2bodydist x = [-8, 22])
trigger2 = enemynear,statetype=L && enemynear,stateno!=5120 && p2dist y=0

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A
trigger1 = ctrl && random < 150 && P2statetype != L
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
trigger2 = random < 350 && P2statetype != L
trigger3 = ctrl && random < 100 && (enemynear,stateno=5110)&&(p2bodydist x = [-8, 22])
trigger3 = enemynear,statetype=L && enemynear,stateno!=5120 && p2dist y=0

[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S
trigger1 = ctrl && random < 200
trigger2 = ((stateno = [200,219])|| (stateno = [230,249])||(stateno = [400,419])||(stateno = [430,449]))&& movehit
trigger2 = random < 250

[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && stateno != 600
triggerall = (p2bodydist x = [0,70]) && (p2bodydist y = [ -40, 70]) && p2statetype != L
trigger1 = ctrl && random < 450

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -60, 50]) && p2statetype != L
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 150, 50))
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 500

[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59)>=1 && numenemy &&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -80, 40]) && p2statetype != L
trigger1 = ctrl && random < 150 && p2statetype != A
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 350 && enemynear,Statetype=A
trigger3 = (stateno = 610||stateno = 640)&& movehit && random < 700 && enemynear,Statetype=A

[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -80, 50]) && p2statetype != L
trigger1 = ctrl && random < 50
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 50 && enemynear,Statetype=A
trigger3 = (stateno = 610||stateno = 640)&& movehit && random < 100  && enemynear,Statetype=A

[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && (enemynear,Statetype=A)
triggerall = (p2bodydist x = [5, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < 250

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [-20,70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < 200
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 400
trigger3 = ctrl && (enemynear,statetype=A) && (random<250)

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
; AI Super Attempt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numprojid(1001) = 0
triggerall = p2statetype != L
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1000
;---------------------------------------------------------------------------
[State -1, mordida]
type = ChangeState
value = 1006
triggerall = !Var(59)
triggerall = command = "mordida"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;---------------------------------------------------------------------------
; cabezas
[State -1, cabezas]
type = ChangeState
value = 1004
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

[State -1, misil]
type = ChangeState
value = 1001
triggerall = !Var(59)
triggerall = command = "misil"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, TripleHit]
type = ChangeState
value = 1500
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)


;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;---------------------------------------------------------------------------
[State -1, lanzas]
type = ChangeState
value = 3008
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;---------------------------------------------------------------------------
[State -1, Shining Gou Shock]
type = ChangeState
value = 3400
triggerall = Statetype != A
triggerall = command = "Shining_Gou_Shock"
triggerall = power >=3000
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3=(stateno=[1100,1499]) && movecontact

;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, balacera]
type = ChangeState
value = 3000
triggerall = !Var(59)
triggerall = command = "balacera"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, venomdance]
type = ChangeState
value = 3001
triggerall = !Var(59)
triggerall = command = "venomdance"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, lanzas]
type = ChangeState
value = 3008
triggerall = !Var(59)
triggerall = command = "lanzas"
trigger1 = power >= 1000                                   
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 202

[State -1, gigante]
type = ChangeState
value = 3040
triggerall = command = "gigante"
triggerall = !var(59)
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 202


[State -1, Shining Gou Shock]
type = ChangeState
value = 3400
triggerall = Statetype != A
triggerall = command = "Shining_Gou_Shock"
triggerall = power >=3000
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3=(stateno=[1100,1499]) && movecontact



;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
[State -1, arma]
type = ChangeState
value = 1000
triggerall = !Var(59)
triggerall = command = "arma"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, misil]
type = ChangeState
value = 1001
triggerall = !Var(59)
triggerall = command = "misil"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

; cabezas
[State -1, cabezas]
type = ChangeState
value = 1004
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "cabezas"

[State -1, capullo]
type = ChangeState
value = 2401
triggerall = !var(59)
triggerall = statetype = S
trigger1 = command = "capullo"

[State -1, chuzos]
type = ChangeState
value = 1500
triggerall = stateno != [1120,1127]
triggerall = command = "chuzos"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = stateno = [200,250]
trigger2 = time > 10
trigger2 = MoveContact

[State -1, TripleHit]
type = ChangeState
value = 7703
triggerall = command = "TripleHit"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = stateno = [200,250]
trigger2 = time > 10
trigger2 = MoveContact

[State -1, mordida]
type = ChangeState
value = 1006
triggerall = !Var(59)
triggerall = command = "mordida"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------
Remove the ; if you want to use Flight Mode
;[State -1, Flight Mode]
type = ChangeState
value = ifelse((stateno >2000) && (stateno <2500),70,2000)
triggerall=var(59)  != 1
trigger1 = command = "Flight"
trigger1 = ctrl

;[State -1, Flight Mode]
type = ChangeState
value =70
triggerall=var(59)  != 1
triggerall = (stateno >2000) && (stateno <2500)
trigger1 = command = "Flight"

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !Var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !Var(59)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !Var(59)
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, Air Dash Forward]
type = ChangeState
value = 107
triggerall = !Var(59)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "FF"

[State -1, Air Dash Back]
type = ChangeState
value = 108
triggerall = !Var(59)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = !Var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
;stand light punch
[state -1]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = command = "x"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = command = "y"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = command = "z"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = command = "a"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = command = "b"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = command = "c"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
