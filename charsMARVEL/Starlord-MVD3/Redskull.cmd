

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Button Remapping |-----------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Default Values |-------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;--------------AI commands
[Command]
name = "AI1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI2"
command = D,D,D,F,F,U,F,B,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "AI20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "AI21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "AI22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "AI24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1

[Command]
name = "AI26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "AI27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "AI28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Super Motions |--------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;---------------------------HYPERS-----------------------------------;

;DUST OF DEATH
[Command]
name = "DustofDeath"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "DustofDeath"
command = ~D, DF, F, a+c
time = 20
[Command]
name = "DustofDeath"
command = ~D, DF, F, b+c
time = 20

;DEATH RAY
[Command]
name = "DeathRay"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "DeathRay"
command = ~D, DB, B, a+c
time = 20
[Command]
name = "DeathRay"
command = ~D, DB, B, b+c
time = 20

;COSMIC POWER
[Command]
name = "CosmicPower"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "CosmicPower"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "CosmicPower"
command = ~D, DB, B, y+z
time = 20

;WARMACHINE
[Command]
name = "Warmachine"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "Warmachine"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "Warmachine"
command = ~D, DF, F, y+z
time = 20

;[Command]
;name = "wave"
;command = ~D, DB, B, z+c
;time = 20


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Special Motions |------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Luger
[Command]
name = "luger"
command = ~D, DF, F, x
[Command]
name = "luger"
command = ~D, DF, F, y
[Command]
name = "luger"
command = ~D, DF, F, z

;Lazer Lash
[Command]
name = "LazerLash"
command = ~D, DB, B, x
[Command]
name = "LazerLash"
command = ~D, DB, B, y
[Command]
name = "LazerLash"
command = ~D, DB, B, z

;Charging Smash
[Command]
name = "smash"
command = ~D, DF, F, a
[Command]
name = "smash"
command = ~D, DF, F, b
[Command]
name = "smash"
command = ~D, DF, F, c

;Teleport
[Command]
name = "Teleport Back"
command = ~D, DB, B, a
[Command]
name = "Teleport"
command = ~D, DB, B, b
[Command]
name = "Teleport Far"
command = ~D, DB, B, c

;Gernade
[Command]
name = "Gernade"
command = a+x
[Command]
name = "Gernade"
command = b+y
[Command]
name = "Gernade"
command = c+z

;flying
;[Command]
;name = "bonovox"
;command = ~B, D, B, a+b
[Command]
name = "bonovox"
command = ~B, D, B, b+a

;tornado
;[Command]
;name = "ragnarok_hammer"
;command = ~D, DB, B, a+b

;[Command]
;name = "ragnarok_hammer"
;command = ~D, DB, B, a+c

;[Command]
;name = "ragnarok_hammer"
;command = ~D, DB, B, b+c








[Command]
name = "counter"
command = ~B, DB, D, x, x , x,z,x,z,x,z



[Command]
name = "recovery_roll"
command = ~B, DB, D, a
[Command]
name = "recovery_roll"
command = ~B, DB, D, ~a

[Command]
name = "recovery_roll"
command = ~B, DB, D, b
[Command]
name = "recovery_roll"
command = ~B, DB, D,~b

[Command]
name = "recovery_roll"
command = ~B, DB, D,c
[Command]
name = "recovery_roll"
command = ~B, DB, D,~c

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Double Tap |-----------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| 2/3 Button Combination |-----------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "superj3press"
command = a+b+c
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

[Command]
name = "dash2press"
command = x+y+z
time = 8



 [Command]
name = "xyz"
command = x+y+z
time = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Dir + Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-|hold Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "mjolnirspin"
command = /x
time = 5

[Command]
name = "mjolnirspin"
command = /y
time = 5

[Command]
name = "mjolnirspin"
command = /z
time = 5

[Command]
name = "hold_c"
command = /c
time = 5

