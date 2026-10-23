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
[command]
name = "4200"
command = D,DF,F,c
time = 15

[command]
name = "6000"
command = D,DF,F,a+b
time = 15

[Remap]
[command]
name = "1710"
command = D,DF,F,b
time = 15

x = x
[command]
name = "3344"
command = D,DB,B,a+b
time = 15

y = y
[command]
name = "1060"
command = D,DF,F,a
time = 15

z = z
[command]
name = "1040"
command = D,DF,F,z
time = 15

a = a
[command]
name = "3000"
command = D,DB,B,x+y
time = 15

b = b
[command]
name = "1450"
command = D,DB,B,y
time = 15

c = c
[command]
name = "3100"
command = D,DF,F,x+y
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "1012"
command = D,DB,B,a
time = 15

[command]
name = "1013"
command = D,DB,B,b
time = 15

[command]
name = "1014"
command = D,DB,B,c
time = 15

[command]
name = "1364"
command = D,DF,F,y
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "10599"
command = D,F,x
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "1120"
command = D,B,x
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "SJ"
command = $D, $U

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
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

;-| Hold Dir |--------------------------------------------------------------
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
;====================<CPU>===========================

[Command]
name = "CPU0"
command = ~D, DB, B, c
time = 0

[Command]
name = "CPU1"
command = ~D, DF, F, x
time = 0

[Command]
name = "CPU2"
command = ~D, DF, F, y
time = 0

[Command]
name = "CPU3"
command = ~D, DF, F, z
time = 0

[Command]
name = "CPU4"
command = ~D, DF, F, a
time = 0

[Command]
name = "CPU5"
command = ~D, DB, B, a
time = 0

[Command]
name = "CPU6"
command = ~D, DB, B, b
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,a,a,s
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,a,a,a,a,s
time = 0

[Command]
name = "CPU9"
command = U,D,B,F,b,b,s
time = 0

[Command]
name = "CPU10"
command = D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU11"
command = U,D,D,B,F,b,b,s
time = 0

[Command]
name = "CPU12"
command = U,U,D,F,B,F,b,s
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,x,x,s
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,x,s
time = 0

[Command]
name = "CPU15"
command = D,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU16"
command = D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU18"
command = U,U,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU19"
command = U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU20"
command = U,U,D,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU21"
command = U,U,U,U,B,F,B,F,y,s
time = 0

[Command]
name = "CPU22"
command = U,U,U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,U,U,B,F,y,s
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,U,U,y,s
time = 0

[Command]
name = "CPU25"
command = U,U,U,U,U,U,B,F,y,s
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,U,U,B,F,x,s
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,D,D,x,s
time = 0

[Command]
name = "CPU28"
command = U,D,B,F,B,F,x,x,x,s
time = 0

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a

[Command]
name = "AI-001"
command = ~F,c,~D,y,~U,c+a,D,b+x,B,z,z,z+b
time = 1

[Command]
name = "AI-002"
command = ~F,y,~D,y,~U,c+y,D,b+z,F,z,z,z+c
time = 1

[Command]
name = "AI-003"
command = ~F,b,~D,y,~U,c+b,D,b+a,B,z,z,z+x
time = 1

[Command]
name = "AI-004"
command = ~F,x,~D,x,~U,c+x,D,b+y,F,z,z,z+y
time = 1

[Command]
name = "AI-005"
command = ~F,z,~D,y,~U,c+a,D,b+c,B,z,z,z+a
time = 1

[Command]
name = "AI-006"
command = ~D,U,x+y+z,~F,F,b,c,y,B,~B,a+b+c,U
time = 1

[Command]
name = "AI-007"
command = ~U,D,x+b+z,~F,F,b,b,x,B,~B,a+y+c,F
time = 1

