; {character name}'s CMD file
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
[Command]
name = "Hyper 1"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, z+x
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, y+z
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, z+x
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, b+c
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, c+a
time = 40

[Command]
name = "Hyper 4"
command = ~D, DB, B, a+b
time = 40

[Command]
name = "Hyper 4"
command = ~D, DB, B, b+c
time = 40

[Command]
name = "Hyper 4"
command = ~D, DB, B, c+a
time = 40

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
[Command]
name = "Gammachargex"
command = ~D,DF,F, x
time = 20

[Command]
name = "Gammachargey"
command = ~D,DF,F, y
time = 20

[Command]
name = "Gammachargez"
command = ~D,DF,F, z
time = 20

[Command]
name = "Suplex"
command = ~D, DB, B , x
time = 15

[Command]
name = "Suplex"
command = ~D, DB, B , y
time = 15

[Command]
name = "Suplex"
command = ~D, DB, B , z
time = 15

[Command]
name = "Sommersaulta"
command = ~B, F , a
time = 20

[Command]
name = "Sommersaultb"
command = ~B, F , b
time = 20

[Command]
name = "Sommersaultc"
command = ~B, F , c
time = 20

[Command]
name = "Gammachargea"
command = ~D,DF,F, a
time = 20

[Command]
name = "Gammachargeb"
command = ~D,DF,F, b
time = 20

[Command]
name = "Gammachargec"
command = ~D,DF,F, c
time = 20

[Command]
name = "FlyingKick"
command = ~D,DB,B, a
time = 15

[Command]
name = "FlyingKick"
command = ~D,DB,B, b
time = 15

[Command]
name = "FlyingKick"
command = ~D,DB,B, c
time = 15

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = ~D,$U

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
;===========================================================================
;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = Ailevel && StateType != A && Ctrl
triggerall = Random <= (300 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = Ailevel && StateType != A && P2moveType = A
triggerall = Random <= (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59))
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= (799 * (AIlevel ** 2 / 64.0)))
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59))
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= (799 * (AIlevel ** 2 / 64.0)))
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59))
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= (799 * (AIlevel ** 2 / 64.0)))
value = 132


; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = var(59) && roundstate = 2 && statetype != A
trigger1 = stateno = 420 && MoveHit
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = Ailevel && RoundState = 2 && statetype != A && Random <= (150 * (AIlevel ** 2 / 64.0))
triggerall = p2bodydist x > 0 && p2bodydist x <= 60
triggerall = ((enemynear, statetype != A) && (p2dist y = 0))
triggerall = enemynear, movetype != H && enemynear, statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A
triggerall = power >= 1000 && p2statetype = S
trigger1 = Ctrl && random <= 10
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = stateno = 250 && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 220 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 3000

[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && power >= 1000
triggerall = p2bodydist x >= 150 && random <= (50 * (AIlevel ** 2 / 64.0)) && Statetype !=  A
trigger1 = Ctrl
value = 3100

[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype !=  A && power >= 1000
triggerall = (p2bodydist x <= 50 && p2bodydist x >= -10) && p2dist y >= -100
trigger1 = Ctrl && random <= (80 * (AIlevel ** 2 / 64.0)) && enemynear, hitfall && p2dist y < -25
trigger2 = Ctrl && random <= (10 * (AIlevel ** 2 / 64.0)) && (p2statetype = S || p2statetype = C)
trigger3 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0))
trigger7 = (stateno = 220 || stateno = 250) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 3200

;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------
;Suplex
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && random <= (100 * (AIlevel ** 2 / 64.0))
triggerall = (p2bodydist x > 0) && (p2bodydist x <= 15) 
triggerall = (p2statetype != A && p2statetype != L && !(enemynear, hitfall))
trigger1 = ctrl
value = 1100

;Gammacharge x
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 160 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -70
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = stateno = 220 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1000

;Gammacharge y
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 230 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -70
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = stateno = 220 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
value = 1010

;Gammacharge z
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 270 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -70
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = stateno = 220 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1020

