; The CMD file.

; If new_button is left blank, the button cannot be pressed.
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

;-| CPU |--------------------------------------------------------------
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

;-| Super Motions |--------------------------------------------------------

[command]
name = "telekinetic shield"
command = ~D, DB, B,D, DB, B, x

[command]
name = "telekinetic shield"
command = ~D, DB, B,D, DB, B, y

[command]
name = "telekinetic shield"
command = ~D, DB, B,D, DB, B, z

[command]
name = "telepahthy"
command = ~D, DF, F, D, DF, F, x

[command]
name = "telepahthy"
command = ~D, DF, F, D, DF, F, y

[command]
name =  "telepahthy"
command = ~D, DF, F, D, DF, F, z

[command]
name =  "telekinesis"
command = ~D, DF, F, D, DF, F, a

[command]
name = "telekinesis"
command = ~D, DF, F, D, DF, F, b

[command]
name = "telekinesis"
command = ~D, DF, F, D, DF, F, c

[command]
name =  "Phoenix"
command = ~D, DB, B,D, DB, B, a

[command]
name = "Phoenix"
command = ~D, DB, B,D, DB, B, b

[command]
name = "Phoenix"
command = ~D, DB, B,D, DB, B, c

[command]
name = "Celestial"
command = ~D,DB,B,DB,D,DF,F, x

[command]
name = "Celestial"
command = ~D,DB,B,DB,D,DF,F, y

[command]
name = "Celestial"
command = ~D,DB,B,DB,D,DF,F, z

[command]
name = "Celestial"
command = ~D,B,D,F, x

[command]
name = "Celestial"
command = ~D,B,D,F, y

[command]
name = "Celestial"
command = ~D,B,D,F, z

[command]
name = "Astral"
command = ~D,DB,B,DB,D,DF,F, a

[command]
name = "Astral"
command = ~D,DB,B,DB,D,DF,F, b

[command]
name = "Astral"
command = ~D,DB,B,DB,D,DF,F, c

[command]
name = "Astral"
command = ~D,B,D,F, a

[command]
name = "Astral"
command = ~D,B,D,F, b

[command]
name = "Astral"
command = ~D,B,D,F, c


;-| Special Motions |------------------------------------------------------

[command]
name = "Tele-ShotX"
command = ~D, DF, F, x

[command]
name = "Tele-ShotY"
command = ~D, DF, F, y

[command]
name = "Tele-ShotZ"
command = ~D, DF, F, z

[command]
name = "Tele-ShotEX"
command = ~D, DF, F, x+y

[command]
name = "Tele-ShotEX"
command = ~D, DF, F, y+z

[command]
name = "Tele-ShotEX"
command = ~D, DF, F, x+z

[command]
name = "TK waveA"
command = ~D, DF, F, a

[command]
name = "TK waveB"
command = ~D, DF, F, b

[command]
name = "TK waveC"
command = ~D, DF, F, c

[command]
name = "Firebird"
command = ~D, DF, F, a

[command]
name = "Firebird"
command = ~D, DF, F, b

[command]
name = "Firebird"
command = ~D, DF, F, c

[command]
name = "TK Hold"
command = ~D, DB, B, a

[command]
name = "TK Hold"
command = ~D, DB, B, b

[command]
name = "TK Hold"
command = ~D, DB, B, c

[command]
name = "Empathy"
command = ~D, DB, B, x

[command]
name = "Empathy"
command = ~D, DB, B, y

[command]
name = "Empathy"
command = ~D, DB, B, z

[command]
name = "Teleport_A"
command = ~D, D, a

[command]
name = "Teleport_B"
command = ~D, D, b

[command]
name = "Teleport_C"
command = ~D, D, c

[command]
name = "Trap_X"
command = ~D, D, x

[command]
name = "Trap_Y"
command = ~D, D, y

[command]
name = "Trap_Z"
command = ~D, D, z

[command]
name = "Trap_EX"
command = ~D, D, x+y

[command]
name = "Trap_EX"
command = ~D, D, x+z

[command]
name = "Trap_EX"
command = ~D, D, z+y

[Command]
name = "Upper_X"
command = ~F, D, F, x

[Command]
name = "Upper_Y"
command = ~F, D, F, y

[Command]
name = "Upper_Z"
command = ~F, D, F, z

[Command]
name = "Upper_X"
command = ~F, D, DF, x

[Command]
name = "Upper_Y"
command = ~F, D, DF, y

[Command]
name = "Upper_Z"
command = ~F, D, DF, z

[Command]
name = "Upper_EX"
command = ~F, D, F, x+y

[Command]
name = "Upper_EX"
command = ~F, D, DF, x+y

[Command]
name = "Upper_EX"
command = ~F, D, F, x+z

[Command]
name = "Upper_EX"
command = ~F, D, DF, x+z

