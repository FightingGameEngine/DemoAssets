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
command.time = 15
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
; Hyper 1
;---------------------------------------------------------------------------
;merged golden armour with maximum combo

[Command]
name = "Maximum Combo"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "Maximum Combo"
command = ~D, DF, F, b+c
time = 30

[Command]
name = "Maximum Combo"
command = ~D, DF, F, a+c
time = 30



[Command]
name = "Cosmic Explosion"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Cosmic Explosion"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "Cosmic Explosion"
command = ~D, DB, B, c+a
time = 30



[Command]
name = "Mini Gatling Cannon"
command = ~D, DB, B, x+y
time = 30


[Command]
name = "Energy Sphere Cannon"
command = ~D, DB, B, z+y
time = 30


[Command]
name = "Mini Gatling Cannon"
command = ~D, DB, B, x+z
time = 30











[Command]
name = "FlameThrower"
command = ~D, DF, F, x+y
time = 30



[Command]
name = "FlameThrower"
command = ~D, DF, F, y+z
time = 30


[Command]
name = "FlameThrower"
command = ~D, DF, F, x+z
time = 30



[Command]
name = "Execution Cannon"
command = ~D, DF, F, c+z
time = 30



[Command]
name = "Execution Cannon"
command = ~D, DF, F, b+y
time = 30



[Command]
name = "Execution Cannon"
command = ~D, DF, F, a+x
time = 30






[Command]
name = "Massive Attack Force"
command = ~D, DB, B, c+z
time = 30



[Command]
name = "Massive Attack Force"
command = ~D, DB, B, b+y
time = 30




[Command]
name = "Massive Attack Force"
command = ~D, DB, B, a+x
time = 30





;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "Teleport a"
command = ~D,DB,B, a
time = 22

[Command]
name = "Teleport b"
command = ~D,DB,B, b
time = 22

[Command]
name = "Teleport c"
command = ~D,DB,B, c
time = 22



[Command]
name = "Uni Beam"
command = ~F,D,DF, x
time = 22

[Command]
name = "Uni Beam"
command = ~F,D,DF, y
time = 22

[Command]
name = "Uni Beam"
command = ~F,D,DF, z
time = 22



[Command]
name = "Energy Blaze"
command = ~D,DF,F, x
time = 22

[Command]
name = "Energy Blaze"
command = ~D,DF,F, y
time = 22

[Command]
name = "Energy Blaze"
command = ~D,DF,F, z
time = 22


[Command]
name = "Grenade Cannon"
command = ~D,DB,B, x
time = 22

[Command]
name = "Grenade Cannon"
command = ~D,DB,B, y
time = 22

[Command]
name = "Grenade Cannon"
command = ~D,DB,B, z
time = 22



[Command]
name = "Bolt Cannon"
command = ~D, DF, F, a
time = 22

[Command]
name = "Bolt Cannon"
command = ~D, DF, F, b
time = 22

[Command]
name = "Bolt Cannon"
command = ~D, DF, F, c
time = 22





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
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 230)) && (movecontact = 1)
trigger2 = ((stateno = 400) || (stateno = 430)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger3 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 400)) && (movecontact = 1)
trigger3 = ((stateno = 410) || (stateno = 430)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger3 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A

; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2
triggerall = p2statetype != L  && p2statetype !=A

; (chain combos)
trigger1 = (stateno = [200,440]) && movecontact && stateno != 420 && stateno !=220 && stateno !=250

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
trigger6 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2
triggerall = p2statetype != L && p2statetype !=A
; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 430) && movecontact
trigger8 = (stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl && p2bodydist x < 100
triggerall = p2statetype != L
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
trigger2 = stateno = 700

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A 
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && p2bodydist x < 100
triggerall = p2statetype != L
; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)
trigger2 = stateno = 700

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = p2statetype != L
; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

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

; Energy Blaze
[State -1, Energy Blaze]
type = ChangeState
value = 1600
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100
;---------------------------------------------------------------------------

;Uni Beam
[State -1, Uni Beam]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl && prevstateno != 1200 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 100  && Random < 50  && enemynear,statetype !=A


;---------------------------------------------------------------------------
; Grenade Cannon
[State -1, Grenade Cannon]
type = ChangeState
value = 1700
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100



;---------------------------------------------------------------------------
;Bolt Cannon
[State -1, Bolt Cannon]
type = ChangeState
value = 1800
triggerall = var(59) && ctrl && prevstateno != 1200 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 100  && Random < 50  && enemynear,statetype !=A




;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
; State -1, FlameThrower
[State -1, FlameThrower]
type = ChangeState
value = 3400
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;====================================================================
; State -1, Execution Cannon
[State -1, Execution Cannon]
type = ChangeState
value = 3900
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500


;====================================================================
; State -1, Mini Gatling Cannon
[State -1, Mini Gatling Cannon]
type = ChangeState
value = 3700
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;====================================================================
; State -1,
[State -1, cosmic explosion]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;====================================================================
; State -1,
[State -1, Massive Attack Force]
type = ChangeState
value = 4000
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;====================================================================
; State -1,
[State -1, Maximum Combo]
type = ChangeState
value = 3800
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500



;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, FlameThrower]
type = ChangeState
value = 3400
triggerall = !Var(59)
triggerall = command = "FlameThrower"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100

;---------------------------------------------------------------------------
;Cosmic Explosion
[State -1, Cosmic Explosion]
type = ChangeState
value = 3100
triggerall = command = "Cosmic Explosion"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact



