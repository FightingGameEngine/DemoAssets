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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
;----------------------------------------------------------------------
;Hyper Moves

[Command]
name = "Hyperfireball"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Hyperfireball"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "Hyperfireball"
command = ~D, DF, F, x+z
time = 20


[Command]
name = "Hyperchain"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Hyperchain"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "Hyperchain"
command = ~D, DB, B, x+z
time = 20


[Command]
name = "Hellcycle"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Hellcycle"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "Hellcycle"
command = ~D, DF, F, a+c
time = 20


[Command]
name = "Penancestare"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Penancestare"
command = ~D, DB, B, c+b
time = 20

[Command]
name = "Penancestare"
command = ~D, DB, B, a+c
time = 20


;----------------------------------------------------------------------
;Special Moves
[Command]
name = "FireballWeak"
command = ~D, DF, F, x
time = 20

[Command]
name = "Fireball"
command = ~D, DF, F, y
time = 20

[Command]
name = "FireballStrong"
command = ~D, DF, F, z
time = 20

[Command]
name = "FlameWhip"
command = ~D, DB, B, x
time = 20

[Command]
name = "FlameWhip"
command = ~D, DB, B, y
time = 20

;[Command]
;name = "FlameWhip"
;command = ~D, DB, B, z
;time = 20

[Command]
name= "Flameuppercut"
command = ~F, D, F, x
time = 20

[Command]
name= "Flameuppercut"
command = ~F, D, F, y
time = 20

[Command]
name= "Flameuppercut"
command = ~F, D, F, z
time = 20

[Command]
name= "Charge"
command = ~F, D, F, a
time = 20

[Command]
name= "Charge"
command = ~F, D, F, b
time = 20

[Command]
name= "Charge"
command = ~F, D, F, c
time = 20

[Command]
name = "flamebreath_low"
command = ~D, DF, F, a
time = 20

[Command]
name = "flamebreath"
command = ~D, DF, F, b
time = 20

[Command]
name = "flamebreath_high"
command = ~D, DF, F, c
time = 20

[Command]
name = "FirePillar"
command = ~D, DB, B, a
time = 20

[Command]
name = "FirePillar"
command = ~D, DB, B, b
time = 20

[Command]
name = "FirePillarD"
command = ~D, DB, B, c
time = 20

[Command]
name = "ArialChainattack"
command = ~D, DF, F, x
time = 20

[Command]
name = "ArialChainattack"
command = ~D, DF, F, y
time = 20

[Command]
name = "ArialChainattack"
command = ~D, DF, F, z
time = 20

[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3



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
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

;---------------------------------------------------------------------------
;Standing Hard Chain Attack

[State -1, Standing Hard Chain Attack]
type=changestate
value = 221
triggerall = command="z"&&command="holdback"&&command!="holddown"&&statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 210)  ||  (stateno = 220)  ||  (stateno = 240)   ||  (stateno = 245)  
trigger2 = movecontact

;----------------------------------------------------------------------------
;Hellcycle
[State -1, Hellcycle]
type = ChangeState
value = 4000
triggerall = command = "Hellcycle"
triggerall = Var(59)= 0
triggerall = power > 2000
trigger1 = statetype != A
trigger1 = ctrl

;[State -1, Hellcycle]
;type = ChangeState
;value = 4000
;triggerall = command = "Hellcycle"
;triggerall = power > 1000
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 250)  ||  (stateno = 240)  ||  (stateno = 2110)
;trigger2 = movecontact

;----------------------------------------------------------------------------
;Hyper Chain
[State -1, Hellcycle]
type = ChangeState
value = 4008
triggerall = command = "Hyperchain"
triggerall = Var(59)= 0
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;Hyper Fireball
[State -1, Hellcycle]
type = ChangeState
value = 4009
triggerall = command = "Hyperfireball"
triggerall = Var(59)= 0
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Penance Stare
[State -1, Penancestare]
type = ChangeState
value = 4018
triggerall = command = "Penancestare"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = power = 3000
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------
;Flaming Charge
[State -1, Charge]
type = ChangeState
value = 3050
triggerall = command = "Charge"
triggerall = statetype != A
triggerall = NumHelper(8881) = 0
trigger1 = ctrl
trigger2 = (stateno = 250)
trigger2 = movecontact
triggerall = P2Life > 0

