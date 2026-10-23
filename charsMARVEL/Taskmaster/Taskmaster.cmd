;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Animations Template V.9
;by Acey
;===========================================================================

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


;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;---------------------------------------------------------------------------
;Legion Arrow(HC1)

[Command]
name = "LegionArrowLM"
command = ~D, DF, F, x+y

[Command]
name = "LegionArrowMH"
command = ~D, DF, F, y+z

[Command]
name = "LegionArrowLH"
command = ~D, DF, F, x+z

;---------------------------------------------------------------------------
;Aegis Counter(HC2)

[Command]
name = "AegisCounter"
command = ~D, DB, B, x+y

[Command]
name = "AegisCounter"
command = ~D, DB, B, y+z

[Command]
name = "AegisCounter"
command = ~D, DB, B, x+z

[Command]
name = "AegisCounter"
command = ~D, DB, B, x+y+z

;---------------------------------------------------------------------------
;Sword Master

[Command]
name = "SwordL"
command = ~F,D,DF, x

[Command]
name = "SwordM"
command = ~F,D,DF, y

[Command]
name = "SwordH"
command = ~F,D,DF, z

;---------------------------------------------------------------------------
;Aim Master

[Command]
name = "AimL"
command = ~D,DF,F, x

[Command]
name = "AimM"
command = ~D,DF,F, y

[Command]
name = "AimH"
command = ~D,DF,F, z

[Command]
name = "Shield"
command = ~B,F, a

[Command]
name = "Shield"
command = ~B,F, b

[Command]
name = "Shield"
command = ~B,F, c

;---------------------------------------------------------------------------
;Sting Master

[Command]
name = "Sting"
command = ~D,DF,F, a

[Command]
name = "Sting"
command = ~D,DF,F, b

[Command]
name = "Sting"
command = ~D,DF,F, c


;-------------------------------------------------------------------------
;Guard Master

[Command]
name = "GuardL"
command = ~D,DB,B, x

[Command]
name = "GuardM"
command = ~D,DB,B, y

[Command]
name = "GuardH"
command = ~D,DB,B, z


[Command]
name = "Web"
command = ~D,DB,B, a

[Command]
name = "Web"
command = ~D,DB,B, b

[Command]
name = "Web"
command = ~D,DB,B, c
;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

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
name = "FF"
command = x+y
time = 1

[Command]
name = "FF"
command = x+z
time = 1

[Command]
name = "FF"
command = y+z
time = 1

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "XF"
command = z+c
time = 1
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
name = "s"
command = s
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "U"
command = U
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


[Statedef -1]
;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,151]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [152,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6320
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]


;-----------------------------
[State -1, LegionArrowLM]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "LegionArrowLM"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (stateno != 250)
trigger3 = stateno = 1000
trigger4 = stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1001
trigger7 = stateno = 1011
trigger8 = stateno = 1021
trigger9 = stateno = 1221 ;guardmasterH payback
trigger10 = (stateno = 250) && (movehit) ;can cancel S only when hit


;-----------------------------
[State -1, LegionArrowLH]
type = ChangeState
value = 3010
triggerall = !var(59)
triggerall = command = "LegionArrowLH"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (stateno != 250)
trigger3 = stateno = 1000
trigger4 = stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1001
trigger7 = stateno = 1011
trigger8 = stateno = 1021
trigger9 = stateno = 1221 ;guardmasterH payback
trigger10 = (stateno = 250) && (movehit) ;can cancel S only when hit


;-----------------------------
[State -1, LegionArrowMH]
type = ChangeState
value = 3020
triggerall = !var(59)
triggerall = command = "LegionArrowMH"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (stateno != 250)
trigger3 = stateno = 1000
trigger4 = stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1001
trigger7 = stateno = 1011
trigger8 = stateno = 1021
trigger9 = stateno = 1221 ;guardmasterH payback
trigger10 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, LegionArrowLM/Air]
type = ChangeState
value = 3001
triggerall = !var(59)
triggerall = command = "LegionArrowLM"
triggerall = power >= 1000 
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA)
trigger3 = stateno = 1005
trigger4 = stateno = 1015
trigger5 = stateno = 1025
trigger6 = stateno = 1006
trigger7 = stateno = 1016
trigger8 = stateno = 1026
trigger9 = stateno = 271 ;while web swing ground moving 
trigger10 = stateno = 631 ;while web swing air moving 


