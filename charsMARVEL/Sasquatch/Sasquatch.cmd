;edited by armin_iuf
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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Hiper |--------------------------------------------------------

;Hiper Agarrao
[Command]
name = "hiper Agarrao"
command = ~D, DF, F, x+y

[Command]
name = "hiper Agarrao"
command = ~D, DF, F, x+z

[Command]
name = "hiper Agarrao"
command = ~D, DF, F, y+z

;Avalanche
[Command]
name = "Avalanche"
command = ~D, DF, F, a+c
time = 20

;Avalanche
[Command]
name = "Avalanche"
command = ~D, DF, F, c+b
time = 20

;Avalanche
[Command]
name = "Avalanche"
command = ~D, DF, F, a+b
time = 20

;alpha flight
[Command]
name = "alpha"
command = ~D, DB, B, a+c
time = 20

;alpha flight
[Command]
name = "alpha"
command = ~D, DB, B, c+b
time = 20

;alpha flight
[Command]
name = "alpha"
command = ~D, DB, B, a+b
time = 20

;combo
[Command]
name = "combo"
command = ~D, DF, F, x+a
time = 30

;combo
[Command]
name = "combo"
command = ~D, DF, F, y+b
time = 30

;combo
[Command]
name = "combo"
command = ~D, DF, F, z+c
time = 30

;------------------------------------------------------

;Dilacerador
[Command]
name = "Dilacerador"
command = ~D, DB, B, x+y
time = 35

[Command]
name = "Dilacerador"
command = ~D, DB, B, y+z
time = 35

[Command]
name = "Dilacerador"
command = ~D, DB, B, x+z
time = 35


;-| Special Motions |------------------------------------------------------

[Command]
name = "Counter"
command = /B,c

[Command]
name = "Super Jump"
command = D,$U

;-| Special |------------------------------------------------------

;voo mortal
[Command]
name = "voo mortal x"
command = ~D, DB, B, a
time = 30

[Command]
name = "voo mortal y"
command = ~D, DB, B, b
time = 30

[Command]
name = "voo mortal z"
command = ~D, DB, B, c
time = 30


;Special Garras
[Command]
name = "Special Garras"
command = ~D, DF, F, x
time = 20

[Command]
name = "Special Garras"
command = ~D, DF, F, y
time = 20

[Command]
name = "Special Garras"
command = ~D, DF, F, z
time = 20

;Boulder
[Command]
name = "Boulder"
command = ~D, DF, F, a
time = 20

;Boulder
[Command]
name = "Boulder"
command = ~D, DF, F, b
time = 20

;Boulder
[Command]
name = "Boulder"
command = ~D, DF, F,c
time = 20

[Command]
name = "quebra-espinha"
command = ~D, DB, B, x
time = 20
[Command]
name = "quebra-espinha"
command = ~D, DB, B, y
time = 20
[Command]
name = "quebra-espinha"
command = ~D, DB, B, z
time = 20

;----|Basic Motions|---------------------------------------


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

;---|Hold Buttons|------------------------

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
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

;AIset---------------------------------------------------------------------
[Command]
name = "cpu"
command = F,F,F,F
time = 1

[Command]
name = "cpu1"
command = F,F,F,D
time = 1

[Command]
name = "cpu2"
command = F,F,D,D
time = 1

[Command]
name = "cpu3"
command = F,D,D,D
time = 1

[Command]
name = "cpu4"
command = D,D,D,D
time = 1

[Command]
name = "cpu5"
command = D,D,D,U
time = 1

[Command]
name = "cpu6"
command = D,D,U,U
time = 1

[Command]
name = "cpu7"
command = D,U,U,U
time = 1

[Command]
name = "cpu8"
command = U,U,U,U
time = 1

[Command]
name = "cpu9"
command = U,U,U,B
time = 1

[Command]
name = "cpu10"
command = U,U,B,B
time = 1

[Command]
name = "cpu11"
command = U,B,B,B
time = 1

[Command]
name = "cpu12"
command = B,B,B,B
time = 1

[Command]
name = "cpu13"
command = D,D,F,U
time = 1

[Command]
name = "cpu14"
command = D,U,B,U
time = 1

[Command]
name = "cpu15"
command = B,U,D,D
time = 1

[Command]
name = "cpu16"
command = U,F,F,B
time = 1

[Command]
name = "cpu17"
command = U,U,D,F
time = 1

[Command]
name = "cpu18"
command = D,F,B,B
time = 1

[Command]
name = "cpu19"
command = D,B,B,U
time = 1

[Command]
name = "cpu20"
command = F,U,D,B
time = 1

