; The CMD file.
;                                    _______
; __________________________________/ STORM \____________________________________
;|_______________________________________________________________________________|
;|____________________ By Alucard (alucard_1610@hotmail.com) ____________________|
;                     \_____________________________________/


;-| AvX Motions |--------------------------------------------------------

[Command]
name = "Pause"
command = s
time = 5

[Command]
name = "Taunt"
command = s;~D, DF, F, s
time = 17

[Command]
name = "Taunt"
command = s;~D, DB, B, s
time = 17

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Up"
command = U
time = 5


;-| Hypers Motions |--------------------------------------------------------

;[Command]
;name = "Amalgam"
;command = D DB, B, c+z

;[Command]
;name = "GoldTeam"
;command = D DB, B, x+a

[Command]
name = "lightStorm"
command = D DF, F, x+y

[Command]
name = "lightStorm"
command = D DF, F, x+z

[Command]
name = "lightStorm"
command = D DF, F, z+y

[Command]
name = "lightningstrike"
command = D DF, F, a+b
time = 20

[Command]
name = "lightningstrike"
command = D DF, F, a+c
time = 20

[Command]
name = "lightningstrike"
command = D DF, F, c+b
time = 20

[Command]
name = "hailstorm"
command = D DB, B, x+y

[Command]
name = "hailstorm"
command = D DB, B, x+z

[Command]
name = "hailstorm"
command = D DB, B, z+y

[Command]
name = "hypertornado"
command = ~B, D, B, x+y
time = 20

[Command]
name = "hypertornado"
command = ~B, D, B, x+z
time = 20

[Command]
name = "hypertornado"
command = ~B, D, B, z+y
time = 20

;[Command]
;name = "icestorm"
;command = D DB, B, x+a;D, DB, B, a+b

[Command]
name = "rainstorm"
command = D, DB, B, a+b

[Command]
name = "rainstorm"
command = D, DB, B, c+b

[Command]
name = "rainstorm"
command = D, DB, B, c+a


;-| Special Motions |------------------------------------------------------

[Command]
name = "Flying"
command = D, DB, B, a;+b
time = 20

[Command]
name = "Flying"
command = D, DB, B, b;a+c
time = 20

[Command]
name = "Flying"
command = D, DB, B, c;b+c
time = 20

[Command]
name = "lightningattack"
command = ~B, F, x

[Command]
name = "lightningattack"
command = ~B, F, y

[Command]
name = "lightningattack"
command = ~B, F, z

[Command]
name = "typhoonx"
command = D, DF, F, x

[Command]
name = "typhoony"
command = D, DF, F, y

[Command]
name = "typhoonz"
command = D, DF, F, z

[Command]
name = "Electricballx"
command = ~F, D, DF, x
time = 25

[Command]
name = "Electricball"
command = ~F, D, DF, y
time = 25

[Command]
name = "Electricball"
command = ~F, D, DF, z
time = 25

[Command]
name = "uptyphoonx"
command = D, DB, B, x

[Command]
name = "uptyphoony"
command = D, DB, B, y

[Command]
name = "uptyphoonz"
command = D, DB, B, z

[Command]
name = "superjump"
command = $D, $U

[Command]
name = "Helper1"
command = a+x
time = 1

[Command]
name = "wind"
command = ~B, F, a

[Command]
name = "wind"
command = ~B, F, b

[Command]
name = "wind"
command = ~B, F, c

[Command]
name = "Thunder"
command = D, DF, F, a
time = 25

[Command]
name = "Thunder"
command = D, DF, F, b
time = 25

[Command]
name = "Thunder"
command = D, DF, F, c
time = 25

[Command]
name = "recoveryroll"
command = ~B, DB, D, a

[Command]
name = "recoveryroll"
command = ~B, DB, D, b

[Command]
name = "recoveryroll"
command = ~B, DB, D, c

[Command]
name = "infinitycounter"
command = ~B, DB, D, x

[Command]
name = "infinitycounter"
command = ~B, DB, D, y

[Command]
name = "infinitycounter"
command = ~B, DB, D, z
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

;[Command]
;name = "recovery"
;command = a+b
;time = 1

;[Command]
;name = "recovery"
;command = b+c
;time = 1

;[Command]
;name = "recovery"
;command = a+c
;time = 1

[Command]
name = "TwoPunch"
command = x+y
time = 1
[Command]
name = "TwoPunch"
command = x+z
time = 1
[Command]
name = "TwoPunch"
command = y+z
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1


;for Lightning Attack
[Command] 
name = "holdupfwd2"
command = /UF
time = 1

[Command]
name = "holddownfwd2"
command = /DF
time = 1