;-----------------------------
[State -1, LegionArrowLH/Air]
type = ChangeState
value = 3011
triggerall = !var(59)
triggerall = command = "LegionArrowLH"
triggerall = power >= 1000 
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA)
trigger3 = stateno = 1005
trigger4 = stateno = 1015
trigger5 = stateno = 1025
trigger6 = stateno = 1006
trigger7 = stateno = 1016
trigger8 = stateno = 1026
trigger9 = stateno = 271 ;while web swing ground moving 
trigger10 = stateno = 631 ;while web swing air moving 


;-----------------------------
[State -1, LegionArrowMH/Air]
type = ChangeState
value = 3021
triggerall = !var(59)
triggerall = command = "LegionArrowMH"
triggerall = power >= 1000 
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA)
trigger3 = stateno = 1005
trigger4 = stateno = 1015
trigger5 = stateno = 1025
trigger6 = stateno = 1006
trigger7 = stateno = 1016
trigger8 = stateno = 1026
trigger9 = stateno = 271 ;while web swing ground moving 
trigger10 = stateno = 631 ;while web swing air moving 


;-----------------------------
[State -1, AegisCounter]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "AegisCounter"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)
trigger3 = stateno = 1000
trigger4 = stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1001
trigger7 = stateno = 1011
trigger8 = stateno = 1021
trigger9 = stateno = 1221 ;guardmasterH payback
trigger10 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, Backstep]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "FF"
trigger2 = command = "holdback"
triggerall = stateno != 100
triggerall = stateno != 105

;-----------------------------
[State -1, Dash Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 100
triggerall = stateno != 105

;-----------------------------
[State -1, SwordMasterL]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "SwordL"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, SwordMasterM]
type = ChangeState
value = 1310
triggerall = !var(59)
triggerall = command = "SwordM"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, SwordMasterH]
type = ChangeState
value = 1320
triggerall = !var(59)
triggerall = command = "SwordH"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, AimL Air]
type = ChangeState
value = 1005
triggerall = !var(59)
triggerall = command = "AimL"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 601
trigger4 = stateno = 610
trigger5 = stateno = 611
trigger6 = stateno = 620
trigger7 = stateno = 271 ;while web swing ground moving 
trigger8 = stateno = 631 ;while web swing air moving 

;-----------------------------
[State -1, AimM Air]
type = ChangeState
value = 1015
triggerall = !var(59)
triggerall = command = "AimM"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 601
trigger4 = stateno = 610
trigger5 = stateno = 611
trigger6 = stateno = 620
trigger7 = stateno = 271 ;while web swing ground moving 
trigger8 = stateno = 631 ;while web swing air moving 

;-----------------------------
[State -1, AimH Air]
type = ChangeState
value = 1025
triggerall = !var(59)
triggerall = command = "AimH"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 601
trigger4 = stateno = 610
trigger5 = stateno = 611
trigger6 = stateno = 620
trigger7 = stateno = 271 ;while web swing ground moving 
trigger8 = stateno = 631 ;while web swing air moving 

;-----------------------------
[State -1, AimL Ground]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "AimL"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, AimM Ground]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "AimM"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, AimH Ground]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "AimH"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, StingMaster]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = command = "Sting"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, GurdMasterL]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "GuardL"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, GurdMasterM]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = command = "GuardM"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1, GurdMasterH]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = command = "GuardH"
trigger1 = Statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger4 = stateno = 210
trigger5 = stateno = 410
trigger6 = stateno = 220
trigger7 = stateno = 420
trigger8 = stateno = 261
trigger9 = (stateno = 250) && (movehit) ;can cancel S only when hit