[Command]
name = "superjump"
command = $D, $U
time = 10
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Single Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Hold Dir |--------------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTT  Thor      A.I. TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Activate AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
var(59)=1
;---------------------------------------------------------------------
[State -1, Kill AI]
type = VarSet
triggerall = var(59)=1
trigger1 = life < 0
trigger2 = winko
trigger3 = loseko
value = 0
v = 59
;-----------------------------------------------------------------------------
;Throw
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
trigger1 = P2StateType = S
triggerall = P2BodyDist X <= 40 && Random <= 250
value = 800
persistent = 0
;-----------------------------------------------------------------------
[State -1,AI Fall Recovery]
type=changestate
value= ifelse((pos y>=-20), 5200, 5210)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=-1 && random<50
;-------------------------------------------------------------------------
; Standing Low Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59)=1
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = p2bodydist x <=55
triggerall = p2bodydist y = [-70,5]
triggerall = statetype != A
triggerall = random < 500
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439])&& movehit
trigger1 = random < 250
trigger1 = p2bodydist x <= 40
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449])&& movehit
trigger1 = random < 550
trigger1 = p2bodydist x <= 50
;---------------------------------------------------------------------------
;Standing Low Kick
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != C && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [400,409])&& movehit
trigger1 = random < 100
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439])&& movehit
trigger1 = random < 250
;---------------------------------------------------------------------------
;Standing High Kick
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1&& p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [240,249])|| (stateno = [440,449])&& movehit && stateno != 225
trigger1 = random < 800
trigger1 = p2bodydist X >= 20
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59)=1
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = p2bodydist x <=55
triggerall = statetype != A
triggerall = random < 200
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439])&& movehit
trigger1 = random < 500
trigger1 = p2bodydist x <= 40
;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = Var(0)>=1 && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 35 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 35 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1
;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [400,409])&& movehit
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439])&& movehit
trigger1 = random < 250
;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1&& p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [240,249])|| (stateno = [440,449])&& movehit && stateno != 225
trigger1 = random < 50
trigger1 = p2bodydist x <=60
;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59)=1
trigger1 = p2bodydist x <= 40
trigger1 = P2BodyDist Y = [-70, 30]
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)=1
trigger1 = (stateno = [600,609])&& movecontact
trigger1 = random < 200
trigger2 = (stateno = [630,639])&& movecontact
trigger1 = random < 800
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(59)=1
trigger1 = (stateno = [610,619])&& movecontact
trigger1 = random < 150
trigger2 = (stateno = [630,639])&& movecontact
trigger1 = random < 800
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59)=1
trigger1 = (stateno = [600,609])&& movecontact
;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)=1
trigger1 = (stateno = [610,619])&& movecontact
trigger1 = random < 850
trigger2 = (stateno = [630,639])&& movecontact
trigger1 = random < 150
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59)=1
trigger1 = (stateno = [620,629])&& movecontact
trigger1 = random < 800
trigger2 = (stateno = [640,649])&& movecontact
trigger1 = random < 150
;-----------------------------------------------------------------------------
[State -1,Jump]
type = ChangeState
value = 40
triggerall = stateno != 100 && pos y = 0 && ctrl
triggerall = var(59)=1
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210)
trigger2 = (p2bodydist y = [-40,-1])
trigger2 = p2bodydist x <= 50
;-----------------------------------------------------------------------------
[State -1,Jump]
type = ChangeState
value = 40
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59)=1
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A
trigger1 = (p2bodydist x = [150,170]) && random <= 400
trigger1 = enemy,backedgedist < 70
;-----------------------------------------------------------------------------
[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(59)=1
triggerall = stateno != 105
triggerall = backedgedist > 50
triggerall = p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70
trigger1 = statetype = S
trigger1 = ctrl && random < 500 ;&& enemy,ctrl = 0
trigger2 = p2statetype = L
trigger2 = statetype = S
trigger2 = ctrl && random < 500
trigger2 = p2bodydist x = [0,40]
;-----------------------------------------------------------------------------
[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(59)=1
triggerall = stateno != 105
triggerall = backedgedist > 50
triggerall = p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70
trigger1 = statetype = S
trigger1 = ctrl && random < 500 ;&& enemy,ctrl = 0
trigger2 = p2statetype = L
trigger2 = statetype = S
trigger2 = ctrl && random < 500
trigger2 = p2bodydist x = [0,40]
;-----------------------------------------------------------------------------
[State -1, AI Super Jump 2]
type = ChangeState
value = 700
triggerall = stateno != 100 && pos y = 0 && ctrl
triggerall = (var(59)=1)
triggerall = statetype != A
triggerall = (p2bodydist y = [-300,-70])
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x = [ 20, 50]
trigger1 = random <= 1000 && p2movetype != A
trigger1 = p2statetype = S
trigger2 = enemy,vel y < -1
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210)
trigger2 = p2bodydist x <= 30
trigger3 = P2MoveType != H
trigger3 = P2BodyDist Y < -90
trigger3 = enemy,vel y <= 0
trigger3 = random < 4000
;-----------------------------------------------------------------------------
[State -1, Air]
type = ChangeState
value = 700
triggerall = (var(59)=1)
triggerall = statetype != A
trigger1 = (StateNo = 420) && (Movehit)
;-----------------------------------------------------------------------------
[State -1,veladd]
type = Veladd
triggerall = (var(59)=1)
triggerall = prevstateno = 700 ; the superjumo state
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x = [ 20, 100]
trigger1 = random <= 10000 && p2movetype != A
trigger1 = p2statetype = A
trigger3 = random < 40000; jump state
x = .4 ; maybe you need to modify these valu
;------------------------------------------------------------
[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)=1
triggerall = stateno != 100 && stateno != 20
triggerall = statetype != A && ctrl && POS Y = 0
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = p2bodydist x > 50
trigger1 = random < 800
trigger2 = (enemy,stateno = [120,155]) || moveguarded
trigger2 = p2bodydist x > 40 && p2movetype != A
trigger2 = random < 800
trigger3 = P2BodyDist X > 150
trigger3 = random < 80

[State -1, AI Walk Fwd]
type = ChangeState
value = 20
triggerall = var(59)=1
triggerall = stateno != 20 && stateno != 100
triggerall = statetype != A && ctrl && POS Y = 0
trigger1 = p2bodydist x >= 10 && random < 800
trigger1 = p2bodydist y = [-20,5]
trigger1 = p2movetype != A
trigger2 = (p2bodydist x = [10,110])
trigger2 = p2bodydist y = [-20,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 700
trigger2 = (enemy,facing = facing)
trigger3 = p2bodydist x >= 10 && random < 800
trigger3 = p2bodydist y = [-20,5]
trigger3 = p2movetype != A
trigger3 =(enemy,stateno = [120,155]) || moveguarded

[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(59)=1
triggerall = stateno = 100 ;|| stateno = 20
trigger1 = P2movetype = A && (enemy,facing != facing)
trigger2 = p2bodydist x <4
value = 0
ctrl = 1

[State -1, AI Walk Fwd Stop]
type = ChangeState
triggerall = var(59)=1
triggerall = stateno = 20 ;|| stateno = 100
trigger1 = P2movetype = A && (enemy,facing != facing)
trigger2 = p2bodydist x < 4
value = 0
ctrl = 1


;--------------------------------------------------------------------------
[State -1, luger]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
trigger1 = P2bodydist X >=150 && Ctrl && Random <= 50
trigger2 = StateNo = 220 && MoveContact && Random <= 80
value = 1000
persistent = 0

[State -1, Lazer Whip]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
trigger1 = P2bodydist X >=100 && Ctrl && Random <= 40
trigger2 = StateNo = 220 && MoveContact && Random <= 60
value = 1010
persistent = 0

[State -1, Charge]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
trigger1 = P2bodydist X >=50 && Ctrl && Random <= 20
trigger2 = StateNo = 220 && MoveContact && Random <= 20
value = 1012
persistent = 0

[State -1, luger]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
trigger1 = P2bodydist X >=20 && Ctrl && Random <= 10
trigger2 = StateNo = 220 && MoveContact && Random <= 10
value = 1250
persistent = 0

[State -1, Teleport]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
trigger1 = P2bodydist X >=200 && Ctrl && Random <= 50
;trigger2 = StateNo = 220 && MoveContact && Random <= 80
value = 1200
persistent = 0


;------------------HYPERS---------------------------------------------------
[State -1, Warmachine]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
triggerall = Power > 1000
trigger1 = P2bodydist X >=175 && Ctrl && Random <= 100
trigger2 = StateNo = 220 && MoveContact && Random <= 80
value = 3900
persistent = 0

[State -1, Toxic Gas]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A
triggerall = Power > 1000
trigger1 = P2bodydist X >=50 && Ctrl && Random <= 30
trigger2 = StateNo = 220 && MoveContact && Random <= 60
value = 3100
persistent = 0

;[State -1, Cosmic]
;type = ChangeState
;triggerall = Var(59)>=1&& StateType != A
;triggerall = Power > 1000
;trigger1 = P2bodydist X >=100 && Ctrl && Random <= 60
;trigger2 = StateNo = 220 && MoveContact && Random <= 20
;value = 3333
;persistent = 0

;[State -1, Lightning]
;type = ChangeState
;triggerall = Var(59)>=1&& StateType != A
;triggerall = Power > 1000
;trigger1 = P2bodydist X >=120 && Ctrl && Random <= 80
;trigger2 = StateNo = 220 && MoveContact && Random <= 10
;value = 3500
;persistent = 0

;-----------------------------------------------------------------------------
;AI Standing Guard
[State -1]
type = ChangeState
triggerall = var(59)=1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = P2Movetype = A
value = 130
;-----------------------------------------------------------------------------
;AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(59)=1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152
;-----------------------------------------------------------------------------
;AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(59)=1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = P2Movetype = A
value = 131
;-----------------------------------------------------------------------------
;AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(59)=1 && (Statetype != A) && (P2statetype != C) && (P2Movetype = A)
trigger1 = 1
trigger1 = stateno = 152
value = 150
;-----------------------------------------------------------------------------
;AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(59)=1 && (Statetype = A) && (ctrl = 1)
trigger1 = P2Movetype = A
value = 132
;==========================================================================
;AI Specials
;==========================================================================


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[State -1, ccosmic]
type = ChangeState
triggerall = command = "CosmicPower" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3000
triggerall = power >= 1000


[State -1, ccosmic2]
type = ChangeState
;triggerall = Var(59) <= 0 && command = "DustofDeath" && statetype !=A
triggerall = command = "DustofDeath" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3100
triggerall = power >= 1000

[State -1, ccosmic3]
type = ChangeState
triggerall = command = "DeathRay" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3333
triggerall = power >= 1000

[State -1, Warmachine]
type = ChangeState
triggerall = command = "Warmachine" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3900
triggerall = power >= 1000
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;luger
[State -1, Luger]
type = ChangeState
triggerall = Var(59) <= 0 && command = "luger" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1000

[State -1, lazerlash]
type = ChangeState
triggerall = Var(59) <= 0 && command = "LazerLash" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1012
 ;LazerLash
 
[State -1, cosmicsmash]
type = ChangeState
triggerall = Var(59) <= 0 && command = "smash" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1010



[State -1, Teleport]
type = ChangeState
triggerall = Var(59) <= 0 && command = "Teleport" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1003

[State -1, Teleport Back]
type = ChangeState
triggerall = Var(59) <= 0 && command = "Teleport Back" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1004

[State -1, Teleport Far]
type = ChangeState
triggerall = Var(59) <= 0 && command = "Teleport Far" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1005

[State -1, Gernade Toss]
type = ChangeState
triggerall = Var(59) <= 0 && command = "Gernade" && statetype !=A
trigger1 = ctrl
;trigger2 =(stateno = [200,250]) || (stateno = [400,450])
;trigger2 = movecontact
value = 1250


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Recovery Roll - based code by Flowagirl/Necromancer archive codes
[State -1, Fall]
type = VarSet
triggerall = alive 
trigger1 = command = "recovery_roll"
trigger1 = stateno = 5050 || stateno = 5071 || stateno = 5100
v = 20
value = 1

[State -1, roll]
type = ChangeState
triggerall = alive 
trigger1 = Var(20) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 6500

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;guard push - based code by Soldats/MystikBlaze archive codes
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Flying mode
;[State -1, fly]
;type = ChangeState
;triggerall = command = "bonovox"
;triggerall = stateno !=12001
;trigger1 = ctrl
;value = 12000


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Run Punch
[State -1, Run punch]
type = ChangeState
value = 223
trigger1 = command = "xyz"
triggerall = statetype != A && ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT   
[State -1, Super Jump]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "superjump"
trigger2 = command = "superj3press"
value = 2999

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Fwd]
type = ChangeState
triggerall = statetype = S && ctrl 
triggerall = stateno != 100 && stateno != 52
trigger1 = command = "FF" 
trigger2 = command = "dash2press" 
value = 100
;persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) <= 0 && statetype = S && ctrl
trigger1 = command = "BB"
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Flying]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 106
trigger1 = PrevStateNo != 106
trigger1 = command = "FF"
trigger1 = ctrl
value = 106
persistent = 0


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Throw]
type = ChangeState
triggerall = command = "y" || command = "z"
triggerall = statetype = S || statetype = C
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
value = 800
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
;trigger4 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = stateno = 630 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno=630 && movecontact
;trigger4 = stateno = 640 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;[State -1, Jump medium Punch2]
;type=ChangeState
;triggerall = Var(59) <= 0
;value=615
;triggerall = command = "y"
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 610 && movecontact
;trigger2 = Time>=6

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
;trigger6 = stateno = 615 && movecontact


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
;trigger4 = stateno = 615 && movecontact
trigger4 = stateno = 630 && movecontact



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
;trigger6 = stateno = 615 && movecontact

;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(0)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(0)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)