;Sommersault a
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 50 && p2bodydist x >= -10)
triggerall = p2statetype != L && p2bodydist y >= -220 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (60 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1200

;Sommersault b
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 60 && p2bodydist x >= -10)
triggerall = p2statetype != L && p2bodydist y >= -250 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (60 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1210

;Sommersault c
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 60 && p2bodydist x >= -10)
triggerall = p2statetype != L && p2bodydist y >= -280 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (60 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1220

;Gammacharge a
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 140 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -145 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1300

;Gammacharge b
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 210 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -200 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1310

;Gammacharge c
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 250 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -255 && enemynear, vel y > -2
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1320

;Dart
[State -1]
type = ChangeState
triggerall = Ailevel && roundstate = 2 && Statetype != A && p2statetype != L
triggerall = (p2bodydist x <= 160 && p2bodydist x >= -10) 
triggerall = p2statetype != L && p2bodydist y >= -70
trigger1 = Ctrl && random <= (40 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && random <= (20 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 230 || stateno = 430) && movecontact && random <= (40 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 210 || stateno = 410) && movecontact && random <= (60 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = 240 || stateno = 440) && movecontact && random <= (80 * (AIlevel ** 2 / 64.0)) 
trigger7 = (stateno = 220 || stateno = 420) && movecontact && random <= (100 * (AIlevel ** 2 / 64.0)) 
trigger8 = stateno = 250 && movecontact && random <= (100 * (AIlevel ** 2 / 64.0))
value = 1400

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
triggerall = Ailevel && RoundState = 2 && statetype != A && Random <= (150 * (AIlevel ** 2 / 64.0))
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 50)
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 63) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (90 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))


;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 72) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (30 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 240 || stateno = 440) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (120 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 83) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (60 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (33 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (67 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L)
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 105) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (30 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 240 || stateno = 440) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = Ailevel && RoundState = 2 && statetype != A && Random <= (150 * (AIlevel ** 2 / 64.0))
triggerall = (enemynear, movetype != A && enemynear, statetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (90 * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = p2bodydist y >= -110 && enemynear, vel y >= 0
trigger1 = ctrl && Random <= (30 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 240 || stateno = 440) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (120 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (60 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (33 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (67 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = Ailevel && RoundState = 2 && statetype != A
triggerall = (enemynear, movetype != A && enemynear, statetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 47) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl && Random <= (30 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && movecontact && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 230 || stateno = 430) && movecontact && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 210 || stateno = 410) && movecontact && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 240 || stateno = 440) && movecontact && Random <= (100 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = Ailevel && RoundState = 2 && statetype = A && Random <= (150 * (AIlevel ** 2 / 64.0))
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 60) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = ctrl || (stateno = 701 && vel y >= 0)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = Ailevel && RoundState = 2 && statetype = A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 59) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 60)
trigger1 = (ctrl || (stateno = 701 && vel y >= 0)) && Random <= (56 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 600 && movecontact) && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = Ailevel && RoundState = 2 && statetype = A
triggerall = (enemynear, movetype != A && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 88)
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = (ctrl || (stateno = 701 && vel y >= 0)) && Random <= (35 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 600 && movecontact) && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 630 && movecontact) && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 610 && movecontact) && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 640 && movecontact) && Random <= (85 * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = Ailevel && RoundState = 2 && statetype = A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 43) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = (ctrl || (stateno = 701 && vel y >= 0)) && Random <= (78 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Ailevel && RoundState = 2 && statetype = A
triggerall = (enemynear, movetype != A && enemynear, statetype != C && p2statetype != L) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 82) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = (ctrl || (stateno = 701 && vel y >= 0)) && Random <= 60
trigger2 = (stateno = 600 && movecontact) && Random <= (33 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 630 && movecontact) && Random <= (67 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = Ailevel && RoundState = 2 && statetype = A
triggerall = (pos y <= -80 && vel y <= 2) || (pos y <= -152 && vel y >= 0)
triggerall = (enemynear, movetype != A && enemynear, statetype != C) 
triggerall = (enemynear, p2bodydist x > 0 && enemynear, p2bodydist x <= 90) 
triggerall = (enemynear, p2dist y >= -50 && enemynear, p2dist y <= 50)
trigger1 = (ctrl || (stateno = 701 && vel y >= 0)) && Random <= 12
trigger2 = (stateno = 600 && movecontact) && Random <= (25 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 630 && movecontact) && Random <= (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 610 && movecontact) && Random <= (75 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, Hyper 1]
type = ChangeState
value = 3000
triggerall = !Ailevel
triggerall = command = "Hyper 1"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && MoveContact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Hyper 2]
type = ChangeState
value = 3100
triggerall = !Ailevel
triggerall = command = "Hyper 2"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && MoveContact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
; Somersault Strike
[State -1, Somersault Strike]
type = ChangeState
value = 3200
triggerall = !Ailevel
triggerall = command = "Hyper 3"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && MoveContact
trigger2 = stateno != 420 && stateno != 450