;-----------------------------
[State -1,Forward Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command = "holdfwd"
triggerall = Command != "holddown"
triggerall = P2BodyDist X <= 15
triggerall = P2BodyDist Y = 0
triggerall = (StateType != A) && (Ctrl)
triggerall = stateno != 100
trigger1 = p2statetype != A
trigger2 = p2movetype != H

;-----------------------------
[State -1,Back Throw]
type = ChangeState
value = 830
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = Command != "holddown"
triggerall = P2BodyDist X <= 15
triggerall = P2BodyDist Y = 0
triggerall = stateno != 100
triggerall = (StateType != A) && (Ctrl)
trigger1 = p2statetype != A
trigger2 = p2movetype != H

;-----------------------------
[State -1, Air Throw]
type = ChangeState
value = 920;ifelse(random < 300,920,950)
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = Command != "holddown"
triggerall = P2BodyDist X <= 15
triggerall = P2BodyDist Y <= 10
triggerall = p2movetype != H
triggerall = (StateType = A) && (Ctrl)
trigger1 = p2statetype = A
;trigger3 = p2movetype != H

;-----------------------------
[State -1, s]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------
[State -1, ChargingStar]
type = ChangeState
value = 260
triggerall = !var(59)
triggerall = Command = "Shield"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 220) && (Movecontact)
trigger5 = (StateNo = 400) && (Movecontact)
trigger6 = (StateNo = 410) && (Movecontact)
trigger7 = (StateNo = 420) && (Movecontact)



;-----------------------------
[State -1, Web Swing]
type = ChangeState
value = 270
triggerall = !var(59)
triggerall = var(4) = 0
triggerall = Command = "Web"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 220) && (Movecontact)
trigger5 = (StateNo = 400) && (Movecontact)
trigger6 = (StateNo = 410) && (Movecontact)
trigger7 = (StateNo = 420) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------
[State -1, Y]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 400) && (Movecontact)

;-----------------------------
[State -1, Z]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 410) && (Movecontact)

;---------------------------------------------------------------------------
 [State -1, Z]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 230) && (Movecontact)
trigger3 = (StateNo = 240) && (Movecontact)
trigger4 = (StateNo = 430) && (Movecontact)
trigger5 = (StateNo = 440) && (Movecontact)

 [State -1, Z]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 430) && (Movecontact)

 [State -1, Z]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 430) && (Movecontact)

;-----------------------------
[State -1, Crouching L]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
;trigger2 = (StateNo = 200) && (Movecontact)
;trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, Crouching M]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 400) && (Movecontact)

;-----------------------------
[State -1, Crouching H]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 410) && (Movecontact)

[State -1, Crouching H]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 410) && (Movecontact)

[State -1, Crouching H]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 410) && (Movecontact)


[State -1, Crouching H]
type = ChangeState
value = 255
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 410) && (Movecontact)

;-----------------------------
[State -1, Jumping L]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = StateNo = 272 ;web swing ground finished
trigger3 = StateNo = 632 ;web swing air finished

[State -1, Jumping L]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = StateNo = 272 ;web swing ground finished
trigger3 = StateNo = 632 ;web swing air finished


[State -1, Jumping M]
type = ChangeState
value = 611
triggerall = !var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 601) && (Movecontact) && time > 2
trigger4 = StateNo = 272 ;web swing ground finished
trigger5 = StateNo = 632 ;web swing air finished

[State -1, Jumping M]
type = ChangeState
value = 612
triggerall = !var(59)
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 601) && (Movecontact) && time > 2
trigger4 = StateNo = 272 ;web swing ground finished
trigger5 = StateNo = 632 ;web swing air finished
;---------------------------------------------------------------------------
; ƒWƒƒƒ“ƒvL(˜A‘ÅŽž)
; Air L (repeat)
[State -1, Jumping L (repeat)]
type = ChangeState
value = 601
triggerall = command = "x"
triggerall = statetype = A
trigger1 = (stateno = 600) && (Movecontact)


;-----------------------------
[State -1, Jumping M]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 601) && (Movecontact) && time > 2
trigger4 = StateNo = 272 ;web swing ground finished
trigger5 = StateNo = 632 ;web swing air finished



;-----------------------------


;-----------------------------
[State -1, Jumping S]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 601) && (Movecontact)
trigger4 = (StateNo = 610) && (Movecontact)
trigger5 = (StateNo = 611) && (Movecontact)
trigger6 = (StateNo = 620) && (Movecontact)
trigger7 = StateNo = 272

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = Command = "holdup"
trigger1 = stateno = 250 && movehit


;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll
;[State -1]
;type = ChangeState
;value = 900
;triggerall = !var(59)
;triggerall = Var(59) != 2
;triggerall = command = "holdfwd"
;triggerall = time = 1
;triggerall = life > 0
;trigger1 = stateno = 5080

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll
;[State -1]
;type = ChangeState
;value = 910
;triggerall = !var(59)
;triggerall = Var(59) != 2
;triggerall = command = "holdback"
;triggerall = time = 1
;triggerall = life > 0
;trigger1 = stateno = 5080
