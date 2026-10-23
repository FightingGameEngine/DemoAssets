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


;-| Super Motions |--------------------------------------------------------

;Go Time
[command]
name = "qcf_ab"
command = ~D, DF, F, a+b

[command]
name = "qcf_ab"
command = ~D, DF, F, b+c

[command]
name = "qcf_ab"
command = ~D, DF, F, a+c

;Big Bang Burst
[command]
name = "qcb_xy"
command = ~D, DB, B, x+y

[command]
name = "qcb_xy"
command = ~D, DB, B, x+z

[command]
name = "qcb_xy"
command = ~D, DB, B, y+z

; Starmine
[command]
name = "qcf_xy"
command = ~D, DF, F, x+y

[command]
name = "qcf_xy"
command = ~D, DF, F, x+z

[command]
name = "qcf_xy"
command = ~D, DF, F, y+z

;-| Special Motions |------------------------------------------------------
[command]
name = "qcb_a"
command = ~D, DB, B, a
time = 15

[command]
name = "qcb_b"
command = ~D, DB, B, b
time = 15

[command]
name = "qcb_c"
command = ~D, DB, B, c
time = 15

[command]
name = "dp_x"
command = ~F, D, DF, x

[command]
name = "dp_y"
command = ~F, D, DF, y

[command]
name = "dp_z"
command = ~F, D, DF, z

[command]
name = "qcf_a"
command = ~D, DF, F, a

[command]
name = "qcf_b"
command = ~D, DF, F, b

[command]
name = "qcf_c"
command = ~D, DF, F, c


[command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[command]
name = "dd_x"
command = ~D, D, x
time = 15

[command]
name = "dd_y"
command = ~D, D, y
time = 15

[command]
name = "dd_z"
command = ~D, D, z
time = 15

[command]
name = "hcf_x"
command = ~B,DB, D, DF, F, x
time = 15

[command]
name = "hcf_y"
command = ~B,DB, D, DF, F, y
time = 15

[command]
name = "hcf_z"
command = ~B,DB, D, DF, F, z

[command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15

[command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15

[command]
name = "qcf_z"
command = ~D, DF, F, z
time = 15
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| PartnerChange |------------

[command]
name = "counter"
command = /F, x+a
time = 8

[command]
name = "counter"
command = /F, y+b
time = 8

[command]
name = "counter"
command = /F, z+c
time = 8

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
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

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "release_z"
command = ~z
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

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
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

;===========================================================================
;Go Time!
[state -1]
type = changestate
value = 4200
triggerall = command = "qcf_ab"
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1000,1020]) || (stateno = [1060,1062]) || (stateno = [1070,1072]) && time > 16
trigger4 = (stateno = [1200,1210]) && time > 20
trigger5 = (stateno = [1100,1100]) || (stateno = [1500,1520])
trigger5 = movecontact

;---------------------------------------------------------------------------
;Big Bang Burst
[state -1, go]
type = changestate
value = 4100
triggerall = command = "qcb_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1000,1020]) || (stateno = [1060,1062]) || (stateno = [1070,1072]) && time > 16
trigger4 = (stateno = [1200,1210]) && time > 20
trigger5 = (stateno = [1100,1120]) || (stateno = [1500,1520])
trigger5 = movecontact

;Air Starmine
[state -1, go]
type = changestate
value = 4050
triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype =a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1050,1052]) || (stateno = [1060,1062]) || (stateno = [1070,1072]) && time > 16


;Starmine
[state -1, go]
type = changestate
value = 4000
triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1000,1020]) || (stateno = [1060,1062]) || (stateno = [1070,1072]) && time > 16
trigger4 = (stateno = [1200,1210]) && time > 20
trigger5 = (stateno = [1100,1120]) || (stateno = [1500,1520])
trigger5 = movecontact
;---------------------------------------------------------------------------
;Spark Trail
[state -1, a2]
type = changestate
value = 1600
triggerall = command = "qcf_a"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1610
triggerall = command = "qcf_b"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1620
triggerall = command = "qcf_c"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
;---------------------------------------------------------------------------
;Reverse Flash weak
[state -1, a2]
type = changestate
value = 1500
triggerall = command = "qcb_a"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Reverse Flash medium
[state -1, a2]
type = changestate
value = 1510
triggerall = command = "qcb_b"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Reverse Flash strong
[state -1, a2]
type = changestate
value = 1520
triggerall = command = "qcb_c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Rising Sunshine weak
[state -1, a2]
type = changestate
value = 1400
triggerall = command = "dp_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact

;Rising Sunshine medium
[state -1, a2]
type = changestate
value = 1410
triggerall = command = "dp_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact

;Rising Sunshine medium
[state -1, a2]
type = changestate
value = 1420
triggerall = command = "dp_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Freestyle Kick weak
[state -1, a2]
type = changestate
value = 1300
triggerall = command = "qcf_a"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Freestyle Kick medium
[state -1, a2]
type = changestate
value = 1305
triggerall = command = "qcf_b"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Freestyle Kick medium
[state -1, a2]
type = changestate
value = 1310
triggerall = command = "qcf_c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jolt Flare
[state -1, steal]
type = changestate
value = 1200
triggerall = numhelper(11000) = 0
triggerall = numhelper(11001) = 0
triggerall = numhelper(11002) = 0
triggerall = numhelper(11010) = 0
triggerall = command = "qcb_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1205
triggerall = numhelper(11000) = 0
triggerall = numhelper(11001) = 0
triggerall = numhelper(11002) = 0
triggerall = numhelper(11010) = 0
triggerall = command = "qcb_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1210
triggerall = numhelper(11000) = 0
triggerall = numhelper(11001) = 0
triggerall = numhelper(11002) = 0
triggerall = numhelper(11010) = 0
triggerall = command = "qcb_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
;===========================================================================
;Mini July (weak)
[state -1,z]
type = changestate
value = 1100
triggerall = command = "dd_x"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Mini July (medium)
[state -1,z]
type = changestate
value = 1105
triggerall = command = "dd_y"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Mini July (strong)
[state -1,z]
type = changestate
value = 1110
triggerall = command = "dd_z"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Multiple Firework weak
[state -1, a2]
type = changestate
value = 1055
triggerall = command = "hcf_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Multiple Firework medium
[state -1, a2]
type = changestate
value = 1065
triggerall = command = "hcf_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Multiple Firework strong
[state -1, a2]
type = changestate
value = 1075
triggerall = command = "hcf_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;air Firework weak
[state -1, a2]
type = changestate
value = 1050
triggerall = command = "qcf_x"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;air Firework medium
[state -1, a2]
type = changestate
value = 1060
triggerall = command = "qcf_y"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;air Firework strong
[state -1, a2]
type = changestate
value = 1070
triggerall = command = "qcf_z"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])

;---------------------------------------------------------------------------
;Firework weak
[state -1, a2]
type = changestate
value = 1000
triggerall = command = "qcf_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Firework medium
[state -1, a2]
type = changestate
value = 1010
triggerall = command = "qcf_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Firework medium
[state -1, a2]
type = changestate
value = 1020
triggerall = command = "qcf_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;counter strike 1
[state -1, counter]
type = changestate
value = 910
triggerall = (command = "counter") && (power >= 1000)
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
;personal space-----------------------------------------------

[state -1, guard push]
type = changestate
value = 160
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 162
triggerall = command = "guardpush"
triggerall = statetype = A
trigger1 = stateno = [154,155] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 161
triggerall = command = "guardpush"
triggerall = statetype = C
trigger1 = stateno = [151,153] ;the guard state numbers

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = !var(26)
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A) 
;trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)
;trigger2 = p2movetype != H

;--------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
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

;---------------------------------------------------------------------------
;Run Fwd
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = command = "FF"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------
;run back
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;===========================================================================
;jump strong kick
[state -1]
type = changestate
value = 40
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [230,270]
trigger2 = time < 1

;---------------------------------------------------------------------------
;taunt
;â€™Â§â€Â­
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
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
trigger1 = ctrl && stateno != [100,106]
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
trigger4 = (stateno = 635) && movecontact

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
trigger5 = (stateno = 635) && movecontact
trigger6 = (stateno = 640) && movecontact

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
trigger5 = (stateno = 635) && movecontact


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
trigger5 = (stateno = 635) && movecontact
trigger6 = (stateno = 640) && movecontact