;A hyper disabled because it's not finished yet
[State -1, Hyper 1]
type = null;ChangeState
value = 3300
triggerall = !Ailevel
triggerall = command = "Hyper 4"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && MoveContact
trigger2 = stateno != 420 && stateno != 450
;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Gamma Charge F Near]
type = ChangeState
value = 1000
triggerall = !Ailevel
triggerall = command =  "Gammachargex"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Gamma Charge F Mid]
type = ChangeState
value = 1010
triggerall = !Ailevel
triggerall = command =  "Gammachargey"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Gamma Charge F Far]
type = ChangeState
value = 1020
triggerall = !Ailevel
triggerall = command = "Gammachargez"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Suplex]
type = ChangeState
value = 1100
triggerall = !Ailevel
triggerall = statetype != A
triggerall = command = "Suplex"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Sommersaulta]
type = ChangeState
value = 1200
triggerall = !Ailevel
triggerall = command =  "Sommersaulta"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Sommersaultb]
type = ChangeState
value = 1210
triggerall = !Ailevel
triggerall = command =  "Sommersaultb"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Sommersaultc]
type = ChangeState
value = 1220
triggerall = !Ailevel
triggerall = command = "Sommersaultc"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Near]
type = ChangeState
value = 1300
triggerall = !Ailevel
triggerall = command =  "Gammachargea"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Mid]
type = ChangeState
value = 1310
triggerall = !Ailevel
triggerall = command =  "Gammachargeb"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Far]
type = ChangeState
value = 1320
triggerall = !Ailevel
triggerall = command = "Gammachargec"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450
;---------------------------------------------------------------------------

[State -1, Dart]
type = ChangeState
value = 1400
triggerall = !Ailevel
triggerall = command = "FlyingKick"
triggerall = statetype != C
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact
trigger2 = stateno != 420 && stateno != 450
;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !Ailevel && statetype = S && stateno != 100
triggerall =  command = "z" && (command = "holdfwd" || command = "holdback")
triggerall = (p2statetype = S) || (p2statetype = C)
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !Ailevel && StateType = S
triggerall = Command = "FF"
trigger1 = Ctrl && StateNo != 100

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !Ailevel && StateType = S
triggerall = Command = "BB"
trigger1 = Ctrl && StateNo != 100

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Ailevel && StateType = S
triggerall = Command = "start"
trigger1 = Ctrl && stateno != 100

[state -1, super_jump]
type = changestate
triggerall = !Ailevel && statetype != A
trigger1 = ctrl 
trigger1 = command = "super_jump"
trigger2 = Stateno = 420 && MoveHit
trigger2 = (command = "super_jump" || command = "holdup")
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
triggerall = !Ailevel && statetype != A
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !Ailevel && statetype != A
triggerall = command = "y" && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !Ailevel && statetype != A
triggerall = command = "z" && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact
trigger5 = (stateno = 240 || stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !Ailevel && statetype != A
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !Ailevel && statetype != A
triggerall = command = "b" && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = !Ailevel && statetype != A
triggerall = command = "c" && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact
trigger5 = (stateno = 240 || stateno = 440) && movecontact

; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !Ailevel && statetype != A
triggerall = command = "x" && command = "holddown"
trigger1 = ctrl

; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !Ailevel && statetype != A
triggerall = command = "y" && command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact

; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = !Ailevel && statetype != A
triggerall = command = "z" && command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact
trigger5 = (stateno = 240 || stateno = 440) && movecontact

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !Ailevel && statetype != A
triggerall = command = "a" && command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 

; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !Ailevel && statetype != A
triggerall = command = "b" && command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = !Ailevel && statetype != A
triggerall = command = "c" && command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = (stateno = 230 || stateno = 430) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact
trigger5 = (stateno = 240 || stateno = 440) && movecontact

; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = !Ailevel && statetype = A && command = "x" 
trigger1 = ctrl

; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !Ailevel && statetype = A && command = "y" 
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 630 && movecontact

; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = !Ailevel && statetype = A && command = "z" 
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = !Ailevel && statetype = A && command = "a"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = !Ailevel && statetype = A && command = "b"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact

; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = !Ailevel && statetype = A && command = "c"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Ailevel && (stateno = 5120 && alive)
trigger1 = command = "holdfwd" && time = 1

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Ailevel && (stateno = 5120 && alive)
trigger1 = command = "holdback" && time = 1


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


