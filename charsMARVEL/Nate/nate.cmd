;***************************************************************************;
;***************************************************************************;
;**************************** MUGEN TOURNAMENT 3 ***************************;
;***************************************************************************;
;***************************************************************************;

;-| Super Motions |--------------------------------------------------------

;BLAST TARGET
[command]
name = "BT"
command = ~D, DF, F, x+y
[command]
name = "BT"
command = ~D, DF, F, x+z
[command]
name = "BT"
command = ~D, DF, F, y+z

;MAXIMUM PSY
[command]
name = "MP"
command = ~D, DF, F, a+b
[command]
name = "MP"
command = ~D, DF, F, b+c
[command]
name = "MP"
command = ~D, DF, F, c+a

;ROCK SHOWER
[command]
name = "RS"
command = ~D, DB, B, x+y
[command]
name = "RS"
command = ~D, DB, B, x+z
[command]
name = "RS"
command = ~D, DB, B, y+z

;AGE OF APOCALIPSE
[Command]
name = "AOA"
command = ~D, DB, B, a+b
[Command]
name = "AOA"
command = ~D, DB, B, c+b
[Command]
name = "AOA"
command = ~D, DB, B, a+c

;-| Special Motions |------------------------------------------------------

[command]
name = "SP1"
command = ~D, DF, F, x
[command]
name = "SP1"
command = ~D, DF, F, y
[command]
name = "SP1"
command = ~D, DF, F, z

[command]
name = "TR1"
command = ~D, DF, F, a
[command]
name = "TR2"
command = ~D, DF, F, b
[command]
name = "TR3"
command = ~D, DF, F, c

[command]
name = "PT1"
command = ~D, DB, B, x
[command]
name = "PT2"
command = ~D, DB, B, y
[command]
name = "PT3"
command = ~D, DB, B, z

[command]
name = "SP2"
command = ~D, DB, B, a
[command]
name = "SP2"
command = ~D, DB, B, b
[command]
name = "SP2"
command = ~D, DB, B, c

[command]
name = "AP"
command = a+x
[command]
name = "AP"
command = b+y
[command]
name = "AP"
command = c+z

[command]
name = "fly"
command = a+b
[command]
name = "fly"
command = b+c
[command]
name = "fly"
command = c+a	;~D, D, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = U, D, B, F, U, D, B, F ;disable recovery
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "by"
command = b+y
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Other |--------------------------------------------------------------
[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "SJ"
command = $D, $U
time = 15

[Command]
name = "DU"
command = D,U
time = 20

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18

;===========================================================================;
				[Statedef -1]
;===========================================================================;

;---------------------------------------------------------------------------;
;				SUPER MOTIONS
;---------------------------------------------------------------------------;

;MAXIMUM PSY
[state -1,maxtk]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = command = "MP"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [0,599]

;PLASMA TARGET
[State -1, psytgt]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "BT"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl

;TELEKINETIC ROCK SHOWER
[State -1, Telekinetic Rock Shower]
type = ChangeState
value = 3500
triggerall = !ishelper
triggerall = command = "RS"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA

;AIR TELEKINETIC ROCK SHOWER
[State -1, Air Telekinetic Rock Shower]
type = ChangeState
value = 3600
triggerall = !ishelper
triggerall = command = "RS"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA

;AGE OF APOCALIPSE - MIND ILUSION
[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "AOA"
trigger1 = (ctrl = 1)

;---------------------------------------------------------------------------;
;				SPECIAL MOTIONS
;---------------------------------------------------------------------------;

;FLYING MODE
[state -1,fly]
type = changestate
value = 9998
triggerall = command = "fly"
trigger1 = ctrl
trigger1 = statetype != A

[state -1,fly]
type = changestate
value = 9999
triggerall = command = "fly"
trigger1 = ctrl
trigger1 = statetype = A

;---------------------------------------------------------------------------;

;ASTRAL PROJECTION
[state -1,cancel helper]
type = changestate
value = 3006
trigger1 = stateno != 3006
trigger1 = command = "AP"
trigger1 = ishelper(10)

[state -1,p1]
type = changestate
value = 3006
triggerall = stateno != [3000,3006]

trigger1 = stateno != 1021
trigger1 = ishelper(10)
trigger1 = var(10) = 0
trigger2 = ishelper(10)
trigger2 = parent, movetype = H
trigger3 = ishelper(10)
trigger3 = roundstate != 2
ctrl = 0

[state -1,pp]
type = playerpush
trigger1 = ishelper
value = 0

[state -1,p1]
type = turn
triggerall = ishelper
triggerall = statetype != A
triggerall = p2dist X < 0
trigger1 = stateno != 1021
trigger2 = stateno = 1021
trigger2 = animtime = 0

[state -1,1]
type = assertspecial
triggerall = ishelper(10)
trigger1 = stateno != 1021
flag = invisible
flag2 = nojugglecheck
flag3 = unguardable

[state -1,2]
type = Afterimage
trigger1 = ishelper(10)
trigger1 = stateno != 1021
time = 2
paladd = 0,0,0
length = 2
PalMul = .8,.8,.8
FrameGap = 1
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 230,230,230
trans = add
ignorehitpause = 1

[state -1,nh]
type = nothitby
trigger1 = 1
trigger1 = ishelper(10)
value = SCA, AA, AT

[state -1,1]
type = varadd
trigger1 = var(10) > 0
v = 10
value = -1

[state -1,1]
type = attackmulset
trigger1 = ishelper(10)
value = 2 

[state -1,projection]
type = changestate
value = 1020
triggerall = power >= 500
triggerall = command = "AP"
triggerall = !ishelper
triggerall = numhelper(10) = 0
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------;

;TELEKINETIC RUSH LOW
[state -1,tkrush]
type = changestate
value = 1010
triggerall = command = "TR1"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1

;TELEKINETIC RUSH MEDIUM
[state -1,tkrush]
type = changestate
value = 1011
triggerall = command = "TR2"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1

;TELEKINETIC RUSH HARD
[state -1,tkrush]
type = changestate
value = 1012
triggerall = command = "TR3"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1

;AIR TELEKINETIC RUSH LOW
[state -1,tkrush]
type = changestate
value = 1013
triggerall = command = "TR1"
trigger1 = ctrl
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1
trigger3 = (stateno = 600) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 640) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)