[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "C01"
command =  c, c, c, c, c
time = -2


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; 2. State entry

[Statedef -1]



;--------------------------------------------------------
[State -1, VarSet]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
trigger52 = Command = "AI1"
trigger53 = Command = "AI2"
trigger54 = Command = "AI3"
trigger55 = Command = "AI4"
trigger56 = Command = "AI5"
trigger57 = Command = "AI6"
trigger58 = Command = "AI7"
trigger59 = Command = "AI8"
trigger60 = Command = "AI9"
trigger61 = Command = "AI10"
trigger62 = Command = "AI11"
trigger63 = Command = "AI12"
trigger64 = Command = "AI13"
trigger65 = Command = "AI14"
trigger66 = Command = "AI15"
trigger67 = Command = "AI16"
trigger68 = Command = "AI17"
trigger69 = Command = "AI18"
trigger70 = Command = "AI19"
trigger71 = Command = "AI20"
trigger72 = Command = "AI21"
trigger73 = Command = "AI22"
trigger74 = Command = "AI23"
trigger75 = Command = "AI24"
trigger76 = Command = "AI25"
trigger77 = Command = "AI26"
trigger78 = Command = "AI27"
trigger79 = Command = "AI28"
trigger80 = Command = "AI29"
trigger81 = Command = "AI0"
trigger82 = Command = "AI-001"
trigger83 = Command = "AI-002"
trigger84 = Command = "AI-003"
trigger85 = Command = "AI-004"
trigger86 = Command = "AI-005"
trigger87 = Command = "AI-006"
trigger88 = Command = "AI-007"
trigger89 = Command = "AI_1"
trigger90 = Command = "C01"
var(59) = 1


;---------------------------------------------------------------------------
[State -1, Proton Cannon]
type = ChangeState
value = 3344
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [9086,9809]
triggerall = enemynear,stateno != [6195000,6195007]
triggerall = enemynear,stateno != [120,155]
triggerall = enemynear,stateno != [0,20]
triggerall = enemynear,stateno != [100,105]
trigger1 = ctrl || stateno = 5120 || prevstateno = 5120 || (stateno = [120,141])
trigger1 = enemynear,movetype = A
trigger1 = P2bodydist X = [-40,60]
trigger1 = enemynear,stateno != 200
trigger1 = enemynear,stateno != 230
trigger1 = enemynear,stateno != 400
trigger1 = enemynear,stateno != 430
trigger1 = enemynear,stateno != 800
trigger2 = P2bodydist X = [-10,80]
trigger2 = enemynear,vel X > 3
trigger2 = ctrl


;---------------------------------------------------------------------------
[State -1, AI Stand hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
trigger1 = enemynear,statetype = A
trigger1 = P2bodydist X = [-1,45]
trigger1 = ctrl
trigger1 = enemynear,pos Y = [-120,-36]

;---------------------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,movetype != H || (enemynear,stateno = [150,153])
trigger1 = ctrl
trigger1 = P2bodydist X = [-1,10]



;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, Guard Push]
type = ChangeState
value = 464
triggerall = var(59)
triggerall = statetype != A
triggerall = enemynear,hitdefattr != SCA,HA,HP 
triggerall = enemynear, Facing != Facing
triggerall = (stateno = [140,155]) 
triggerall = P2bodydist X = [31,100]
trigger1 = enemynear, vel X >= 4
trigger2 = backedgedist < 40
trigger3 = gethitvar(hitcount) >= 1

[State -1, GroundGuard C => S]
type = ChangeState
value = 150
triggerall = var(59)
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType != A) &&  (enemynear, Facing != Facing)  
triggerall = (P2stateno != [5000,5035]) && !enemynear,ishelper || (P2stateno != [5050,5101]) && !enemynear,ishelper
triggerall = !enemynear,hitdefattr = SCA,NT,ST,HT
triggerall = P2movetype != H || P2statetype != L || P2movetype != I
triggerall = inguarddist && !enemynear,ishelper 
trigger1 = stateno = 131 || (stateno = [152,153])
trigger1 = enemynear,statetype = A
trigger1 = inguarddist

