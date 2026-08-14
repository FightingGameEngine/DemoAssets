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
[Command]
name = "nova"
command = ~D, B, F, b
time = 30

[Command]
name = "lasers"
command = ~D, F, D, F, b
time = 25

[Command]
name = "sauzer"
command = ~D, F, D, F, y
time = 25

[Command]
name = "catch"
command = ~D, B, F, y
time = 20
;-| Special Motions |------------------------------------------------------
[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 20

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 20

[Command]
name = "stomp"
command = ~B, D, a
time = 20

[Command]
name = "stomp"
command = ~B, D, b
time = 20

[command]
name = "slideattack"
command = ~D, F, a
time = 20

[command]
name = "slideattack2"
command = ~D, F, b
time = 20

[Command]
name = "dive"
command = ~D, B, a
time = 20

[Command]
name = "dive2"
command = ~D, B, b
time = 20

[Command]
name = "waves"
command = ~D, B, a
time = 20

[Command]
name = "waves2"
command = ~D, B, b
time = 20

[Command]
name = "spark"
command = ~D, B, x
time = 20

[Command]
name = "spark2"
command = ~D, B, y
time = 20

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
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

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
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
;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "nova"
triggerall = power >= 3000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact

[State -1,]
type = ChangeState
value = 2500
triggerall = var(59) = 0
triggerall = command = "lasers"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "sauzer"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = command = "sauzer"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1]
type = ChangeState
value = 1700
triggerall = var(59) = 0
triggerall = command = "catch"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

[State -1,]
type = ChangeState
value = 1800
triggerall = var(59) = 0
triggerall = power >= 100
triggerall = command = "waves"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1
trigger16 = stateno = 550 && movecontact

[State -1,]
type = ChangeState
value = 1850
triggerall = var(59) = 0
triggerall = command = "waves2"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1
trigger16 = stateno = 550 && movecontact



[State -1,]
type = ChangeState
value = 1600
triggerall = var(59) = 0
triggerall = command = "stomp"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1


[State -1,]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "slideattack"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

; ƒwƒbƒhƒAƒ^ƒbƒN(‹­)1
[State -1,]
type = ChangeState
value = 1550
triggerall = var(59) = 0
triggerall = command = "slideattack2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

; ƒXƒpƒCƒ‰ƒ‹ƒAƒbƒp[iŽãj
[State -1,]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "shoryuken"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1
trigger16 = stateno = 550 && movecontact
trigger17 = stateno = 5120
trigger18 = stateno = 101 || stateno = 102

; ƒXƒpƒCƒ‰ƒ‹ƒAƒbƒp[i‹­j
[State -1,]
type = ChangeState
value = 1350
triggerall = var(59) = 0
triggerall = command = "shoryuken2"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1
trigger16 = stateno = 550 && movecontact
trigger17 = stateno = 5120
trigger18 = stateno = 101 || stateno = 102

[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "spark"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

; ƒfƒXƒ{[ƒ‹i‹­j
[State -1]
type = ChangeState
value = 1005
triggerall = var(59) = 0
triggerall = command = "spark2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

[State -1]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

[State -1]
type = ChangeState
value = 1105
triggerall = var(59) = 0
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

[State -1,]
type = ChangeState
value = 1150
triggerall = var(59) = 0
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 1155
triggerall = var(59) = 0
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "dive"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 1250
triggerall = var(59) = 0
triggerall = command = "dive2"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 510
triggerall = var(59) = 0
triggerall = command = "dash_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

;---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;‹ó’†ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; ƒoƒbƒNƒXƒeƒbƒv
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; ‹ó’†ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 112
triggerall = var(59) = 0
triggerall = vel x <= 0;-1 
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl


[State -1,]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "recovery" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

[State -1]
type = ChangeState
value = 1900
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"




[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 360
triggerall = var(59) = 0
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

; ‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) = 0
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 ƒ_ƒbƒVƒ…‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) = 0
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;--------------------------------------------------------------------------
; ƒ_ƒbƒVƒ…‹­ƒpƒ“ƒ` (ƒ_ƒbƒVƒ…’†)
[State -1,]
type = ChangeState
value = 511
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_y"

; ƒ_ƒbƒVƒ…Žãƒpƒ“ƒ` (ƒ_ƒbƒVƒ…’†)
[State -1,]
type = ChangeState
value = 500
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_x"

; ƒ_ƒbƒVƒ…ŽãƒLƒbƒN (ƒXƒ‰ƒCƒfƒBƒ“ƒOƒLƒbƒN)
[State -1,]
type = ChangeState
value = 550
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_a"

[State -1,]
type = ChangeState
value = 525
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_b"
;--------------------------------------------------------------------------
; Žãƒpƒ“ƒ` (‹ß‹——£)
[State -1,]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 210
trigger3 = time > 4
trigger4 = stateno = 500 && movecontact

; Žãƒpƒ“ƒ`
[State -1,]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200
trigger3 = time > 9
trigger4 = stateno = 210
trigger4 = time > 4
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 500 && movecontact

; ‹­ƒpƒ“ƒ` (‹ß‹——£)
[State -1,]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 500 && movecontact

; ‹­ƒpƒ“ƒ`
[State -1,]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 500 && movecontact

;-------------------------------------------------------
[State -1,]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 5
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 235
trigger2 = time > 3
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 500 && movecontact

; ŽãƒLƒbƒN
[State -1,]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time > 14
trigger3 = stateno = 260
trigger3 = time > 3
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 500 && movecontact
trigger7 = stateno = 250 && movecontact

; ‹­ƒLƒbƒN (‹ß‹——£)
[State -1,]
type = ChangeState
value = 280
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
;trigger4 = stateno = 250 && movecontact
trigger4 = stateno = 260 && movecontact
trigger5 = stateno = 500 && movecontact

; ‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 270
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 260 && movecontact
trigger8 = stateno = 500 && movecontact

;---------------------------------------------------
; ‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 =  stateno = 410
trigger3 =  time > 6
trigger4 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact
trigger9 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger3 = time > 4
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 250 && movecontact
;trigger8 = stateno = 280 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 500 && movecontact

;-------------------------------------------------

; ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A && vel x != 0 
trigger1 = ctrl = 1
;trigger2 = stateno = 610 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ` (‚’¼)
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = stateno = 600 && movecontact = 1 && AnimElem = 2, >= 1 && AnimElem = 3, <= 1

; ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 610 && movecontact = 1
trigger4 = stateno = 630 && movecontact = 1
trigger5 = stateno = 635 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
;trigger3 = stateno = 630 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒLƒbƒN (‚’¼)
[State -1]
type = ChangeState
value = 635
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1

; ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1

; ƒWƒƒƒ“ƒv‹­ƒLƒbƒN (‚’¼)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1