[Command]
name = "Upper_EX"
command = ~F, D, F, y+z

[Command]
name = "Upper_EX"
command = ~F, D, DF, y+z

[Command]
name = "FBP_X"
command = ~D, B, x

[Command]
name = "FBP_Y"
command = ~D, B, y

[Command]
name = "FBP_Z"
command = ~D, B, z

[Command]
name = "FBP_X"
command = ~D, DB, B, x

[Command]
name = "FBP_Y"
command = ~D, DB, B, y

[Command]
name = "FBP_Z"
command = ~D, DB, B, z

[Command]
name = "FBP_EX"
command = ~D, B, x+y

[Command]
name = "FBP_EX"
command = ~D, DB, B, x+y

[Command]
name = "FBP_EX"
command = ~D, B, x+z

[Command]
name = "FBP_EX"
command = ~D, DB, B, x+z

[Command]
name = "FBP_EX"
command = ~D, B, y+z

[Command]
name = "FBP_EX"
command = ~D, DB, B, y+z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[command]
name = "DU"
command = $D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[command]
name = "superjump"     ;required (do not remove)
command = a+b+c
time = 1

[Command]
name = "guardpush"
command = F, F
time = 1

[Command]
name = "guardpush"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
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

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
;------------------------------- HYPERS (MENTAL) ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; hyper 1
[state -1, hyper telekinetic shield]
type = changestate
value = 3000
triggerall = var(20) = 0
triggerall = command = "telekinetic shield"
triggerall = power >= 2000
triggerall = !var(59)
triggerall = numhelper(3001) = 0
trigger1 = (statetype != a) && ctrl

;--------------------------------------------------------------------------
; hyper 2
[state -1, hyper telekinetic beam]
type = changestate
value = 3100
triggerall = var(20) = 0
triggerall = command = "telepahthy"
triggerall = power >= 1000
triggerall = !var(59)
triggerall = numhelper(3102) = 0
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; hyper 3
[state -1, Hyper Telekinesis]
type = changestate
value = 3200
triggerall = var(20) = 0
triggerall = command = "telekinesis"
triggerall = power >= 1000
triggerall = !var(59)
triggerall = numhelper(3201) = 0
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; hyper 4
[State -1, Phoenix Unleashing]
type = ChangeState
value = 3400
triggerall = var(20) = 0
triggerall = Command = "Phoenix" && power >= 3000
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA, SP) && (MoveContact)
trigger3 = (stateno = [1000,1099])

;---------------------------------------------------------------------------
; hyper 5
[State -1, The Astral Plane Endsong]
type = ChangeState
value = 4000
triggerall = var(20) = 0
triggerall = Command = "Astral" && power >= 3000 && Life <= 200
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
;------------------------------- HYPERS (FLAMES) ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; hyper 1
[state -1, Meteor Shower]
type = changestate
value = 3800
triggerall = var(20) = 1
triggerall = command = "telekinesis"
triggerall = power >= 1000
triggerall = !var(59)
triggerall = numhelper(3801) = 0
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; hyper 2
[state -1, Phoenix Shin Upper]
type = changestate
value = 3500
triggerall = var(20) = 1
triggerall = command = "telepahthy"
triggerall = power >= 1000
triggerall = !var(59)
trigger1 = (statetype != a) && ctrl
trigger2 = numtarget(212)
trigger3 = (stateno = 211) && (movecontact)
trigger4 = (stateno = 221) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 430) && (movecontact)
trigger9 = (stateno = 440) && (movecontact)
trigger10 = (stateno = 451) && (movecontact)

;---------------------------------------------------------------------------
; hyper 3
[state -1, Power Seal]
type = changestate
value = 3600
triggerall = var(20) = 1
triggerall = command = "telekinetic shield"
triggerall = power >= 2000
triggerall = !var(59)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; hyper 1
[state -1, Celestial Flame]
type = changestate
value = ifelse(var(20)=1,3901,3900)
triggerall = command = "Celestial"
triggerall = power >= 2000
triggerall = !var(59)
triggerall = numhelper(3801) = 0
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; hyper 4
[state -1, Phoenix Destruction]
type = changestate
value = 3700
triggerall = var(20) = 1
triggerall = command = "Phoenix"
triggerall = power >= 3000
triggerall = !var(59)
triggerall = numhelper(3801) = 0
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
;------------------------------- SPECIALS (MENTAL) -------------------------
;---------------------------------------------------------------------------

;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 780
triggerall = command = "holdz" && command = "holdc"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; special 1
[State -1, TK Hold]
type = ChangeState
value = 1000
triggerall = var(20) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "TK Hold"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)