[State -1, CrouchGuard, NA,SA,HA]
type = ChangeState
value = 131
triggerall = var(59) 
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType != A) &&  (enemynear, Facing != Facing)  
triggerall = (enemynear,StateType != A) 
triggerall = (P2stateno != [5000,5035]) && !enemynear,ishelper || (P2stateno != [5050,5101]) && !enemynear,ishelper
triggerall = !enemynear,hitdefattr = SCA,NT,ST,HT
triggerall = P2movetype != H || P2statetype != L || P2movetype != I; %
triggerall = enemynear, movetype= A
trigger1 = inguarddist
trigger1 = ctrl || (stateno = [100,101])  || (stateno = [890,895]) && animtime = -1 || stateno = 1012 && animtime = -1 || stateno = 1364 && time >= 14
;trigger2 = (stateno = [890,895]) && inguarddist && animtime = -1
;trigger2 = stateno = 120 && statetype = S || stateno = 130 || stateno = 140 || (stateno = [150,151])
;trigger2 = inguarddist
;trigger2 = P2statetype = C || enemynear,hitdefattr = C,NA,SA,HA
;triggerall = stateno != [464,474]
;trigger1 = P2statetype = C

[State -1, GroundGuard S]
type = ChangeState
value = 130
triggerall = var(59)
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType != A) &&  (enemynear, Facing != Facing)  
triggerall = (P2stateno != [5000,5035]) && !enemynear,ishelper || (P2stateno != [5050,5101]) && !enemynear,ishelper
triggerall = !enemynear,hitdefattr = SCA,NT,ST,HT
triggerall = P2movetype != H || P2statetype != L || P2movetype != I
triggerall = enemynear, movetype= A
triggerall = inguarddist && !enemynear,ishelper 
triggerall = enemynear,statetype = A
trigger1 = ctrl || (stateno = [100,101])  || stateno = 1012 && animtime = -1 || stateno = 1364 && time >= 14;|| (stateno = [890,895]) && inguarddist && animtime = -1
;trigger3 = (stateno = [890,895]) && inguarddist && animtime = -1

[State -1, Guard Projectile]
type = ChangeState
value = 120
triggerall = var(59) 
triggerall = ctrl || (stateno = [100,101]) || (stateno = [890,895]) && animtime = -1
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType != A) ;&&  (enemynear, Facing != Facing) 
trigger1 = inguarddist && enemynear,numproj > 0
trigger2 = inguarddist && enemynear,ishelper && enemynear,vel x != 0 && enemynear,hitdefattr = SA,AA 
trigger3 = inguarddist && enemynear,ishelper && enemynear,vel y != 0 && enemynear,hitdefattr = SA,AA
trigger4 = inguarddist && enemynear,ishelper && enemynear,vel x = 0 && EnemyNear,StateNo>=1000
trigger5 = inguarddist && enemynear,hitdefattr = SCA,AP

[State -1, AirGuard 1]
type = ChangeState
value = 132
triggerall = var(59)
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType = A) &&  (enemynear, Facing != Facing)  
triggerall = (P2stateno != [5000,5035]) && !enemynear,ishelper || (P2stateno != [5050,5101]) && !enemynear,ishelper
triggerall = !enemynear,hitdefattr = SCA,NT,ST,HT
triggerall = P2movetype != H || P2statetype != L || P2movetype != I; %
triggerall = enemynear, movetype = A
trigger1 = inguarddist && !enemynear,ishelper 
trigger1 = ctrl || stateno = 105 || stateno = 1365 && time >= 14 || stateno = 1366 && time >= 20
trigger2 = inguarddist && (stateno = 5040) && animtime = -1
trigger3 = inguarddist && (stateno = [5200,5210]) && time >= 11