[Command]
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2" ;Required (do not remove)
command = /D
time = 1

[Command]
name = "holdfwd2" ;Required (do not remove)
command = /F
time = 1

[Command]
name = "holdback2" ;Required (do not remove)
command = /B
time = 1

[Command]
name = "holdupback2"
command = /UB
time = 1

[Command]
name = "holddownback2"
command = /DB
time = 1
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

[State -1, AI Dampiner]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Random > AILevel*100
triggerall = animtime = 0
triggerall = movetype != H
triggerall = ctrl
trigger1 = statetype = S && (stateno != [120,150]) && (stateno != 40)
trigger1 = stateno != [10,12]
value = 0
ctrl = 1

;===========================================================================
; _____________
;/ Flying mode \______________________________________________________
;_____________________________________________________________________|
;__________________________________________________________
;                _____________________________________________________|
;\______________/

;===========================================================================

; __________________
;/ X- Men Gold Team \_________________________________________________
;_____________________________________________________________________|
;[State -1, GoldTeam]
;type = ChangeState
;value = 3800
;triggerall = command = "GoldTeam"
;triggerall = power >= 2000
;trigger1 = ctrl
;trigger2 = stateno = [200,450]

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/

; _______________
;/ Hyper Tornado \____________________________________________________
;_____________________________________________________________________|
;[State -1, strike]
;type = ChangeState
;value = 3500
;triggerall = (command = "hypertornado") && StateType != A
;triggerall = power >= 2000
;trigger1 = ctrl
;trigger2 = stateno = [200,650]
;_____________________________________________________________________
;                _____________________________________________________|
;\______________/

; ____________
;/ Hail Storm \_________________________________________________
;_____________________________________________________________________|
[State -1, hail]
type = ChangeState
value = 3100
triggerall = command = "hailstorm"
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = (HitdefAttr = SC, SA) && (MoveContact)

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; __________________
;/ Lightning Strike \_________________________________________________
;_____________________________________________________________________|
[State -1, strike]
type = ChangeState
value = 3000
triggerall = command = "lightningstrike"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger3 = (HitdefAttr = SCA, SA) && (MoveContact)

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; _________________
;/ Lightning Storm \__________________________________________________
;_____________________________________________________________________|
[State -1, strike]
type = ChangeState
value = 3400
triggerall = command = "lightStorm"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger3 = (HitdefAttr = SCA, SA) && (MoveContact)

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; ___________
;/ RainStorm \________________________________________________________
;_____________________________________________________________________|
[State -1, strike]
type = ChangeState
value = 3300
triggerall = !NumExplod(3310)
triggerall = command = "rainstorm"
triggerall = power >= 1000
triggerall = var(12) = 0
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger3 = (HitdefAttr = SCA, SA) && (MoveContact)

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; __________
;/ IceStorm \_________________________________________________________
;_____________________________________________________________________|
; IceStorm
;[State -1, strike]
;type = ChangeState
;value = null
;triggerall = command = "icestorm"
;triggerall = power >= 1000
;triggerall = var(12) = 0
;trigger1 = ctrl
;trigger2 = stateno = [200,650]

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; ___________
;/ SPECIAL'S \_________________________________________________________
;_____________________________________________________________________|

;[State -1, fly]
;type = ChangeState
;trigger1 = Var(59) <= 0 && (command = "Flying") && (stateno !=7001) && (ctrl)
;value = 7000

;[State -1, fly]
;type = ChangeState
;trigger1 = Var(59) <= 0 && (command = "Flying") && (stateno = 7001)
;value = 50
;___________
; _________
;/ Thunder \__________________________________________________________
_____________________________________
;                _____________________________________________________|
;\______________/

; __________________
;/ Lightning Attack \_________________________________________________
;_____________________________________________________________________|
[State -1, Lightning Attack]
type = ChangeState
value = 1997
triggerall = var(35) = 0
triggerall = command = "lightningattack"
triggerall = var(8) = 0
trigger1 = ctrl
trigger2 = stateno = [200,650]

;_____________________________________________________________________
;                _____________________________________________________|
;\______________/

; _________________
;/ Electric Sphere \__________________________________________________
;_____________________________________________________________________|
;[State -1, Sphere]
;type = ChangeState
;value = 1110
;triggerall = command = "Electricballx"
;triggerall = statetype = S || statetype = C
;trigger1 = ctrl
;trigger2 = stateno = [200,650]
;
;; Electric Sphere
;[State -1, ElectricSphere]
;type = ChangeState
;value = 1100
;triggerall = command = "Electricball"
;triggerall = statetype = S || statetype = C
;trigger1 = ctrl
;trigger2 = stateno = [200,650]
;_____________________________________________________________________
;                _____________________________________________________|
;\______________/