;AIR TELEKINETIC RUSH MEDIUM
[state -1,tkrush]
type = changestate
value = 1014
triggerall = command = "TR2"
trigger1 = ctrl
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1
trigger3 = (stateno = 600) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 640) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)

;AIR TELEKINETIC RUSH HARD
[state -1,tkrush]
type = changestate
value = 1015
triggerall = command = "TR3"
trigger1 = ctrl
trigger2 = stateno = [200,599]
trigger2 = movecontact = 1
trigger3 = (stateno = 600) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 640) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)

;---------------------------------------------------------------------------;

;TELEPORT 1
[state -1,telx]
type = changestate
value = 1000
triggerall = command = "PT1"
trigger1 = ctrl
trigger1 = statetype != A

;TELEPORT 2
[state -1,telx]
type = changestate
value = 1001
triggerall = command = "PT2"
trigger1 = ctrl
trigger1 = statetype != A

;TELEPORT 3
[state -1,telx]
type = changestate
value = 1002
triggerall = command = "PT3"
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------;

;MIND BLAST
[State -1, Mind Blast]
type = ChangeState
value = 10000
triggerall = (command = "SP1") || (command = "SP1") || (command = "SP1")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;AIR MIND BLAST
[State -1, Mind Blast]
type = ChangeState
value = 10010
triggerall = (command = "SP1") || (command = "SP1") || (command = "SP1")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = (stateno = 600) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 640) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 1013) && (movecontact)
trigger10 = (stateno = 1014) && (movecontact)
trigger11 = (stateno = 1015) && (movecontact)

;---------------------------------------------------------------------------;

;TELEKINETIC SHIELD
[State -1, Telekinetic Shield]
type = ChangeState
value = 11100
triggerall = (command = "SP2") || (command = "SP2") || (command = "SP2")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

;---------------------------------------------------------------------------;

;SLP
[State -1, jab]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;SMP
[State -1, strong]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;SHP
[State -1, fierce]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = numhelper(220) = 0 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 250) && movecontact

;SLK
[State -1, short]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;SMK
[State -1, forward]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact

;SHK
[State -1, roundhouse]
type = ChangeState
value = 250
triggerall = command != "holddown"
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact

;CLP
[State -1, jab]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;CMP
[State -1, strong]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact

;CHP
[State -1, fierce]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = 440) && movecontact

;CLK
[State -1, short]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact

;CMK
[State -1, forward]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 410) && movecontact
trigger4 = (stateno = 430) && movecontact

;CHK
[State -1, roundhouse]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = 440) && movecontact

;JLP
[state -1,jab]
type = changestate
value = 600
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl
trigger2 = (stateno = 420) && movecontact 

;JMP
[state -1,strong]
type = changestate
value = 610
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact

;JHP
[state -1,fierce]
type = changestate
value = 620
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 640) && movecontact

;JLK
[state -1,short]
type = changestate
value = 630
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;JMK
[state -1,forward]
type = changestate
value = 640
triggerall = statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact

JHK
[state -1,rh]
type = changestate
value = 650
triggerall = statetype = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Dash Forward

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = (Statetype != A) && (ctrl)
trigger1 = (command = "FF") && (var(59) = 0)
trigger2 = (var(59) = 1) && (P2BodyDist X = [200, 400]) && (stateno != 161) && (random > 900)

;---------------------------------------------------------------------------
;Dash Backward

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerall = (Statetype != A) && (ctrl)
trigger1 = (command = "BB") && (var(59) = 0)
trigger2 = (var(59) = 1) && (P2BodyDist X = [0, 100]) && (backedgedist > 200) && random >= 980

;---------------------------------------------------------------------------
;Taunt 

[state -1,taunt]
type = changestate
value = 196
triggerall = statetype !=A
trigger1 = ctrl && command = "s"

;---------------------------------------------------------------------------
;Super Jump

[State -1, super jump ]
type = ChangeState
value = 9996
trigger1 = command = "DU"
trigger1 = ctrl 
trigger1 = statetype != A
trigger2 = (stateno = 420) && (movehit) && (command = "holdup")

[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 9996
trigger1 = stateno = 50
x = .2

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 9996
trigger1 = stateno = 50
x = -.2