[State -1, Air Projectile Guard]
type = ChangeState
value = 132
triggerall = var(59)
triggerall = roundstate = 2
triggerall = random <= 999
triggerall = (StateType = A) ;&&  (enemynear, Facing != Facing)  
triggerall = ctrl || stateno = 105 || (stateno = 5040) && animtime = -1 || (stateno = [5200,5210]) && time >= 11
trigger1 = inguarddist && enemynear,numproj > 0
trigger2 = inguarddist && enemynear,ishelper && enemynear,vel x != 0 && enemynear,hitdefattr = SCA,AA 
trigger3 = inguarddist && enemynear,ishelper && enemynear,vel y != 0 && enemynear,hitdefattr = SCA,AA
trigger4 = inguarddist && enemynear,ishelper && enemynear,vel x = 0 && EnemyNear,StateNo>=1000
trigger5 = inguarddist && enemynear,hitdefattr = SCA,AP



;---------------------------------------------------------------------------
[State -1, Run]
type = ChangeState
value = 100
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2bodydist X > 30
trigger1 = enemynear,stateno = [9086,9809]
trigger2 = P2bodydist X > 30
trigger2 = enemynear,stateno = [6195000,6195007]

;---------------------------------------------------------------------------
[State -1, Walk 1060]
type = ChangeState
value = 20
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2bodydist X > 50
trigger1 = numhelper(1068) > 0

;---------------------------------------------------------------------------
[State -1, Run Stop]
type = ChangeState
value = 0
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 100
trigger1 = P2bodydist X <= 30
trigger1 = (enemynear,stateno = [9086,9809]) || (enemynear,stateno = [6195000,6195007])
trigger2 = stateno = 20
trigger2 = P2bodydist X <= 50
trigger2 = numhelper(1068) <= 0


;---------------------------------------------------------------------------
[State -1, Hyper Handgun]
type = ChangeState
value = 3100
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = power >= 2000
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [9086,9809]
triggerall = enemynear,stateno != [6195000,6195007]
trigger1 = stateno = 440 && movehit
trigger2 = stateno = 1364 && movehit
trigger3 = P2bodydist X > 130
trigger3 = ctrl
trigger3 = random = [800,899]

;---------------------------------------------------------------------------
[State -1, Heavy Machine Gun]
type = ChangeState
value = 6000
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [9086,9809]
triggerall = enemynear,stateno != [6195000,6195007]
trigger1 = P2bodydist X > 130
trigger1 = enemynear,pos Y > -70
trigger1 = enemynear,vel Y > -1
trigger1 = ctrl
trigger1 = random = [500,599]

[State -1, AI Hyper Viper Beam]
type = ChangeState
value = 3000
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [9086,9809]
triggerall = enemynear,stateno != [6195000,6195007]
triggerall = enemynear,stateno != [120,155]
triggerall = ctrl
triggerall = random = [500,599]
triggerall = P2bodydist X > 130
trigger1 = enemynear,pos Y = [-190,-130]
trigger1 = enemynear,vel Y > -1
trigger2 = enemynear,pos Y > -130



;---------------------------------------------------------------------------
[State -1, Walk]
type = ChangeState
value = 20
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno = 5050
trigger1 = ctrl
trigger1 = P2bodydist X = [25,74]
trigger1 = enemynear,pos y < -40
trigger1 = enemynear,vel X = [-2,2]

;---------------------------------------------------------------------------
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,pos Y > -32
triggerall = enemynear,vel Y > -1
trigger1 = P2bodydist X = [-1,30]
trigger1 = ctrl
trigger1 = random < 500
trigger2 = P2bodydist X = [31,50]
trigger2 = ctrl
trigger2 = random < 75
trigger3 = enemynear,statetype = A || enemynear,statetype = C
trigger3 = P2bodydist X = [11,30]
trigger3 = stateno = 1364 && time >= 14
trigger3 = enemynear,stateno != [5000,5050]


;---------------------------------------------------------------------------
[State -1, AI Stand hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
trigger1 = P2bodydist X = [-1,30]
trigger1 = stateno = 200 || stateno = 430
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, AI Super Jump]
type = ChangeState
value = 7000
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 220 && movehit