; _______________
;/ X-Men Helpers \____________________________________________________
;_____________________________________________________________________|
;[State -1,Helpers]
;type = ChangeState
;value = 1020
;triggerAll = command = "Helper1"
;trigger1 = var(3) = 0
;trigger1 = numhelper(650) != 1
;trigger1 = numhelper(008) = 0
;trigger1 = numhelper(010) = 0
;trigger1 = power >= 500
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;_____________________________________________________________________
;                _____________________________________________________|
;\______________/

; _________
;/ Typhoon \__________________________________________________________
;_____________________________________________________________________|
; Typhoon Weak (ground)
[State -1, typhoonx]
type = ChangeState
value = 1000
triggerall = command = "typhoonx"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Med (ground)
[State -1, typhoony]
type = ChangeState
value = 1001
triggerall = command = "typhoony"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Hard (ground)
[State -1, typhoonz]
type = ChangeState
value = 1002
triggerall = command = "typhoonz"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Weak (air)
[State -1, typhoonx]
type = ChangeState
value = 1003
triggerall = command = "typhoonx"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Med (air)
[State -1, typhoony]
type = ChangeState
value = 1004
triggerall = command = "typhoony"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Hard (air)
[State -1, typhoonz]
type = ChangeState
value = 1005
triggerall = command = "typhoonz"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Typhoon Weak (air)
[State -1, typhoonx]
type = ChangeState
triggerall = command = "typhoonx" || command = "typhoony" || command = "typhoonz"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [7600,7650])
trigger2 = movecontact
trigger3 = stateno = 7001
value = 71003

; Up Typhoon Weak (ground)
[State -1, typhoonx]
type = ChangeState
value = 1500
triggerall = command = "uptyphoonx"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Up Typhoon Med (ground)
[State -1, typhoony]
type = ChangeState
value = 1500
triggerall = command = "uptyphoony"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Up Typhoon Hard (ground)
[State -1, typhoonz]
type = ChangeState
value = 1500
triggerall = command = "uptyphoonz"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Up Typhoon Weak (air)
[State -1, typhoonx]
type = ChangeState
value = 1501
triggerall = command = "uptyphoonx"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Up Typhoon Weak (air)
[State -1, typhoonx]
type = ChangeState
triggerall = command = "uptyphoonx" || command = "uptyphoony" || command = "uptyphoonz"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [7600,7650])
trigger2 = movecontact
trigger3 = stateno = 7001
value = 71501

; Up Typhoon Med (air)
[State -1, typhoony]
type = ChangeState
value = 1501
triggerall = command = "uptyphoony"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Up Typhoon Hard (air)
[State -1, typhoonz]
type = ChangeState
value = 1501
triggerall = command = "uptyphoonz"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]
;_____________________________________________________________________
;
;_____________________________________________________________________|
[State -1, Thunder]
type = ChangeState
value = 1600
triggerall=!numhelper(1605)
triggerall = statetype != A
triggerall = command = "Thunder"
;triggerall = power >= 250
trigger1 = ctrl
trigger2 = stateno = [200,650]

[State -1, Thunder]
type = ChangeState
value = 1601
triggerall=!numhelper(1605)
triggerall = statetype = A
triggerall = command = "Thunder"
;triggerall = power >= 250
trigger1 = ctrl
trigger2 = stateno = [200,650]
;_____________________________________________________________________
;                _____________________________________________________|
;\______________/


; ______
;/ Wind \_____________________________________________________________
;_____________________________________________________________________|
[State -1, Wind]
type = ChangeState
value = 1700
triggerall=!numhelper(1705)
triggerall = statetype != A
triggerall = command = "Flying"
;triggerall = power >= 100
trigger1 = ctrl
trigger2 = stateno = [200,650]
;________________________________
;               _____________________________________________________|
;\______________/

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[State -1]
type = changestate
value = 900
trigger1 = command = "superjump"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movehit
trigger2 = command = "holdup" || command = "holdupback" || command = "holdupfwd"
;trigger3 = stateno = 250
;trigger3 = movehit
;trigger3 = command = "holdup" || command = "holdupback" || command = "holdupfwd"
;trigger4 = stateno = 450
;trigger4 = movehit
;trigger4 = command = "holdup" || command = "holdupback" || command = "holdupfwd"