;---------------------------------------------------------------------------
; special 2
[state -1, special telekinetic wave]
type = changestate
value = 1200
triggerall = var(20) = 0
triggerall = command = "TK waveA"
;triggerall = !var(59)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 2
[state -1, special telekinetic wave]
type = changestate
value = 1202
triggerall = var(20) = 0
triggerall = command = "TK waveB"
;triggerall = !var(59)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 2
[state -1, special telekinetic wave]
type = changestate
value = 1204
triggerall = var(20) = 0
triggerall = command = "TK waveC"
;triggerall = !var(59)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 3
[state -1, Psychosis]
type = changestate
value = 1900
triggerall = var(20) = 0
triggerall = command = "Empathy"
triggerall = command != "FBP_EX"
triggerall = !numhelper(1901)
triggerall = !numhelper(1902)
triggerall = !numhelper(1903)
triggerall = !numhelper(1904)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 4
[state -1, Empathy]
type = changestate
value = 1100
triggerall = var(20) = 0
triggerall = command = "Upper_X" || command = "Upper_Y" || command = "Upper_Z"
triggerall = command != "Upper_EX"
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 5
[state -1, Teleport]
type = changestate
value = 1300
triggerall = command = "Teleport_A"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 5
[state -1, Teleport]
type = changestate
value = 1300
triggerall = command = "Teleport_B"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 5
[state -1, Teleport]
type = changestate
value = 1300
triggerall = command = "Teleport_C"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;------------------------------- SPECIALS (EX) -----------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; special 1
[state -1, EX Phoenix Upper]
type = changestate
value = 1520
triggerall = var(20) = 0
triggerall = command = "Upper_EX"
triggerall = power >= 500
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 2
[state -1, EX Firebird Punch]
type = changestate
value = 1830
triggerall = var(20) = 0
triggerall = command = "FBP_EX"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, EX TK Shot]
type = changestate
value = 11060
triggerall = command = "Tele-ShotEX"
triggerall = command != "Celestial"
triggerall = var(20) = 1
triggerAll = power >= 500
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 4
[state -1, EX Psychosis]
type = changestate
value = 1910
triggerall = var(20) = 1
triggerall = command = "FBP_EX"
triggerall = power >= 500
triggerall = !var(11)
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------
; special 5
[state -1, EX Mirror Image]
type = changestate
value = 1610
triggerall = var(20) = 1
triggerall = command = "Trap_EX"
triggerall = power >= 500
triggerAll = !NumHelper(1602)
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;------------------------------- SPECIALS (FLAMES) -------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; special 2
[state -1, TK Shot - light]
type = changestate
value = 1103
triggerall = command = "Tele-ShotX"
triggerall = command != "Tele-ShotEX"
triggerall = command != "Celestial"
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 2
[state -1, TK Shot - medium]
type = changestate
value = 1104
triggerall = command = "Tele-ShotY"
triggerall = command != "Tele-ShotEX"
triggerall = command != "Celestial"
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 2
[state -1, TK Shot - hard]
type = changestate
value = 1105
triggerall = command = "Tele-ShotZ"
triggerall = command != "Tele-ShotEX"
triggerall = command != "Celestial"
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 4
[state -1, air psychic spikes - light]
type = changestate
value = 1110
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
triggerall = command = "Tele-ShotX"
trigger1 = (statetype = a) && ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 4
[state -1, air psychic spikes - medium]
type = changestate
value = 1111
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
triggerall = command = "Tele-ShotY"
trigger1 = (statetype = a) && ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 4
[state -1, air psychic spikes - hard]
type = changestate
value = 1112
triggerAll = NumHelper(1106) = 0
triggerAll = NumHelper(1107) = 0
triggerAll = NumHelper(1108) = 0
triggerAll = NumHelper(1109) = 0
triggerAll = NumHelper(1116) = 0
triggerAll = NumHelper(1117) = 0
triggerAll = NumHelper(1118) = 0
triggerAll = NumHelper(1119) = 0
triggerall = command = "Tele-ShotZ"
trigger1 = (statetype = a) && ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 6
[state -1, Mirror Image / Phoenix Trap]
type = changestate
value = ifelse(var(20)=1,1400,1600)
triggerall = command = "Trap_X" || command = "Trap_Y" || command = "Trap_Z"
triggerall = command != "Trap_EX"
triggerAll = NumHelper(1401) < 3
triggerAll = NumHelper(1402) < 3
triggerAll = NumHelper(1403) < 3
triggerAll = NumHelper(1404) < 3
triggerAll = NumHelper(1107) < 3
triggerAll = NumHelper(1108) < 3
triggerAll = NumHelper(1109) < 3
triggerAll = !NumHelper(1601)
trigger1 = (statetype != a) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 230) && (movecontact)
trigger5 = (stateno = 240) && (movecontact)
trigger6 = (stateno = 400) && (movecontact)
trigger7 = (stateno = 410) && (movecontact)
trigger8 = (stateno = 430) && (movecontact)
trigger9 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; special 3
[state -1, Light Phoenix Upper]
type = changestate
value = 1500
triggerall = var(20) = 1
triggerall = command = "Upper_X"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, Medium Phoenix Upper]
type = changestate
value = 1500
triggerall = var(20) = 1
triggerall = command = "Upper_Y"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, Hard Phoenix Upper]
type = changestate
value = 1510
triggerall = var(20) = 1
triggerall = command = "Upper_Z"
trigger1 = (statetype != a) && ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, Light Firebird Punch]
type = changestate
value = 1800
triggerall = var(20) = 1
triggerall = command = "FBP_X"
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, Medium Firebird Punch]
type = changestate
value = 1810
triggerall = var(20) = 1
triggerall = command = "FBP_Y"
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 3
[state -1, Heavy Firebird Punch]
type = changestate
value = 1820
triggerall = var(20) = 1
triggerall = command = "FBP_Z"
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 1
[State -1, Firebird Stance (Forward)]
type = ChangeState
value = 1700
triggerall = var(20) = 1
triggerall = (MoveType != H) && !Var(59)
triggerall = command = "Firebird"
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;---------------------------------------------------------------------------
; special 1
[State -1, Firebird Stance (Backward)]
type = ChangeState
value = 1701
triggerall = var(20) = 1
triggerall = (MoveType != H) && !Var(59)
triggerall = command = "TK Hold"
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