;---------------------------------------------------------------------------
[State -1, AI C Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
trigger1 = P2bodydist X = [-1,30]
trigger1 = ctrl
trigger1 = random >= 500
trigger2 = stateno = 200 && moveguarded
trigger3 = P2bodydist X = [11,30]
trigger3 = stateno = 1364 && time >= 14
trigger3 = (enemynear,stateno != [5000,5050]) || (enemynear,stateno = [120,155]) && statetype = S

;---------------------------------------------------------------------------
[State -1, AI Stand Med Kick]
type = ChangeState
value = 240
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = P2bodydist X = [31,50]
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,pos Y > -32
triggerall = enemynear,vel Y > -1
triggerall = enemynear,statetype = A
trigger1 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
[State -1, AI C Med Kick]
type = ChangeState
value = 440
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
trigger1 = stateno = 430 && movecontact
trigger2 = stateno = 200 && movecontact
trigger2 = P2bodydist X > 30

;---------------------------------------------------------------------------
[State -1, AI C Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
trigger1 = stateno = 440 && movecontact
trigger1 = P2bodydist X = [-1,51]
trigger2 = stateno = 430 
trigger2 = enemynear,stateno != [5000,5050]
trigger2 = animtime = -1

;---------------------------------------------------------------------------
[State -1, 200 => S Charge]
type = ChangeState
value = 1364
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
trigger1 = stateno = 200
trigger1 = enemynear,stateno != [5000,5050]
trigger1 = animtime = -1

;---------------------------------------------------------------------------
[State -1, S Charge]
type = ChangeState
value = 1364
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = !numhelper(1068)
triggerall = (enemynear,pos Y = [-94,-50]) && enemynear,vel Y > -1 || enemynear,pos Y > -50
triggerall = enemynear,numproj = 0
triggerall = random = [400,499]
trigger1 = ctrl
trigger1 = P2bodydist X = [31,80]
trigger1 = enemynear,stateno != 120 && (enemynear,stateno != [130,131]) && (enemynear,stateno != [140,141]) && (enemynear,stateno != [150,153])
trigger1 = enemynear,statetype = A || enemynear,movetype = A || enemynear,movetype = H
trigger2 = ctrl
trigger2 = P2bodydist X = [81,130]

;---------------------------------------------------------------------------
[State -1, Upper Pulser Cannon]
type = ChangeState
value = 1040
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype = A
triggerall = ctrl
trigger1 = P2bodydist X = [75,112]
trigger1 = enemynear,pos Y = [-175,-80]
trigger2 = P2bodydist X = [113,300]
trigger2 = enemynear,pos Y = [-230,-176]

;---------------------------------------------------------------------------
[State -1, Mine Near]
type = ChangeState
value = 1012
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !numhelper(1068)
triggerall = ctrl
trigger1 = enemynear,stateno = [5100,5120]
trigger1 = P2bodydist X = [-1,30]
trigger2 = !inguarddist
trigger2 = helper(6191012),rootdist X > 50
trigger2 = helper(6191012),rootdist X <= -20
trigger2 = P2bodydist X > 130
trigger2 = (random = [400,430]) || (random = [900,930]) ;|| (random = [600,620])

;---------------------------------------------------------------------------
[State -1, Mine Med]
type = ChangeState
value = 1013
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !numhelper(1068)
triggerall = ctrl
trigger1 = enemynear,stateno = [5100,5120]
trigger1 = P2bodydist X = [31,85]
trigger2 = !inguarddist
trigger2 = enemynear,movetype != A
trigger2 = enemynear,vel X  <= 3
trigger2 = P2bodydist X = [55,105]
trigger2 = (random = [400,430]) || (random = [900,930]) ;|| (random = [600,620])

;---------------------------------------------------------------------------
[State -1, Mine Far]
type = ChangeState
value = 1014
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !numhelper(1068)
triggerall = ctrl
trigger1 = enemynear,stateno = [5100,5120]
trigger1 = P2bodydist X = [31,85]
trigger2 = P2bodydist X = [85,200]
trigger2 = (random = [500,530]) || (random = [800,830]) ;|| (random = [680,699])

;---------------------------------------------------------------------------
[State -1, Groot When enemy Lying]
type = ChangeState
value = 10599
triggerall = var(59) && roundstate = 2
triggerall = !numhelper(10600)
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,statetype = L
triggerall = (stateno = [1013,1014]) && animtime = -1
trigger1 = enemynear,stateno = [5100,5120]
trigger2 = enemynear,prevstateno = [5100,5120]

;---------------------------------------------------------------------------
[State -1, Viper Beam]
type = ChangeState
value = 1450
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = !numhelper(1068)
trigger1 = stateno = 210 && movecontact
trigger2 = ctrl
trigger2 = P2bodydist X > 100
trigger2 = random = [100,199]
trigger2 = enemynear,pos Y > -150
trigger2 = enemynear,vel Y > -3

;---------------------------------------------------------------------------
[State -1, Rifle]
type = ChangeState
value = 1710
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = !numhelper(1068)
trigger1 = enemynear,pos Y > -70
trigger1 = enemynear,vel Y > -1
trigger1 = ctrl
trigger1 = P2bodydist X > 50
trigger1 = random = [200,299]
trigger2 = stateno = [440,450]
trigger2 = enemynear,movetype != H
trigger2 = animtime = -1

;---------------------------------------------------------------------------
[State -1, Handgun]
type = ChangeState
value = 1120
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = !numhelper(1068)
triggerall = enemynear,pos Y > -85
triggerall = enemynear,vel Y > -1
trigger1 = ctrl
trigger1 = P2bodydist X > 70
trigger1 = random < 100
trigger2 = stateno = 440 && movecontact
trigger2 = P2bodydist X > 51

;---------------------------------------------------------------------------
[State -1, Pulser Bombs]
type = ChangeState
value = 4200
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !numhelper(184)
triggerall = ctrl
triggerall = enemynear,stateno != [9086,9809]
triggerall = enemynear,stateno != [6195000,6195007]
triggerall = !numhelper(1068)
triggerall = random = [600,699]
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype != H
trigger1 = P2bodydist X = [-1,30]
trigger1 = enemynear,pos Y < -150
trigger2 = !inguarddist
trigger2 = P2bodydist X = [75,110]
trigger2 = enemynear,vel X <= 3
trigger2 = enemynear,movetype != A
trigger2 = enemynear,stateno != [0,20]
trigger2 = enemynear,stateno != 100
trigger2 = enemynear,stateno != [1000,3999]
trigger3 = !inguarddist
trigger3 = P2bodydist X = [111,160]

;---------------------------------------------------------------------------
[State -1, Groot]
type = ChangeState
value = 10599
triggerall = var(59) && roundstate = 2
triggerall = !numhelper(10600)
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemynear,stateno != [5100,5120]
trigger1 = P2bodydist X > 120
trigger1 = (random = [431,460]) || (random = [931,960]) || (random = [621,640])

;---------------------------------------------------------------------------
[State -1, Pulling Cannon]
type = ChangeState
value = 1060
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
triggerall = enemynear,pos Y > -70
triggerall = enemynear,vel Y > -1
triggerall = ctrl
triggerall = P2bodydist X > 160
trigger1 = life >= 500
trigger1 = random = [300,399]
trigger2 = life < 500
trigger2 = random = [300,360]

;---------------------------------------------------------------------------
[State -1, AI A Med Punch]
type = ChangeState
value = 610
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
triggerall = P2bodydist X = [-20,5]
triggerall = P2bodydist Y = [-5,5]
trigger1 = ctrl
trigger1 = stateno = 7001

;---------------------------------------------------------------------------
[State -1, AI A Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
triggerall = P2bodydist X = [-1,50]
trigger1 = stateno = 610 && movecontact
trigger2 = stateno = 620 && movecontact
trigger3 = stateno != 70001 && ctrl = 1
trigger3 = P2bodydist Y = [0,10]

;---------------------------------------------------------------------------
[State -1, AI Air Charge Vertical]
type = ChangeState
value = 1365
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = enemynear,vel Y = [-3,3]
triggerall = P2bodydist X = [51,110]
triggerall = random = [850,999]
trigger1 = (pos Y - enemynear,pos Y) = [-50,0]
trigger2 = (pos Y - enemynear,pos Y) = [0,113]

;---------------------------------------------------------------------------
[State -1,  AI Air Charge Down]
type = ChangeState
value = 1366
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
triggerall = P2bodydist X = [51,120]
triggerall = enemynear,vel Y > -1
triggerall = enemynear,pos Y > -50
triggerall = pos Y = [-130,-75]
trigger1 = ctrl
trigger1 = random = [850,999]

;---------------------------------------------------------------------------
[State -1, 620 => Down air Charge]
type = ChangeState
value = 1366
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 620 && time >= 6;12
trigger1 = enemynear,stateno != 5020
trigger1 = pos Y < enemynear,pos Y

;------------------------------------------------------
; Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = var(59) && RoundState = 2 
triggerall = Backedgedist > 50
triggerall = statetype != A
trigger1 = p2bodydist X = [-10,60]
trigger1 = (enemynear,stateno = [5100,5120]) || enemynear,statetype = L
trigger1 = stateno = 1012 && animtime = -1
trigger2 = stateno = 220 && moveguarded
trigger2 = animtime = -1


;------------------------------------------------------------------------------
;Recover Rolls
[state -1, recover F]
type = changestate
value = 890
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = backedgedist <= 40
trigger1 = P2bodydist x = [-10,50]
trigger2 = inguarddist
trigger2 = P2bodydist x > 150
trigger3 = enemynear,numproj > 0
trigger3 = P2bodydist x > 150

[state -1, recover B]
type = changestate
value = 895
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = backedgedist > 40
trigger1 =  P2bodydist x = [-10,70]
trigger2 = inguarddist 
trigger3 = enemynear,numproj > 0

;-----------------------------------------------------------------------------------
; Air Recovers

[state -1, Air recovers]
type = changestate
value = 5040
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
Triggerall = alive && canrecover
trigger1 = stateno = [5030,5035]
trigger2 = stateno = [5050,5035]

[state -1, Air recovers]
type = changestate
value = 5200
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
Trigger1 = alive && canrecover
trigger1 = stateno = 5050

[state -1, Air recovers]
type = changestate
value = 5200
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
Trigger1 = alive && canrecover
trigger1 = stateno = 5210




;--------------------------------------------------------------------------------
;                                 Mannual
;--------------------------------------------------------------------------------

;4200
[State -1, Final Canon]
type = ChangeState
value = 4200
triggerall = !var(59)
triggerall = command = "4200"
triggerall = !numhelper(184)
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = time >= 33
trigger6 = stateno = 1040
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29

;6000
[State -1, Laser Hyper]
type = ChangeState
value = 6000
triggerall = !var(59)
triggerall = command = "6000"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 3100
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = time >= 33
trigger6 = stateno = 1450
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29

;1710
[State -1, Laser Bullet]
type = ChangeState
value = 1710
triggerall = !var(59)
triggerall = command = "1710"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 4200
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = time >= 33
trigger6 = stateno = 1040
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29

;3344
[State -1, Mega Canon Hyper]
type = ChangeState
value = 3344
triggerall = !var(59)
triggerall = command = "3344"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 4200
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = time >= 33
trigger6 = stateno = 1040
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29

;1060
[State -1, Magnetic Power Pulse]
type = ChangeState
value = 1060
triggerall = !var(59)
triggerall = command = "1060"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1040
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29

;1040
[State -1, Pulse Canon]
type = ChangeState
value = 1040
triggerall = !var(59)
triggerall = command = "1040"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1120
trigger6 = movecontact
trigger7 = stateno = 3000
trigger7 = time <= 29


;3000
[State -1, Hyper Galactic Impact]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "3000"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1120
trigger6 = movecontact
trigger7 = stateno = 1450
trigger7 = time <= 29


;1450
[State -1, Galactic Beam]
type = ChangeState
value = 1450
triggerall = !var(59)
triggerall = command = "1450"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1120
trigger6 = movecontact
trigger7 = stateno = 3100
trigger7 = time <= 29

;3100
[State -1, Laser Mega Power]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "3100"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 1012
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1120
trigger6 = movecontact
trigger7 = stateno = 1450
trigger7 = time <= 29



;1012
[State -1, Bomb]
type = ChangeState
value = 1012
triggerall = !var(59)
triggerall = command = "1012"
triggerall = (numhelper(6191012) + numhelper(6191013) + numhelper(6191014)) < 3
trigger1 = (statetype = s) && ctrl

;1013
[State -1, Bomb]
type = ChangeState
value = 1013
triggerall = !var(59)
triggerall = command = "1013"
triggerall = (numhelper(6191012) + numhelper(6191013) + numhelper(6191014)) < 3
trigger1 = (statetype = s) && ctrl

;1014
[State -1, Bomb]
type = ChangeState
value = 1014
triggerall = !var(59)
triggerall = command = "1014"
triggerall = (numhelper(6191012) + numhelper(6191013) + numhelper(6191014)) < 3
trigger1 = (statetype = s) && ctrl

;Charge Ground
[State -1, Charge]
type = ChangeState
value = 1364
triggerall = !var(59)
triggerall = command = "1364"
triggerall = !var(59)
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;Charge Air 1
[State -1, Charge]
type = ChangeState
value = 1365
triggerall = !var(59)
triggerall = command = "10599"
triggerall = !var(59)
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;Charge Air 2
[State -1, Charge]
type = ChangeState
value = 1366
triggerall = !var(59)
triggerall = command = "1364"
triggerall = !var(59)
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact




;10599
[State -1, Groot Help]
type = ChangeState
value = 10599
triggerall = !var(59)
triggerall = command = "10599"
triggerall = !numhelper(10600)
trigger1 = (statetype = s) && ctrl
 trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 1012
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 1120
trigger6 = movecontact
trigger7 = stateno = 1450
trigger7 = time <= 29

;Machine Gun
[State -1, Laser Mmachine Gun]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "1120"
trigger1 = (statetype = s) && ctrl
 trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 3344
trigger4 = time >= 25
trigger5 = stateno = 10599
trigger5 = time >= 33
trigger6 = stateno = 10599
trigger6 = movecontact
trigger7 = stateno = 1450
trigger7 = time <= 29

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
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
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
trigger5 = (stateno = 240) && (movecontact = 1)

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (movecontact = 1)
trigger3 = (stateno = 240) && (movecontact = 1)

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
 trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
  trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
   trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
  trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
  trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
  trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = StateType != A
trigger1 = Command = "SJ"
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 220 && movehit

;-----------------------------
;Air Dash (Backward)
[State -1, Air Dash (Backward)]
type = ChangeState
value = 110
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------
; Air Dash (Front)
[State -1, Air Dash (Front)]
type = ChangeState
value = 115
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------

;------------------------------------------------------------------------------
;Recover Rolls
[state -1, recover F]
type = changestate
value = 890
triggerall = !var(59) 
triggerall = RoundState = 2
triggerall = stateno = 5120
TriggerAll = alive 
trigger1 = command = "holdfwd"

[state -1, recover B]
type = changestate
value = 895
triggerall = !var(59) 
triggerall = RoundState = 2
triggerall = stateno = 5120
TriggerAll = alive 
trigger1 = command = "holdback"

;------------------------------------------------------------------------------
; Guardpush ground
[State -1, 464]
type = ChangeState
value = 464
triggerall = !var(59)
triggerall = statetype != A && statetype != L
triggerall = (stateno = [150,155]) 
trigger1 = command = "recovery"