;===========================================================================
;Recovery Roll
;[State -1, Falling]
;type = VarSet
;triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
;triggerall = alive
;trigger1 = ((Command = "recoveryroll") || (Command = "infinitycounter")) && (Alive = 1)
;v = 20
;value = ifelse((Command = "infinitycounter"),1,2)
;
;[State -1, Rolling]
;type = ChangeState
;value = 850
;triggerall = Var(20) = [1,2]
;trigger1 = (Pos Y >= 0) && (Vel Y > 0)
;---------------------------------------------------------------------------
;Infinity Counter

;[State -1, Infinity Counter]
;type = ChangeState
;value = 851
;trigger1 = (Command = "infinitycounter") && (Power >= 500) && (StateNo = [150,155]) && (Anim != [860,862])
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;; Air Dash 7
;[State -1]
;type = ChangeState
;value = 117
;triggerall = command = "TwoPunch"
;triggerall = command = "holdupback"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]
;
;---------------------------------------------------------------------------
; Air Dash 9
;[State -1]
;type = ChangeState
;value = 119
;triggerall = command = "TwoPunch"
;triggerall = command = "holdupfwd"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 8
;[State -1]
;type = ChangeState
;value = 118
;triggerall = command = "TwoPunch"
;triggerall = command = "holdup"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 1
;[State -1]
;type = ChangeState
;value = 111
;triggerall = command = "TwoPunch"
;triggerall = command = "holddownback"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 3
;[State -1]
;type = ChangeState
;value = 113
;triggerall = command = "TwoPunch"
;triggerall = command = "holddownfwd"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 2
;[State -1]
;type = ChangeState
;value = 112
;triggerall = command = "TwoPunch"
;triggerall = command = "holddown"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 4
;[State -1]
;type = ChangeState
;value = 114
;triggerall = command = "TwoPunch"
;triggerall = command = "holdback"
;triggerall = StateType = A
;triggerall = !var(29)
;triggerall = Pos Y <= -15
;trigger1 = ctrl
;trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Air Dash 6
[State -1]
type = ChangeState
value = 116
triggerall = command = "FF"
triggerall = StateType = A
triggerall = !var(29)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
;Throws
;---------------------------------------------------------------------------
;Punch Throw Forward
[State -1]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kick Throw Forward
[State -1]
type = ChangeState
value = 820
triggerall = enemynear, name != "Prime Sentinels"
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Punch throw in air
[State -1]
type = ChangeState
value = 880
triggerall = enemynear, name != "Prime Sentinels"
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = var(27) < 2
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Punch Throw in air backwards
[State -1]
type = null;ChangeState
value = 860
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdback"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = var(27) < 2
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "Taunt"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = time >= 7 && movecontact = 0
trigger3 = stateno = 200
trigger4 = prevstateno != 200
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = time > 7;6

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movehit
trigger4 = stateno = 230
trigger4 = movehit

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movehit
trigger4 = stateno = 210
trigger4 = movehit
trigger5 = stateno = 230
trigger5 = movehit
trigger6 = stateno = 240
trigger6 = movehit


;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 230
trigger3 = movehit
trigger4 = stateno = 210
trigger4 = movehit
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movehit
trigger4 = stateno = 210
trigger4 = movehit
trigger5 = stateno = 230
trigger5 = movehit
trigger6 = stateno = 240
trigger6 = movehit

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 400
trigger3 = movehit
trigger4 = stateno = 200
trigger4 = movehit
trigger5 = stateno = 430 || stateno = 230
trigger5 = movehit

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 || stateno = 400
trigger3 = movehit
trigger4 = stateno = 210 || stateno = 410
trigger4 = movehit
trigger5 = stateno = 230 || stateno = 430
trigger5 = movehit
trigger6 = stateno = 240 || stateno = 440
trigger6 = movehit

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 || stateno = 400
trigger3 = movehit

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 210 || stateno = 410
trigger3 = movehit
trigger4 = stateno = 230 || stateno = 430
trigger4 = movehit

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 || stateno = 400
trigger3 = movehit
trigger4 = stateno = 210 || stateno = 410
trigger4 = movehit
trigger5 = stateno = 230 || stateno = 430
trigger5 = movehit
trigger6 = stateno = 240 || stateno = 440
trigger6 = movehit

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [111, 119]

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 612
triggerall = command = "y"
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [111, 119]
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 630 && movecontact

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [111, 119]
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 630 && movecontact

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [111, 119]
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
trigger5 = stateno = [111, 119]

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = [111, 119]
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 611 || stateno = 612
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = [111, 119]

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = [111, 119]
trigger7 = stateno = 610 || stateno = 611 || stateno = 612
trigger7 = movecontact

;------------------------------------
;AI Guard Push (Standing)
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59)
triggerall = AILevel >=2
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]