;============================================================================
;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "superjump") && (Ctrl)
; trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
; Guard Push Stand
[State -1, Guard Push Stand]
type = ChangeState
value = 160
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,151]

;---------------------------------------------------------------------------
; Guard Push Crouch
[State -1, Guard Push Crouch]
type = ChangeState
value = 161
triggerall = command = "guardpush"
triggerall = statetype = C
trigger1 = stateno = [152,153]

;---------------------------------------------------------------------------
; Guard Push Air
[State -1, Guard Push Air]
type = ChangeState
value = 162
triggerall = command = "guardpush"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
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

;===========================================================================
;---------------------------------------------------------------------------
; Mode Change
[State -1, Mode Change]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = ifelse(var(20)=1,201,200)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = ifelse(var(20)=1,211,210)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 230) && (movecontact)
trigger5 = (stateno = 240) && (movecontact)

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse(var(20)=1,221,220)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 211) && (helper(212),Movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 240) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 430) && (movecontact)
trigger11 = (stateno = 440) && (movecontact)


;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 211) && (helper(212),Movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 400) && (movecontact)
trigger8 = (stateno = 410) && (movecontact)
trigger9 = (stateno = 430) && (movecontact)
trigger10 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 211) && (helper(212),Movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 400) && (movecontact)
trigger8 = (stateno = 410) && (movecontact)
trigger9 = (stateno = 430) && (movecontact)
trigger10 = (stateno = 440) && (movecontact)
; 
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = ifelse(var(20)=1,411,410)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 211) && (helper(212),Movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 400) && (movecontact)
trigger8 = (stateno = 410) && (movecontact)
trigger9 = (stateno = 430) && (movecontact)
trigger10 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 400) && (movecontact)
trigger7 = (stateno = 410) && (movecontact)
trigger8 = (stateno = 430) && (movecontact)
trigger9 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; (Flames) Crouching Strong Punch
[State -1, Flame Crouching Strong Punch]
type = ChangeState
value = 421
triggerall = var(20) = 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 211) && (helper(212),Movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 400) && (movecontact)
trigger8 = (stateno = 410) && (movecontact)
trigger9 = (stateno = 411) && (movecontact)
trigger10 = (stateno = 430) && (movecontact)
trigger11 = (stateno = 440) && (movecontact)
trigger12 = (stateno = 451) && (movecontact)

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 400) && (movecontact)

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 211) && (helper(212),Movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 400) && (movecontact)
trigger8 = (stateno = 410) && (movecontact)
trigger9 = (stateno = 411) && (movecontact)
trigger10 = (stateno = 430) && (movecontact)

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(20) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 230) && (movecontact)
trigger5 = (stateno = 400) && (movecontact)
trigger6 = (stateno = 410) && (movecontact)
trigger7 = (stateno = 430) && (movecontact)
trigger8 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; (Flames) Crouching Strong Kick
[State -1, Flame Crouching Strong Kick]
type = ChangeState
value = 451
triggerall = var(20) = 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact)
trigger3 = (stateno = 410) && (movecontact)
trigger4 = (stateno = 411) && (movecontact)
trigger5 = (stateno = 430) && (movecontact)
trigger6 = (stateno = 440) && (movecontact)

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

;---------------------------------------------------------------------------
; Phoenix Dive
[State -1, Phoenix Dive]
type = ChangeState
value = 651
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 630) && (movecontact)
trigger5 = (stateno = 640) && (movecontact)