[Command]
name = "cpu21"
command = B,F,F,B
time = 1

[Command]
name = "cpu22"
command = F,B,B,F
time = 1

[Command]
name = "cpu23"
command = B, D, U, F
time = 1
[Command]
name = "cpu24"
command = B, F, U, D
time = 1
[Command]
name = "cpu25"
command = F, F, D, U
time = 1
[Command]
name = "cpu26"
command = U, D, B, U
time = 1
[Command]
name = "cpu27"
command = D, D, U, U
time = 1
[Command]
name = "cpu28"
command = U, D, D, F
time = 1
[Command]
name = "cpu29"
command = D, U, B, F
time = 1
[Command]
name = "cpu30"
command = U, U, U
time = 1
[Command]
name = "cpu31"
command = U, U, D
time = 1
[Command]
name = "cpu32"
command = U, U, B
time = 1
[Command]
name = "cpu33"
command = U, D, F
time = 1
[Command]
name = "cpu34"
command = D, U, B
time = 1
[Command]
name = "cpu35"
command = B, U, B
time = 1
[Command]
name = "cpu36"
command = U, D, D
time = 1
[Command]
name = "cpu37"
command = D, U, U, U, D
time = 1
[Command]
name = "cpu38"
command = F, D, U
time = 1
[Command]
name = "cpu39"
command = D, B, D
time = 1
[Command]
name = "cpu40"
command = D, F, U, D
time = 1
[Command]
name = "cpu41"
command = D, U, D, U, D
time = 1
[Command]
name = "cpu42"
command = U, F, U, D
time = 1
[Command]
name = "cpu43"
command = U, D, F, U, U
time = 1
[Command]
name = "cpu44"
command = U, U, U, U, U, U, U
time = 1
[Command]
name = "cpu45"
command = B, B, B
time = 1
[Command]
name = "cpu46"
command = F, U, D, U
time = 1
[Command]
name = "cpu47"
command = D, D, F, D, D, U
time = 1




[Statedef -1]


[State -1, AISET]
type = varset
triggerALL = !var(59)
trigger1 = command="cpu1"
trigger2 = command="cpu2"
trigger3 = command="cpu3"
trigger4 = command="cpu4"
trigger5 = command="cpu5"
trigger6 = command="cpu6"
trigger7 = command="cpu7"
trigger8 = command="cpu8"
trigger9 = command="cpu9"
trigger10 = command="cpu10"
trigger11 = command="cpu11"
trigger12 = command="cpu12"
trigger13 = command="cpu13"
trigger14 = command="cpu14"
trigger15 = command="cpu15"
trigger16 = command="cpu16"
trigger17 = command="cpu17"
trigger18 = command="cpu18"
trigger19 = command="cpu19"
trigger20 = command="cpu20"
trigger21 = command="cpu21"
trigger22 = command="cpu22"
trigger23 = command="cpu23"
trigger24 = command="cpu24"
trigger25 = command="cpu25"
trigger26 = command="cpu26"
trigger27 = command="cpu27"
trigger28 = command="cpu28"
trigger29 = command="cpu29"
trigger30 = command="cpu30"
trigger31 = command="cpu31"
trigger32 = command="cpu32"
trigger33 = command="cpu33"
trigger34 = command="cpu34"
trigger35 = command="cpu35"
trigger36 = command="cpu36"
trigger37 = command="cpu37"
trigger38 = command="cpu38"
trigger39 = command="cpu39"
trigger40 = command="cpu40"
trigger41 = command="cpu41"
trigger42 = command="cpu42"
trigger43 = command="cpu43"
trigger44 = command="cpu44"
trigger45 = command="cpu45"
trigger46 = command="cpu46"
trigger47 = command="cpu47"
var(59)=1


;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------
;----------------------------------------------------------------

;===========================================================================
;===========================================================================

;-----------------------------------------------------

;voo mortal
[State -1,AI voo mortal]
type = ChangeState
value = 2100
triggerall = var(59)
triggerall = RoundState = 2
triggerall = StateType = S
triggerall = P2StateType = S || P2StateType = C
triggerall = P2MoveType != H
triggerall = P2stateno != 40 && P2stateno != [120,153]
trigger1 = P2BodyDist X = (0,70)
trigger1 = Random <= 100
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveHit
trigger3 = Stateno = 205 && MoveHit
trigger4 = Stateno = 220 && MoveHit
trigger5 = Stateno = 400 && MoveContact
trigger6 = Stateno = 101

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = random < 300
triggerall = statetype = S
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded

; Dilacerador
[State -1, AI Dilacerador]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2statetype = A
triggerall = P2bodydist X <= 150
triggerall = stateno != 3000 || stateno != 3001 || stateno != 3050 || stateno != 3051
triggerall = ctrl = 1
trigger1 = random <= 50
trigger1 = P2movetype != H
trigger2 = P2bodydist X > 5
trigger2 = random <= 300
trigger2 = P2movetype != H
trigger3 = P2movetype = H
trigger3 = P2bodydist X > 5 && P2bodydist X <= 150
trigger3 = P2bodydist Y <= -80
trigger3 = random <= 300
trigger4 = stateno = 700 || stateno = 705 || stateno = 710 || stateno = 715
trigger4 = P2bodydist X < 150
trigger4 = p2statetype = A
trigger4 = random < 600
trigger5 = stateno = 10050
trigger5 = AnimElem = 23, >=0
trigger5 = P2movetype = H
trigger5 = random < 600

;===========================================================================
;===========================================================================

; Special Garras
[State -1, Special Garras]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl && p2bodydist x < 40
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype = A && random < 200

;----------------------------------------------------------

[State -1, Boulder]
type = ChangeState
value = 1250
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 60
triggerall =  -90 <= p2bodydist y <= -20+var(7)
triggerall = random < 100-50*(prevstateno = 1250)
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)


;-------------------------------------------------

;AI quebra-espinha
[State -1]
type = changestate
value = 1500
triggerall = var(59)
triggerall = (roundstate != [0,1]) || (roundstate != [3,4])
triggerall = StateType != A && MoveType != H && p2life!= 0
triggerall = ctrl
triggerall = P2BodyDist X = [30,100]
triggerall = P2BodyDist Y <= -20
triggerall = p2movetype != H
trigger1 = p2movetype = A
trigger1 = random < 989
trigger2 = p2statetype = A
trigger2 = random < 989


;------------------------------------------------------------------------

[State -1, combo]
type = ChangeState
value = 2300
triggerall = var(59)
triggerall = power >= 2000 && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [300,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 500


; hiper Agarrao (Hook & Chain Hyper)
[State -1, hiper Agarrao]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = power >= 1000 && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [300,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 500



;---------------------------------------------------



;------------------------------------------

;----------------------------------------------

[State -1, Avalanche]
type = ChangeState
value = 3080
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500])
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X = [10,150]
triggerall =  p2bodydist y > -240
triggerall = random < 100
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)


;===========================================================================

; alpha
[State -1, alpha]
type = ChangeState
value = 2200
trigger1 = !var(59)
triggerall = power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = ctrl = 1
trigger1 = command = "alpha"
trigger2 = var(59)

; combo
[State -1, combo]
type = ChangeState
value = 2300
trigger1 = !var(59)
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = ctrl = 1
trigger1 = command = "combo"

; hiper Agarrao (Hook & Chain Hyper)
[State -1, hiper Agarrao]
type = ChangeState
value = 2000
triggerall = !var(59)
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "hiper Agarrao"


;Dilacerador
[State -1, Dilacerador]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Dilacerador"
triggerall = power >= 1000
triggerall = stateno != 5200 || stateno != 5210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 310
trigger2 = AnimElem = 7, >0
trigger3 = stateno = 10050
trigger3 = AnimElem = 22, >2
trigger4 = stateno = 310
trigger4 = AnimElem = 6, >2

;Avalanche
[State -1, Avalanche]
type = ChangeState
value = 3080
triggerall = !var(59)
triggerall = command = "Avalanche"
triggerall = power >= 1000
triggerall = var(20) != 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact && StateNo = 250
trigger3 = MoveContact && StateNo = 420
trigger4 = MoveContact && StateNo = 450

;===========================================================================

; voo mortal
[State -1, voo mortal]
type = ChangeState
value = 2100
triggerall = !var(59)
triggerall = command = "voo mortal x" || command = "voo mortal y"|| command = "voo mortal z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && AnimElem = 4,>=0
trigger3 = Stateno = 205 && MoveContact
trigger4 = Stateno = 215 && MoveContact
trigger5 = Stateno = 220 && MoveContact
trigger6 = Stateno = 250 && AnimElem = 6,>=1
trigger7 = Stateno = 400 && MoveContact
trigger8 = Stateno = 101

; Special Garras
; Special1
[State -1, Special Garras]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Special Garras")
;---------------------------------------------------------------------------

; Boulder
[State -1, Boulder]
type = ChangeState
value = 1250
triggerall = !var(59)
triggerall = command = "Boulder"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;----------------------------------------------------------------

; quebra-espinha
[State -1, quebra-espinha]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command ="quebra-espinha"
triggerall = statetype != A
triggerall = var(20) != 20
trigger1 = ctrl = 1