;-----------------------------------------------------------------------------
;flamming uppercut
[State -1, Flameuppercut]
type = ChangeState
value = 3000
triggerall = command = "Flameuppercut"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 450)
trigger2 = movecontact

;-----------------------------------------------------------------------------
;Flame Whip
[State -1, Flame Whip]
type = ChangeState
value = 3070
triggerall = command = "FlameWhip"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 450)
trigger2 = movecontact

;----------------------------------------------------------------------------
;Fireball Medium
[State -1, Fireball]
type = ChangeState
value = 2012
triggerall = command = "Fireball"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 245)    
trigger2 = movecontact

;----------------------------------------------------------------------------
;Fireball Weak
[State -1, Fireball]
type = ChangeState
value = 2022
triggerall = command = "FireballWeak"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 245)    
trigger2 = movecontact

;----------------------------------------------------------------------------
;Fireball Strong
[State -1, Fireball]
type = ChangeState
value = 2032
triggerall = command = "FireballStrong"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 245)
trigger2 = movecontact

;----------------------------------------------------------------------------
;flamebreath
[State -1, flamebreath]
type = ChangeState
value = 2013
triggerall = command = "flamebreath"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 245)    
trigger2 = movecontact

;----------------------------------------------------------------------------
;flamebreath low
[State -1, flamebreath1]
type = ChangeState
value = 2015
triggerall = command = "flamebreath_low"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 450)    
trigger2 = movecontact


;----------------------------------------------------------------------------
;flamebreath low
[State -1, flamebreath2]
type = ChangeState
value = 2020
triggerall = command = "flamebreath_high"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 450)    
trigger2 = movecontact

;----------------------------------------------------------------------------
;Fire Pilar
[State -1, FirePillar]
type = ChangeState
value = 2018
triggerall = command = "FirePillar"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 420)   
trigger2 = movecontact
;----------------------------------------------------------------------------
;Fire Pilar Distant
[State -1, FirePillar]
type = ChangeState
value = 2050
triggerall = command = "FirePillarD"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 420)   
trigger2 = movecontact

;----------------------------------------------------------------------------
;ArialChainattack
[State -1, ChainSweep]
type = ChangeState
value = 3060
triggerall = command = "ArialChainattack"
triggerall = Var(59)= 0
triggerall = pos Y <= -40
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 640)  ||  (stateno = 650)   ||  (stateno = 610)  ||  (stateno = 620)  
trigger2 = movecontact

;===========================================================================


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = Var(59)= 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Var(59)= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)  ||  (stateno = 230)  || (stateno = 240)   
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Var(59)= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)  ||  (stateno = 210)  ||  (stateno = 230)   ||  (stateno = 240)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = Var(59)= 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)    
trigger2 = movecontact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = Var(59)= 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)  ||  (stateno = 230)    
trigger2 = movecontact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "c"
triggerall = Var(59)= 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)  ||  (stateno = 250)  ||  (stateno = 230)   ||  (stateno = 240)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = Var(59)= 0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430)      
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = Var(59)= 0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  ||  (stateno = 430)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  ||  (stateno = 410)  ||  (stateno = 430)   ||  (stateno = 460)  
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = Var(59)= 0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = Var(59)= 0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  ||  (stateno = 430)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = Var(59)= 0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  ||  (stateno = 410)  ||  (stateno = 430)   ||  (stateno = 460)  ||  (stateno = 440) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 600)  ||  (stateno = 640)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 610)  ||  (stateno = 600)  ||  (stateno = 640) ||  (stateno = 650)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 610)  ||  (stateno = 600)  
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 610)  ||  (stateno = 600)  ||  (stateno = 640) ||  (stateno = 620)
trigger2 = movecontact