;---------------------------------------------------------------------------
;[State -1, Golden Armor]  THIS HAS BEEN MERGED INTO MAXIMUM COMBO (ark)
;type = ChangeState
;value = 3000
;triggerall = command = "Golden Armor"
;triggerall = power >= 1000
;triggerall = StateType != A
;triggerall = MoveType != H
;trigger1 = ctrl = 1
;trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
;trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)


;---------------------------------------------------------------------------
[State -1, Execution Cannon]
type = ChangeState
value = 3900
triggerall = !Var(59)
triggerall = command = "Execution Cannon"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3200



;---------------------------------------------------------------------------
[State -1, Mini Gatling Cannon]
type = ChangeState
value = 3700
triggerall = !Var(59)
triggerall = command = "Mini Gatling Cannon"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3200



----------------------------------------------------------------------
[State -1, Massive Attack Force]
type = ChangeState
value = 4000
triggerall = !Var(59)
triggerall = command = "Massive Attack Force"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3200



;---------------------------------------------------------------------------
[State -1,Maximum Combo]
type = ChangeState
value = 3800
triggerall = !var(0)
triggerall = power >= 1000
triggerall = command = "Maximum Combo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact



;---------------------------------------------------------------------------
[State -1, Energy Sphere Cannon]
type = ChangeState
value = 3600
triggerall = !Var(59)
triggerall = command = "Energy Sphere Cannon"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100


;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------

[State -1, Teleport a]
type = ChangeState
value = 1100
triggerall = !Var(59)
triggerall = command = "Teleport a"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Teleport b]
type = ChangeState
value = 1100
triggerall = !Var(59)
triggerall = command = "Teleport b"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Teleport c]
type = ChangeState
value = 1100
triggerall = !Var(59)
triggerall = command = "Teleport c"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



;---------------------------------------------------------------------------

; Uni Beam
[State -1, Uni Beam]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper) ;&& numproj = 0
triggerall = (command = "Uni Beam")
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)  && time > 5
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)  && time > 5
trigger4 = ((stateno = 250) || (stateno = 220)) && (movecontact >= 1) && time > 5
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1) && time > 5
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1) && time > 5
trigger7 = (StateNo = 450) && (movecontact >= 1) && time > 5
trigger8 = (StateNo = 420) && (movecontact >= 1) && time > 5




;---------------------------------------------------------------------------
;Energy Blaze
[State -1, Energy Blaze]
type = ChangeState
value = 1600
triggerall = !Var(0) && numprojid(1600) = 0
triggerall = command = "Energy Blaze"
trigger1 = (Statetype != A) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



;---------------------------------------------------------------------------

;Grenade Cannon
[State -1, Grenade Cannon]
type = ChangeState
value = 1700
triggerall = !Var(0) && numprojid(1700) = 0
triggerall = command = "Grenade Cannon"
trigger1 = (Statetype != A) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)




;---------------------------------------------------------------------------
; Bolt Cannon
[State -1, Bolt Cannon]
type = ChangeState
value = 1800
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper) ;&& numproj = 0
triggerall = (command = "Bolt Cannon")
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)  && time > 5
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)  && time > 5
trigger4 = ((stateno = 250) || (stateno = 220)) && (movecontact >= 1) && time > 5
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1) && time > 5
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1) && time > 5
trigger7 = (StateNo = 450) && (movecontact >= 1) && time > 5
trigger8 = (StateNo = 420) && (movecontact >= 1) && time > 5




;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------
;Remove the ; if you want to use Flight Mode
;[State -1, Flight Mode]
;type = ChangeState
;value = ifelse((stateno >2000) && (stateno <2500),70,2000)
;triggerall=var(59)  != 1
;trigger1 = command = "Flight"
;trigger1 = ctrl

;[State -1, Flight Mode]
;type = ChangeState
;value =70
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = command = "Flight"

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

;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"

;---------------------------------------------------------------------------
;Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "BB"


;---------------------------------------------------------------------------
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
triggerall = !Var(0)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

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
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)


;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;Extra stuff if you want to use just remove the ;
;[State -1, FM Dash Forward]
;type = ChangeState
;value = 2005
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = Command = "FF"

;[State -1, FM Dash Back]
;type = ChangeState
;value = 2006
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2999)
;trigger1 = Command = "BB"

;[State -1, FM LP]
;type = ChangeState
;value = 2010
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "x"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MP]
;type = ChangeState
;value = 2011
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "y"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SP]
;type = ChangeState
;value = 2012
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "z"
;trigger1= Movetype = I

;[State -1, FM LK]
;type = ChangeState
;value = 2013
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "a"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MK]
;type = ChangeState
;value = 2014
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "b"
;trigger1= (Movetype = I)
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SK]
;type = ChangeState
;value = 2015
;triggerall=var(59)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "c"
;trigger1= Movetype = I

;[State -1, Guard Push Stand]
;type = ChangeState
;value = 6300
;triggerall = command = "guardpush" && statetype = S
;trigger1 = stateno = [150,153]

;[State -1, Guard Push Crouch]
;type = ChangeState
;value = 6310
;triggerall = command = "guardpush" && statetype = C
;trigger1 = stateno = [150,153]

;[State -1, Dodge]
;type = ChangeState
;value = 7010
;triggerall = StateType != A
;triggerall = (Ctrl)
;trigger1 = Command = "dodge"


