; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;
;-| Super Motions |--------------------------------------------------------


[Command]
name = "Concussion"
command = ~B,D,DB , x+y
Time = 20

[Command]
name = "Concussion"
command = ~B,D,DB, y+z
Time = 20

[Command]
name = "Concussion"
command = ~B,D,DB, x+z
Time = 20



[Command]
name = "Veil"
command = ~B,F, a+b
Time = 12

[Command]
name = "Veil"
command = ~B,F, b+c
Time = 12

[Command]
name = "Veil"
command = ~B,F, a+c
Time = 12



[Command]
name = "Illusion"
command = ~F,D,B, x+y
Time = 12

[Command]
name = "Illusion"
command = ~F,D,B, y+z
Time = 12

[Command]
name = "Illusion"
command = ~F,D,B, x+z
Time = 12


[Command]
name = "FBC_DiagUp"
command = ~F,D,DF, x+y
Time = 12

[Command]
name = "FBC_DiagUp"
command = ~F,D,DF, x+y
Time = 12


[Command]
name = "FBC_DiagUp"
command = ~F,D,DF, x+y
Time = 12


[Command]
name = "AFBC_Up"
command = ~F,D,DF, x+y
Time = 12


[Command]
name = "AFBC_Up"
command = ~F,D,DF, x+y
Time = 12

[Command]
name = "AFBC_Up"
command = ~F,D,DF, x+y
Time = 12

;---------------------------------

[Command]
name = "Psi-Thrust"
command = ~D,DF,F, x+y
Time = 12

[Command]
name = "Psi-Thrust"
command = ~D,DF,F, y+z
Time = 12

[Command]
name = "Psi-Thrust"
command = ~D,DF,F, x+z
Time = 12


[Command]
name = "AFBC_DiagDown"
command = ~D,DF,F, x+y
Time = 12

[Command]
name = "AFBC_DiagDown"
command = ~D,DF,F, y+z
Time = 12

[Command]
name = "AFBC_DiagDown"
command = ~D,F, x+z
Time = 12


[Command]
name = "Psi-Malestrom"
command = ~D,DF,F, a+b
Time = 12

[Command]
name = "Psi-Malestrom"
command = ~D,DF,F, b+c
Time = 12

[Command]
name = "Psi-Malestrom"
command = ~D,DF,F, a+c
Time = 12



[Command]
name = "Billion"
command = ~F,D,B, x+y
Time = 12

[Command]
name = "Billion"
command = ~F,D,B, y+z
Time = 12

[Command]
name = "Billion"
command = ~F,D,B, x+z
Time = 12


;-| Special Motions |------------------------------------------------------

[Command]
name = "Kouchou_Gakure"
command = ~D,DB,B, a+b
Time = 12

[Command]
name = "Kouchou_Gakure"
command = ~D,DB,B, b+c
Time = 12

[Command]
name = "Kouchou_Gakure"
command = ~D,DB,B, c+a
Time = 12

;----------------------------------------------------

[Command]
name = "Twilight_Drop"
command = ~D,B, a
Time = 12

[Command]
name = "Twilight_Drop"
command = ~D,B, b
Time = 12

[Command]
name = "Twilight_Drop"
command = ~D,B, c
Time = 12

;----------------------------------------------------

[Command]
name = "Air_Twilight_Drop"
command = ~D,B, a
Time = 12

[Command]
name = "Air_Twilight_Drop"
command = ~D,B, b
Time = 12

[Command]
name = "Air_Twilight_Drop"
command = ~D,B, c
Time = 12


;----------------------------------------------------
[Command]
name = "Ninjitsu_x"
command = ~F,DF,D,DB,B, x
Time = 20

[Command]
name = "Ninjitsu_a"
command = ~F,DF,D,DB,B, a
Time = 20

[Command]
name = "Ninjitsu_z"
command = ~F,DF,D,DB,B, z
Time = 20

[Command]
name = "Ninjitsu_c"
command = ~F,DF,D,DB,B, c
Time = 20

[Command]
name = "Ninjitsu_y"
command = ~F,DF,D,DB,B, y
Time = 20

[Command]
name = "Ninjitsu_b"
command = ~F,DF,D,DB,B, b
Time = 20