;-----------------------------------------------------------------------------



;-----------------------------------------------



;-------------------------------------------------------



;---------------------------------------------------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"

;---------------------------------------------------------------------------

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "x" && command = "y"


;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "z"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, overhead atk]
type = ChangeState
value = 590
triggerall = !var(59)
triggerall = command = "y" && command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590


;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200


;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact


;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500


;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [500,509])&& movecontact


;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [500,509])&& movecontact


;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [500,509])&& movecontact


;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [500,509])&& movecontact


;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [300,319])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [500,519])&& movecontact


;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [300,349])&& movecontact
trigger4 = (stateno = [300,349])&& movecontact
trigger5 = (stateno = [300,349])&& movecontact


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [300,319])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [500,519])&& movecontact


;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [300,349])&& movecontact
trigger4 = (stateno = [300,349])&& movecontact
trigger5 = (stateno = [300,349])&& movecontact


;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = ChangeState
value = 8018
triggerall = !var(59)
triggerall = command = "c" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 8018



;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600


;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact


;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [700,709])&& movecontact


;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [700,709])&& movecontact


;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [700,719])&& movecontact


;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger3 = (stateno = [700,749])&& movecontact

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = !var(59)
triggerall = statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = stateno = 420

;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 7970
triggerall = !var(59)
triggerall = command = "Counter"
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1


;---------------------------------------------------------------------------


[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]) ;&& !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120

[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno != 100
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = p2movetype != A
trigger1 = p2bodydist X > 100
trigger1 = random <= 50

[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != 105
triggerall = backedgedist > 70
triggerall = statetype != A
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120
triggerall = random <= 200

[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = p2bodydist X = [0,90]
triggerall =  -85 <= p2bodydist y <= -85+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 500
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2bodydist X = [0,75]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != A  && ctrl && random < 500
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500


;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2bodydist X = [0,65]
trigger1 = p2bodydist y = [-5,5]
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X = [0,100]
;triggerall =  -50 <= p2bodydist y <= -50+var(7)
triggerall = p2bodydist y = [-5,5]
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400


;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = p2bodydist X = [0,130]
triggerall =  -95 <= p2bodydist y <= -95+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 400
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, over head atk]
type = ChangeState
value = 590
triggerall = var(59)
triggerall = p2bodydist X = [4,70]
triggerall =  -40 <= p2bodydist y <= -40+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 100 + 100*(p2statetype = C)
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != L
trigger1 = ctrl && random < 300
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,110]
triggerall =  -65 <= p2bodydist y <= -65+var(7)
;triggerall = p2bodydist y = [-5,5]
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 200
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310
trigger4 = var(17) = 5 && stateno = 52 && random < 200

;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = Statetype != A
triggerall = p2bodydist X = [0,100]
triggerall = p2bodydist y = [-5,5]
trigger1 = random < 300
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410
trigger4 = var(17) = 5 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,20+40*(enemynear,statetype = A)]
triggerall = p2bodydist y = [-150,5]
trigger1 = ctrl && p2movetype != A
trigger1 = p2statetype != L && random < 250
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 320
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,180]
trigger1 = ctrl && p2movetype != A
trigger1 = p2statetype != L && random < 200
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 220
trigger5 = var(17) = 6 && stateno = 52 && random < 200

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
triggerall =  -75 <= p2bodydist y <= -75+var(7)
trigger1 = p2statetype != L && ctrl  && random < 250
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 520
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,90]
trigger1 = p2movetype != A
trigger1 = p2statetype != L && ctrl  && random < 250 
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 420
trigger5 = var(17) = 6 && stateno = 52 && random < 200

[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59)
trigger1 = p2bodydist X <= 80
trigger1 = statetype = A && ctrl
trigger1 = var(8) = [-25,25] 
trigger1 = random < 400
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 300
trigger1 = var(8) = [-25,25]
trigger1 = p2bodydist X = [0,90]
trigger2 = var(17) = 5 && var(19) = var(36) && random < 300
trigger2 = stateno != 700


;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)
triggerall = p2bodydist X = [0,90]
trigger1 = statetype = A && ctrl && random < 300
trigger1 = var(8) = [-25,25]
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610



;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 200
trigger1 = var(8) = [-25,25]
trigger1 = p2bodydist X = [0,90]
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710



;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59)
triggerall = var(8) = [-25,25]
trigger1 = p2bodydist X = [0,90]
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 620



;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = var(59)
triggerall = var(8) = [30,50+40*(p2statetype != A)]
triggerall = p2bodydist X = [0,90]
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 720