;----------------------------------------------------

[Command]
name = "Psi-Blast_L"
command = ~D,DF,F, x
Time = 12

[Command]
name = "Psi-Blast_M"
command = ~D,DF,F, y
Time = 12

[Command]
name = "Psi-Blast_H"
command = ~D,DF,F, z
Time = 12

;----------------------------------------------------
[Command]
name = "Hayate_no_Jutsu_L"
command = ~D,B, x
Time = 20

[Command]
name = "Hayate_no_Jutsu_M"
command = ~D,B, y
Time = 20

[Command]
name = "Hayate_no_Jutsu_H"
command = ~D,B, z
Time = 20


;[Command]
;name = "C_Razor_L"
;command = ~D,U, a ;D,U, a
;Time = 20

;[Command]
;name = "C_Razor_M"
;command = ~D,U, b
;Time = 20

;[Command]
;name = "C_Razor_H"
;command = ~D,U, c
;Time = 20


[Command]
name = "Psi-Blade_L"
command = ~D,DF,F, a ;$D,$U, a;D,U, a
Time = 20

[Command]
name = "Psi-Blade_M"
command = ~D,DF,F, b;$D,$U, b
Time = 20

[Command]
name = "Psi-Blade_H"
command = ~D,DF,F, c  ;$D,$U, c
Time = 20


;----------------------------------------------------


;------------------------------------------------------------
;Guard Attack

[Command]
name = "Guard Attack"
command = ~B, F, x
Time = 20


[Command]
name = "Guard Attack"
command = ~B, F, y
Time = 20

[Command]
name = "Guard Attack"
command = ~B, F, z
Time = 20


[Command]
name = "Guard Attack"
command = ~B, F, a
Time = 20


[Command]
name = "Guard Attack"
command = ~B, F, b
Time = 20

[Command]
name = "Guard Attack"
command = ~B, F, c
Time = 20


;---------------------------------------------------------------------------------------------
;Super Jump
[Command]
name = "SJ"
command = $D, $U

[Command]
name = "Super_Jump"
command = $D, $U

[Command]
name = "Super_Jump"
command = D, U

;-----------------------------
;Recovery Roll

[Command]
name = "F_Roll_Long"
command = x+y
Time = 20

[Command]
name = "F_Roll_Long"
command = y+z
Time = 20

[Command]
name = "F_Roll_Long"
command = x+z
Time = 20


[Command]
name = "B_Roll_Long"
command = a+b
Time = 20

[Command]
name = "B_Roll_Long"
command = b+c
Time = 20

[Command]
name = "B_Roll_Long"
command = a+c
Time = 20



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "Blade_a"
command = a;,a
time = 5

[Command]
name = "Blade_b"
command = b;,b
time = 5

[Command]
name = "Blade_c"
command = c;,c
time = 5

[Command]
name = "Hayate_P"
command = x
time = 10

[Command]
name = "Hayate_P"
command = y
time = 10

[Command]
name = "Hayate_P"
command = z
time = 10

[Command]
name = "Hayate_K"
command = a
time = 10

[Command]
name = "Hayate_K"
command = b
time = 10

[Command]
name = "Hayate_K"
command = c
time = 10

[Command]
name = "Nin_Thrust"
command = x
time = 10


[Command]
name = "Nin_Thrust"
command = y
time = 10

[Command]
name = "Nin_Thrust"
command = z
time = 10


[Command]
name = "Nin_Thrust"
command = a
time = 10


[Command]
name = "Nin_Thrust"
command = b
time = 10


[Command]
name = "Nin_Thrust"
command = c
time = 10

[Command]
name = "Thrust_Turn"
command = x, x
time = 10

[Command]
name = "Thrust_Turn"
command = y, y
time = 10


[Command]
name = "Thrust_Turn"
command = z, z
time = 10

[Command]
name = "Thrust_Turn"
command = a, a
time = 10

[Command]
name = "Thrust_Turn"
command = b, b
time = 10

[Command]
name = "Thrust_Turn"
command = c, c
time = 10


[Command]
name = "Malestrom"
command = a, a
time = 20

[Command]
name = "Malestrom"
command = b, b
time = 20

[Command]
name = "Malestrom"
command = c, c
time = 20

[Command]
name = "Malestrom"
command = a, b
time = 20

[Command]
name = "Malestrom"
command = b, c
time = 20

[Command]
name = "Malestrom"
command = c, a
time = 20



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "recovery"
command = z+c
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
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = y+z
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "Catapult"
command = /ab
time = 10

[Command]
name = "Catapult"
command = /bc
time = 10

[Command]
name = "Catapult"
command = /ac
time = 10

[Command]
name = "Cascade"
command = /xy
time = 10

[Command]
name = "Cascade"
command = /yz
time = 10

[Command]
name = "Cascade"
command = x+z
time = 10



;-| Dir + Button |---------------------------------------------------------

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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1


[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1


[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1


[Command]
name = "up" ;Required (do not remove)
command = $U
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "Super_Jump"
command = /U

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1


[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1


[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "Forward Wakeup Roll"
command = /$F
time = 10

[Command]
name = "Backward Wakeup Roll"
command = /$B
time = 10





;---------------------------------------------------------------------------


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


;---------------------------------------------
;Concussion
[State -1, Concussion]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 3030
triggerall = StateType = S
trigger1 = Command = "Concussion" && power >= 3000
trigger1 = ctrl

;---------------------------------------------
;Illusion
[State -1, Illusion]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 6000
triggerall = StateType = S
trigger1 = Command = "Illusion" && power >= 2000
trigger1 = ctrl

;---------------------------------------------
;Veil
[State -1, Veil]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 2100
triggerall = StateType = S
trigger1 = Command = "Veil" && power >= 1000
trigger1 = ctrl

;---------------------------------------------
;Psi-Thrust
[State -1, Psi-Thrust]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 2000
triggerall = StateType = S
trigger1 = Command = "Psi-Thrust" && power >= 1000
trigger1 = ctrl

;---------------------------------------------
;Psi-Thrust - Air
[State -1, Psi-Thrust - Air]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 2015
triggerall = StateType = A
trigger1 = Command = "Psi-Thrust" && power >= 1000
trigger1 = ctrl


;---------------------------------------------
;Psi-Malestrom
[State -1, Psi-Malestrom]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 3000
triggerall = StateType = S
trigger1 = Command = "Psi-Malestrom" && power >= 2000
trigger1 = ctrl

;---------------------------------------------
;Kouchou_Gakure
[State -1, Kouchou_Gakure]
triggerall = numhelper(6092) != 1
type = ChangeState
value = 4000
triggerall = StateType = S || statetype = A
trigger1 = Command = "Kouchou_Gakure" && power >= 1000
trigger1 = ctrl

;---------------------------------------------
;Psi-Blast_L
[State -1, Psi-Blast_L]
type = ChangeState
value = 1001
triggerall = StateType = S
trigger1 = Command = "Psi-Blast_L"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blast_M
[State -1, Psi-Blast_M]
type = ChangeState
value = 1000
triggerall = StateType = S
trigger1 = Command = "Psi-Blast_M"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blast_H
[State -1, Psi-Blast_H]
type = ChangeState
value = 1002
triggerall = StateType = S
trigger1 = Command = "Psi-Blast_H"
trigger1 = ctrl

;---------------------------------------------
;Air Psi-Blast_L
[State -1, Air Psi-Blast_L]
type = ChangeState
value = 1101
triggerall = StateType = A
trigger1 = Command = "Psi-Blast_L"
trigger1 = ctrl


;---------------------------------------------
;Air Psi-Blast_M
[State -1, Air Psi-Blast_M]
type = ChangeState
value = 1100
triggerall = StateType = A
trigger1 = Command = "Psi-Blast_M"
trigger1 = ctrl

;---------------------------------------------
;Air Psi-Blast_H
[State -1, Air Psi-Blast_H]
type = ChangeState
value = 1102
triggerall = StateType = A
trigger1 = Command = "Psi-Blast_H"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blade_L
[State -1, Psi-Blade_L]
type = ChangeState
value = 1210
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_L"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blade_M
[State -1, Psi-Blade_M]
type = ChangeState
value = 1200
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_M"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blade_H
[State -1, Psi-Blade_H]
type = ChangeState
value = 1220
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_H"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_x
[State -1, Ninjitsu_x]
type = ChangeState
value = 1400
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_x"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_a
[State -1, Ninjitsu_a]
type = ChangeState
value = 1410
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_a"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_z
[State -1, Ninjitsu_z]
type = ChangeState
value = 1415
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_z"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_c
[State -1, Ninjitsu_c]
type = ChangeState
value = 1420
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_c"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_y
[State -1, Ninjitsu_y]
type = ChangeState
value = 1425
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_y"
trigger1 = ctrl

;---------------------------------------------
;Ninjitsu_b
[State -1, Ninjitsu_b]
type = ChangeState
value = 1430
triggerall = StateType = S  || StateType = A
trigger1 = Command = "Ninjitsu_b"
trigger1 = ctrl

;---------------------------------------------
;Hayate_no_Jutsu_L
[State -1, Hayate_no_Jutsu_L]
type = ChangeState
value = 1300
triggerall = StateType = S
trigger1 = Command = "Hayate_no_Jutsu_L"
trigger1 = ctrl

;---------------------------------------------
;Hayate_no_Jutsu_M
[State -1, Hayate_no_Jutsu_M]
type = ChangeState
value = 1320
triggerall = StateType = S
trigger1 = Command = "Hayate_no_Jutsu_M"
trigger1 = ctrl


;---------------------------------------------
;Hayate_no_Jutsu_H
[State -1, Hayate_no_Jutsu_H]
type = ChangeState
value = 1330
triggerall = StateType = S
trigger1 = Command = "Hayate_no_Jutsu_H"
trigger1 = ctrl


;---------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
;triggerall = var(59)<1
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = Command = "SJ" || Command = "SJ" && Command = "holdfwd" || Command = "SJ" && Command = "holdback"

;---------------------------------------------------------------------------
;Push Guard Stand
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Forward Wakeup Roll - Short
[State -1, Forward Wakeup Roll]
type = ChangeState
value = 5155
triggerall = (stateno = 5110) && time >= 5
trigger1 =  Life
trigger1 = command = "Forward Wakeup Roll"

;---------------------------------------------------------------------------
;Backward Wakeup Roll - Short
[State -1, Backward Wakeup Roll]
type = ChangeState
value = 5156
triggerall = (stateno = 5110) && time >= 5
trigger1 = life
trigger1 =  command = "Backward Wakeup Roll"

;---------------------------------------------------------------------------
;Forward Roll Long
[State -1, Forward Roll Long]
type = ChangeState
value = 5157
triggerall = (stateno = 5110) && time >= 5
trigger1 =  Life
trigger1 = command = "F_Roll_Long"

;---------------------------------------------------------------------------

;Backward Roll Long
[State -1, Backward Roll Long]
type = ChangeState
value = 5158
triggerall = (stateno = 5110) && time >= 5
trigger1 = life
trigger1 =  command = "B_Roll_Long"


;---------------------------------------------------------------------------
[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
; Alternate Kick
[State -1, Alternate Kick]
type = ChangeState
value = 455
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------


;===========================================================================
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
; Toss-Up
[State -1, Toss-Up]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X <= 18
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 18
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Hell Ride
[State -1, Hell Ride]
type = ChangeState
value = 830
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X <= 18
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 18
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Meteor Drop
[State -1, Meteor Drop]
type = ChangeState
value = 870
triggerall = p2statetype = A
triggerall = p2bodydist x <= 40
triggerall = command = "holdfwd" && command = "z"
trigger1 = ctrl
trigger1 = StateType = A
trigger1 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = p2bodydist x > 17
triggerall = command = "b" && command != "holdfwd" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Overhead Heel Kick
[State -1, Overhead Heel Kick]
type = ChangeState
value = 245
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holdback"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dodge & Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 255
triggerall = command = "c" && command = "holdback"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Dodge
[State -1, Dodge]
type = ChangeState
value = 255
triggerall = command = "c" && command != "holddown" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command != "holdup" || command = "holdup" && command = "holdfwd" ||  command = "holdup" && command = "holdback"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Moonsault Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 655
triggerall = command = "holdup" || command = "holdup" && command != "holdfwd" ||  command = "holdup" && command != "holdback"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl



