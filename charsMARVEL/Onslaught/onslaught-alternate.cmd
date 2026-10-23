;---------------------------------------------------------------------------
; Default Values
[Defaults]
command.time = 15
command.buffer.time = 1

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

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
name = "holdfwd"	;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback"	;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"		;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown"	;Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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

;---------------------------------------------------------------------------
; Commands

[Command]
name = "QCF a"
command = ~D, DF, F, a

[Command]
name = "QCF b"
command = ~D, DF, F, b

[Command]
name = "QCF c"
command = ~D, DF, F, c

[Command]
name = "QCF x"
command = ~D, DF, F, x

[Command]
name = "QCF y"
command = ~D, DF, F, y

[Command]
name = "QCF z"
command = ~D, DF, F, z

[Command]
name = "QCB a"
command = ~D, DB, B, a

[Command]
name = "QCB b"
command = ~D, DB, B, b

[Command]
name = "QCB c"
command = ~D, DB, B, c

[Command]
name = "QCB x"
command = ~D, DB, B, x

[Command]
name = "QCB y"
command = ~D, DB, B, y

[Command]
name = "QCB z"
command = ~D, DB, B, z

[Command]
name = "QCD a"
command = ~B, DB, D, a

[Command]
name = "QCD b"
command = ~B, DB, D, b

[Command]
name = "QCD c"
command = ~B, DB, D, c

[Command]
name = "QCD x"
command = ~B, DB, D, x

[Command]
name = "QCD y"
command = ~B, DB, D, y

[Command]
name = "QCD z"
command = ~B, DB, D, z

[Command]
name = "DP x"
command = F, D, DF, x
time = 30

[Command]
name = "DP y"
command = F, D, DF, y
time = 30

[Command]
name = "DP z"
command = F, D, DF, z
time = 30

[Command]
name = "HCF x"
command = ~B, DB, D, DF, F, x
time = 50

[Command]
name = "HCF y"
command = ~B, DB, D, DF, F, y
time = 50

[Command]
name = "HCF z"
command = ~B, DB, D, DF, F, z
time = 50

[Command]
name = "DU"
command = ~D, $U
time = 10

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;---------------------------------------------------------------------------
; State -1
[Statedef -1]

;---------------------------------------------------------------------------
; AI Helper
;---------------------------------------------------------------------------

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;---------------------------------------------------------------------------
; AI Commands
;---------------------------------------------------------------------------

; Onslaught (1st Form)

[State -1, VarRandom]
type = VarRandom
trigger1 = 1
v = 3
range = 0, 1000

[State -1, Partner Change]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = Power >= 2000
trigger1 = Random < 800
value = 13200

[State -1, Magnetic Shockwave]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = (Power >= 1700 && Random < 50) || (Power >= 1000 && Random < 10)
triggerall = Var(3) < 100
trigger1 = P2Dist X >= 10
trigger1 = BackEdgeDist < 50
value = 13000

[State -1, Mega Optic Blast]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = (Power >= 1700 && Random < 50) || (Power >= 1000 && Random < 10)
trigger1 = P2Dist X >= 100
trigger1 = FrontEdgeDist > 50
value = 13100

[State -1, Teleport C]	; Teleport behind the opponent when in danger
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = enemy, MoveType = A
triggerall = Random < 100
trigger1 = Facing = 1 && enemy, Pos X = [0, 95]
trigger2 = Facing = -1 && enemy, Pos X = [-95, 0]
value = 11502

[State -1, Teleport A]	; Teleport Back
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = enemy, MoveType = A
trigger1 = P2Dist X < 0
trigger1 = Random < 100
value = 11500

[State -1, Teleport B]	; Teleport Center
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = Random < 100
trigger1 = Pos X < -50 || Pos X > 50
trigger1 = enemy, MoveType = A
value = 11501

[State -1, Hyper Rush]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = P2Dist X >= 0
triggerall = enemy, Pos Y > -100
trigger1 = Var(3) = [0, 50]
value = 11400

[State -1, Hyper Grav]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = !NumHelper(11210)
triggerall = !NumHelper(11211)
triggerall = !NumHelper(11212)
triggerall = !NumHelper(11213)
triggerall = !NumHelper(11214)
triggerall = P2Dist X >= 150
triggerall = P2Name != "Rare Akuma"
trigger1 = Var(3) = [51, 100]
value = 11200

[State -1, Magnetic Tempest]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = P2Name != "Rare Akuma"
trigger1 = P2Dist X = [-30, 200]
trigger1 = Var(3) = [101, 150]
value = 11300

[State -1, Sentinel Assist]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = !NumHelper(11110)
trigger1 = P2Dist X < 100
trigger1 = Var(3) = [151, 200]
value = 11100

[State -1, Sentinel Aerial Bomb]
type = ChangeState
triggerall = !Var(50)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = !NumHelper(11010)
triggerall = !NumHelper(11011)
trigger1 = P2Dist X > 100
trigger1 = Var(3) = [201, 250]
value = 11000

; Onslaught 2nd Form

[State -1, Sentinel Missile 1]
type = Helper
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = Random < 30
trigger1 = !NumHelper(11010)
trigger1 = !NumHelper(11011)
name = "Sentinel Missile"
id = 11010
pos = -40, Ceil(Pos Y + P2Dist Y - 162)
postype = back
stateno = 11010
ownpal = 1

[State -1, Sentinel Missile 2]
type = Helper
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = NumHelper(11010)
trigger1 = !NumHelper(11011)
name = "Sentinel Missile"
id = 11011
pos = -104, Ceil(Pos Y + P2Dist Y - 130)
postype = back
stateno = 11010
ownpal = 1

[State -1, 5 Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = P2Name != "Rare Akuma"
trigger1 = Power >= 1000
trigger1 = Var(3) = [0, 25]
value = 23100

[State -1, 3 Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Var(3) = [25, 50]
value = 23000

[State -1, Hyper Grav]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = !NumHelper(11210)
triggerall = !NumHelper(11211)
triggerall = !NumHelper(11212)
triggerall = !NumHelper(11213)
triggerall = !NumHelper(11214)
triggerall = Random < 300
triggerall = P2Name != "Rare Akuma"
triggerall = Var(3) = [51, 75]
trigger1 = Pos Y < -100
trigger2 = P2Dist X >= 150
value = 21200

[State -1, Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = enemy, MoveType = A
trigger1 = Var(3) = [76, 90]
value = 21300

[State -1, Dash Punch]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = enemy, MoveType != A
trigger1 = Var(3) = [91, 100]
value = 21100

[State -1, Punch]
type = ChangeState
triggerall = Var(50) = 1
triggerall = Var(0) = 1
triggerall = Ctrl
trigger1 = P2Dist X = [-100, 160]
trigger1 = enemy, MoveType != A
trigger1 = P2Dist Y = [-80, 40]
trigger1 = Var(3) = [101, 115]
value = 21000

;---------------------------------------------------------------------------
; Sentinel

[State -1, Hard Drive]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Power >= 1000
triggerall = P2Dist X > 0 && enemyNear, StateType = A
triggerall = Var(3) = [0, 15]
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 3300

[State -1, Hyper Sentinel Force]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Var(3) = [16, 30]
trigger1 = Ctrl
value = 3200

[State -1, MVC2 - Plasma Storm]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = P2Dist X > 0
triggerall = Var(3) = [31, 45]
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 3100

[State -1, Plasma Storm]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = P2Dist X > 50
triggerall = Var(3) = [46, 60]
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 3000

[State -1, Plasma Storm - Charge]
type = VarSet
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateNo = 3001
triggerall = Var(35) < 15 && !Var(36)
triggerall = Var(38) < 31
trigger1 = Time
trigger1 = !(GameTime % 4)	; Simulate human button smashing
var(35) = 1

[State -1, Plasma Storm - Release]
type = VarSet
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateNo = 3001
triggerall = Var(35) < 15 && !Var(36)
triggerall = Var(38) < 31
triggerall = NumHelper(3010)
triggerall = Helper(3010), Time >= 48
trigger1 = Random < 20
var(35) = 48

[State -1, Fly]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = !Var(34)
triggerall = Ctrl
trigger1 = Var(3) = [61, 75]
value = 1300

[State -1, Fly - Stop]
type = Null;VarSet
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = Var(34)
triggerall = Ctrl
trigger1 = Command = "QCB x" && Command = "QCB y"
trigger2 = Command = "QCB x" && Command = "QCB z"
trigger3 = Command = "QCB y" && Command = "QCB z"
var(34) = 0

[State -1, Guard]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = Ctrl
triggerall = InGuardDist && (StateNo != [120, 155])
triggerall = enemyNear, HitDefAttr != SCA, AT && enemyNear, Time < 50
triggerall = enemyNear, MoveType = A
trigger1 = Random < 300
value = 120

[State -1, Sentinel Force - Light]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Var(3) = [76, 90]
trigger1 = Ctrl
value = 1200

[State -1, Sentinel Force - Medium]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Var(3) = [91, 105]
trigger1 = Ctrl
value = 1210

[State -1, Sentinel Force - Strong]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Var(3) = [106, 120]
trigger1 = Ctrl
value = 1220

[State -1, Aerial Rocket Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X > 0 && P2Dist Y > 30
triggerall = Var(3) = [121, 135]
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1100

[State -1, Aerial Rocket Punch - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X > 0 && P2Dist Y = [-30, 30]
triggerall = Var(3) = [136, 150]
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1110

[State -1, Aerial Rocket Punch - Up]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X > 0 && P2Dist Y < -30 && enemyNear, StateType = A
triggerall = Var(3) = [151, 165]
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1120

[State -1, Rocket Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [20, 50]) && enemyNear, StateType != A
triggerall = Var(3) = [166, 180]
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1000

[State -1, Rocket Punch - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 50
triggerall = Var(3) = [181, 195]
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1010

[State -1, Rocket Punch - Up]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 0 && P2Dist Y < -30 && enemyNear, StateType = A
triggerall = Var(3) = [196, 205]
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1020

[State -1, Super Jump]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(0) = 1
triggerall = StateType != A
;triggerall = Ctrl || ((StateNo = 240 && ProjHit[241] = 1) || (StateNo = 251 && MoveHit) && enemyNear, HitShakeOver)
triggerall = Ctrl || ((StateNo = 251 && MoveHit) && enemyNear, HitShakeOver)
;trigger1 = (StateNo = 240 || StateNo = 251)
trigger1 = (StateNo = 251)
value = 41

[State -1, Grab]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 80
triggerall = P2StateType = L
trigger1 = Random < 300
value = 1400

[State -1, Grab - Stand Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Ctrl
triggerall = !NumTarget(1450) && !NumTarget(1460)
trigger1 = Random < 200
value = 1450

[State -1, Grab - Aerial Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Ctrl
triggerall = !NumTarget(1450) && !NumTarget(1460)
trigger1 = Random < 200
value = 1460

[State -1, Stand Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = S
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType != A
trigger1 = Random < 300
value = 900

[State -1, Aerial Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Ctrl
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType = A
trigger1 = Random < 300
value = 950

[State -1, Stand Medium Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = S
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType != A
trigger1 = Random < 300
value = 800

[State -1, Aerial Medium Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Ctrl
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType = A
trigger1 = Random < 300
value = 850

[State -1, Stand Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [206, 220]
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = AnimElemTime(16) >= 0
value = 200

[State -1, MVC2 - Stand Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [221, 235]
trigger1 = Ctrl
value = 205

[State -1, MVC2 - Stand Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Random < 300
trigger1 = MoveContact
trigger1 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 206

[State -1, Stand Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 100
triggerall = Var(3) = [236, 250]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 210

[State -1, Original - Stand Strong Punch - Rocket]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 50 && P2Dist Y > -100
triggerall = Var(3) = [251, 265]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 225

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 50 && P2Dist Y > -100
triggerall = Var(3) = [266, 280]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 220

[State -1, Stand Light Kick/Stand Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [281, 300]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 230

[State -1, MVC2 - Stand Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [301, 315]
trigger1 = Ctrl
value = 235

[State -1, Stand Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && P2Dist Y > -50
triggerall = Var(3) = [316, 330]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 240

[State -1, Stand Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 100 && P2Dist Y > -50
triggerall = Var(3) = [331, 345]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 250

[State -1, MVC2 - Stand Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && P2Dist Y > -50
triggerall = Var(3) = [316, 330]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 251

[State -1, Crouch Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [331, 345]
trigger1 = Ctrl
trigger2 = StateNo = 400
trigger2 = AnimElemTime(16) >= 0
value = 400

[State -1, MVC2 - Crouch Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [346, 360]
trigger1 = Ctrl
trigger2 = StateNo = 400
trigger2 = AnimElemTime(16) >= 0
value = 405

[State -1, MVC2 - Crouch Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Random < 300
trigger1 = MoveContact
trigger1 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 406

[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 100 && enemyNear, StateType != A
triggerall = Var(3) = [346, 360]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 410

[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 100 && enemyNear, StateType != A
triggerall = Var(3) = [361, 375]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 420

[State -1, MVC2 - Crouch Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = P2Dist X > 100 && enemyNear, StateType != A
triggerall = Var(3) = [376, 390]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 425

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [391, 400]
trigger1 = Ctrl

[State -1, MVC2 - Crouch Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 100]) && enemyNear, StateType != A
triggerall = Var(3) = [401, 415]
trigger1 = Ctrl
value = 435

[State -1, MVC2 - Crouch Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = Random < 300
trigger1 = MoveContact
trigger1 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 436

[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 150]) && enemyNear, StateType != A
triggerall = Var(3) = [416, 430]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 440

[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 150]) && enemyNear, StateType != A
triggerall = Var(3) = [431, 445]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 450

[State -1, MVC2 - Crouch Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType != A
triggerall = (P2Dist X = [0, 150]) && enemyNear, StateType != A
triggerall = Var(3) = [446, 460]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 455

[State -1, Aerial Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [0, 100]
triggerall = P2Dist Y = [-30, 30]
triggerall = Var(3) = [461, 475]
trigger1 = Ctrl
value = 600

[State -1, MVC2 - Aerial Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = P2Dist X = [0, 100]
triggerall = P2Dist Y = [-30, 30]
triggerall = Var(3) = [476, 490]
trigger1 = Ctrl
value = 605

[State -1, MVC2 - Aerial Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Random < 300 || StateNo = 630
trigger1 = MoveContact
trigger1 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 606

[State -1, Aerial Medium Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X > 50 && enemyNear, StateType != A
triggerall = Var(3) = [491, 510]
triggerall = !Var(34)
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 615

[State -1, Aerial Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = Var(3) = [511, 525]
triggerall = P2Dist Y = [-30, 30]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 610

[State -1, Aerial Strong Punch - Up Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = (P2Dist X = [-50, 50]) && P2Dist Y > 0
triggerall = Var(3) = [526, 540]
triggerall = !Var(34)
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 625

[State -1, Aerial Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [30, 100]
triggerall = P2Dist Y = [-30, 30]
triggerall = Random < 200
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 620

[State -1, MVC2 - Aerial Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [30, 100]
triggerall = P2Dist Y = [-30, 30]
triggerall = Random < 200
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 621

[State -1, Aerial Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [0, 100]
triggerall = P2Dist Y = [-30, 30]
trigger1 = Ctrl && (Var(3) = [541, 555])
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605
value = 630

[State -1, Aerial Medium Kick - Up Forward/MVC2 Aerial Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = (P2Dist X = [0, 200]) && P2Dist Y < 30
triggerall = Random < 300 || StateNo = 615
trigger1 = Ctrl && (Var(3) = [556, 570])
trigger2 = MoveContact
trigger2 = StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 610 || StateNo = 615
value = 646

[State -1, Aerial Medium Kick - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = (P2Dist X = [0, 200]) && P2Dist Y > -30
triggerall = Random < 200
trigger1 = Ctrl && (Var(3) = [571, 585])
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 610 || StateNo = 615
value = 644

[State -1, Aerial Medium Kick - Down/MVC2 Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = (P2Dist X = [0, 200]) && P2Dist Y > 0
triggerall = Random < 500
trigger1 = Ctrl && (Var(3) = [586, 600])
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
;trigger4 = MoveContact
;trigger4 = StateNo = 620 || StateNo = 621
value = 640

[State -1, Aerial Medium Kick - Down Forward/MVC2 Aerial Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [0, 100]
triggerall = P2Dist Y > 0
triggerall = Var(3) = [601, 615]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605
value = 642

[State -1, Aerial Strong Kick - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [0, 200]
triggerall = P2Dist Y = [-30, 30]
triggerall = Var(3) = [616, 630]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 655

[State -1, Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = P2Dist X = [0, 200]
triggerall = P2Dist Y = [-30, 30]
triggerall = Var(3) = [631, 645]
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 650

[State -1, Aerial Medium Kick - Down/MVC2 Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = Var(0) = 1
triggerall = StateType = A
triggerall = (P2Dist X = [0, 200]) && P2Dist Y > 0
triggerall = Random < 300
trigger1 = Ctrl && (Var(3) = [646, 660])
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 640

[State -1, Advance Guard]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(0) = 1
triggerall = StateNo = [150, 155]
trigger1 = Random < 100
value = 160

[State -1, Run Back]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(0) = 1
triggerall = StateType = S
triggerall = Ctrl
triggerall = Anim != [105, 106]
triggerall = StateNo != 105
trigger1 = BackEdgeDist > 100
trigger1 = Var(3) = [850, 1000]
value = 105

[State -1, Run Fwd]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(0) = 1
triggerall = StateType = S
triggerall = Ctrl
triggerall = Anim != [100, 101]
triggerall = StateNo != 100
trigger1 = FrontEdgeDist > 100
trigger1 = Var(3) = [660, 849]
value = 100

[State -1, Fly Direction]
type = Null
triggerall = Var(50) = 3
triggerall = Var(0) = 1
triggerall = Var(33)
triggerall = !(Var(44) := 0)
trigger1 = P2Dist X < 0 && P2Dist Y < -20
trigger1 = Var(44) := 3
trigger2 = P2Dist X < 0 && P2Dist Y > 20
trigger2 = Var(44) := 2
trigger3 = P2Dist X > 20 && P2Dist Y > 20
trigger3 = Var(44) := 6
trigger4 = P2Dist X > 20 && P2Dist Y < -20
trigger4 = Var(44) := 7
trigger5 = P2Dist X < 0
trigger5 = Var(44) := 1
trigger6 = P2Dist Y > 20
trigger6 = Var(44) := 4
trigger7 = P2Dist X > 20
trigger7 = Var(44) := 5
trigger8 = P2Dist Y < -20
trigger8 = Var(44) := 8

;---------------------------------------------------------------------------
; Onslaught (1st Form)
;---------------------------------------------------------------------------

[State -1, Partner Change]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = Power >= 2000
trigger1 = Command = "QCB a" && Command = "QCB b"
trigger2 = Command = "QCB a" && Command = "QCB c"
trigger3 = Command = "QCB b" && Command = "QCB c"
value = 13200

[State -1, Mega Optic Blast]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Command = "QCF x" && Command = "QCF y"
trigger2 = Command = "QCF x" && Command = "QCF z"
trigger3 = Command = "QCF y" && Command = "QCF z"
value = 13100

[State -1, Magnetic Shockwave]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Command = "QCF a" && Command = "QCF b"
trigger2 = Command = "QCF a" && Command = "QCF c"
trigger3 = Command = "QCF b" && Command = "QCF c"
value = 13000

[State -1, Teleport A]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCB a"
value = 11500

[State -1, Teleport B]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCB b"
value = 11501

[State -1, Teleport C]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCB c"
value = 11502

[State -1, Hyper Rush]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCF a"
trigger2 = Command = "QCF b"
trigger3 = Command = "QCF c"
value = 11400

[State -1, Hyper Grav]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(11210)
triggerall = !NumHelper(11211)
triggerall = !NumHelper(11212)
triggerall = !NumHelper(11213)
triggerall = !NumHelper(11214)
trigger1 = Command = "DP x"
trigger2 = Command = "DP y"
trigger3 = Command = "DP z"
value = 11200

[State -1, Magnetic Tempest]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCF x"
trigger2 = Command = "QCF y"
trigger3 = Command = "QCF z"
value = 11300

[State -1, Sentinel Assist]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(11110)
trigger1 = Command = "b"
trigger1 = Command = "y"
value = 11100

[State -1, Sentinel Aerial Bomb]
type = ChangeState
triggerall = !Var(50)
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(11010)
triggerall = !NumHelper(11011)
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
trigger4 = Command = "x"
trigger5 = Command = "y"
trigger6 = Command = "z"
value = 11000

;---------------------------------------------------------------------------
; Onslaught (2nd Form)
;---------------------------------------------------------------------------

[State -1, 5 Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Command = "HCF x" && Command = "HCF y"
trigger2 = Command = "HCF x" && Command = "HCF z"
trigger3 = Command = "HCF y" && Command = "HCF z"
value = 23100

[State -1, 3 Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Command = "QCF x" && Command = "QCF y"
trigger2 = Command = "QCF x" && Command = "QCF z"
trigger3 = Command = "QCF y" && Command = "QCF z"
value = 23000

[State -1, Hyper Grav]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(11210)
triggerall = !NumHelper(11211)
triggerall = !NumHelper(11212)
triggerall = !NumHelper(11213)
triggerall = !NumHelper(11214)
trigger1 = Command = "DP x"
trigger2 = Command = "DP y"
trigger3 = Command = "DP z"
value = 21200

[State -1, Dash Punch]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCF a"
trigger2 = Command = "QCF b"
trigger3 = Command = "QCF c"
value = 21100

[State -1, Rensha Beam]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "QCF x"
trigger2 = Command = "QCF y"
trigger3 = Command = "QCF z"
value = 21300

[State -1, Sentinel Missile 1]
type = Helper
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(11010)
triggerall = !NumHelper(11011)
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
name = "Sentinel Missile"
id = 11010
pos = -40, Ceil(Pos Y + P2Dist Y - 162)
postype = back
stateno = 11010
ownpal = 1

[State -1, Sentinel Missile 2]
type = Helper
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = NumHelper(11010)
triggerall = !NumHelper(11011)
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
name = "Sentinel Missile"
id = 11011
pos = -104, Ceil(Pos Y + P2Dist Y - 130)
postype = back
stateno = 11010
ownpal = 1

[State -1, Punch]
type = ChangeState
triggerall = Var(50) = 1
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "x"
trigger2 = Command = "y"
trigger3 = Command = "z"
value = 21000

[State -1, Rocks]
type = Helper
triggerall = Var(50) = 1
triggerall = Var(59) != -1
triggerall = !Var(0)
triggerall = Ctrl
triggerall = !NumHelper(20191)
trigger1 = Command = "start"
name = "Rock Generator"
id = 20191
pos = 0, -300
stateno = 20191
ownpal = 1

;---------------------------------------------------------------------------
; Sentinel
;---------------------------------------------------------------------------

[State -1, Hard Drive]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Power >= 1000
triggerall = (Command = "QCF x" && Command = "QCF y") || (Command = "QCF x" && Command = "QCF z") || (Command = "QCF y" && Command = "QCF z")
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 3300

[State -1, Hyper Sentinel Force]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = (Command = "QCF a" && Command = "QCF b") || (Command = "QCF a" && Command = "QCF c") || (Command = "QCF b" && Command = "QCF c")
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 3200

[State -1, MVC2 - Plasma Storm]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = (Command = "QCF x" && Command = "QCF y") || (Command = "QCF x" && Command = "QCF z")
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 3100

[State -1, Plasma Storm]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Power >= 1000
;trigger1 = Command = "QCF x" && Command = "QCF y"
;trigger2 = Command = "QCF x" && Command = "QCF z"
triggerall = Command = "QCF y" && Command = "QCF z"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 3000

[State -1, Plasma Storm - Charge]
type = VarSet
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateNo = 3001
triggerall = Var(35) < 15 && !Var(36)
triggerall = Var(38) < 31
triggerall = Time
trigger1 = Command = "x"
trigger2 = Command = "y"
trigger3 = Command = "z"
var(35) = 1

[State -1, Fly]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = !Var(34)
triggerall = Ctrl
trigger1 = Command = "QCB x" && Command = "QCB y"
trigger2 = Command = "QCB x" && Command = "QCB z"
trigger3 = Command = "QCB y" && Command = "QCB z"
value = 1300

[State -1, Fly - Stop]
type = VarSet
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = Var(34)
triggerall = Ctrl
trigger1 = Command = "QCB x" && Command = "QCB y"
trigger2 = Command = "QCB x" && Command = "QCB z"
trigger3 = Command = "QCB y" && Command = "QCB z"
var(34) = 0

[State -1, Sentinel Force - Light]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Command = "QCF a"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1200

[State -1, Sentinel Force - Medium]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Command = "QCF b"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1210

[State -1, Sentinel Force - Strong]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = !NumHelper(1205) && !NumHelper(1206) && !NumHelper(1207)
triggerall = Command = "QCF c"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1220

[State -1, Aerial Rocket Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "QCF x"
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1100

[State -1, Aerial Rocket Punch - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "QCF y"
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1110

[State -1, Aerial Rocket Punch - Up]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "QCF z"
trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 1120

[State -1, Rocket Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Command = "QCF x"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1000

[State -1, Rocket Punch - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Command = "QCF y"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1010

[State -1, Rocket Punch - Up]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Command = "QCF z"
trigger1 = Ctrl
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 1020

[State -1, Advance Guard]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = StateNo = [150, 155]
trigger1 = (Command = "x" && Command = "y") || (Command = "x" && Command = "z") || (Command = "y" && Command = "z")
value = 160

[State -1, Run Back]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = StateType = S
triggerall = Ctrl
triggerall = Anim != [105, 106]
triggerall = StateNo != 105
trigger1 = Command = "BB"
trigger2 = Command = "holdback"
trigger2 = (Command = "x" && Command = "y") || (Command = "x" && Command = "z") || (Command = "y" && Command = "z")
value = 105

[State -1, Run Fwd]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = StateType = S
triggerall = Ctrl
triggerall = Anim != [100, 101]
triggerall = StateNo != 100
trigger1 = Command = "FF"
trigger2 = (Command = "x" && Command = "y") || (Command = "x" && Command = "z") || (Command = "y" && Command = "z")
value = 100

[State -1, Super Jump]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = StateType != A
;triggerall = Ctrl || ((StateNo = 240 && ProjHit[241] = 1) || (StateNo = 251 && MoveHit) && enemyNear, HitShakeOver)
triggerall = Ctrl || ((StateNo = 251 && MoveHit) && enemyNear, HitShakeOver)
trigger1 = Command = "DU"
trigger2 = Command = "a" && Command = "b"
trigger3 = Command = "a" && Command = "c"
trigger4 = Command = "b" && Command = "c"
;trigger5 = (StateNo = 240 || StateNo = 251) && Command = "holdup"
trigger5 = (StateNo = 251) && (Command = "holdup" || Command = "holdfwd")
value = 41

[State -1, Grab]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 80
triggerall = P2StateType = L
trigger1 = Command = "holddown" && (Command = "y" || Command = "z")
value = 1400

[State -1, Grab - Stand Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Ctrl
triggerall = !NumTarget(1450) && !NumTarget(1460)
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1450

[State -1, Grab - Aerial Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Ctrl
triggerall = !NumTarget(1450) && !NumTarget(1460)
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1460

[State -1, Stand Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = S
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType != A
trigger1 = Command = "holdfwd" && Command = "z"
value = 900

[State -1, Aerial Strong Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Ctrl
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType = A
trigger1 = Command = "holdfwd" && Command = "z"
value = 950

[State -1, Stand Medium Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = S
triggerall = Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType != A
trigger1 = Command = "holdfwd" && Command = "y"
value = 800

[State -1, Aerial Medium Throw]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Ctrl
triggerall = P2BodyDist X < 3
triggerall = P2MoveType != H
triggerall = P2StateType = A
trigger1 = Command = "holdfwd" && Command = "y"
value = 850

[State -1, Stand Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "x" && Command = "holdback"
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = AnimElemTime(16) >= 0
value = 200

[State -1, MVC2 - Stand Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "x"
trigger1 = Ctrl
value = 205

[State -1, MVC2 - Stand Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "x" || Command = "y"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 206

[State -1, Stand Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "z" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 210

[State -1, Original - Stand Strong Punch - Rocket]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "z" && Command = "holdfwd"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 225

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "z"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 220

[State -1, Stand Light Kick/Stand Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = (Command = "a" && MoveContact) || (Command = "b" && Command != "holdback")
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 230

[State -1, MVC2 - Stand Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "a"
trigger1 = Ctrl
value = 235

[State -1, Stand Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "b" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 240

[State -1, Stand Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "c" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 250

[State -1, MVC2 - Stand Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command != "holddown"
triggerall = Command = "c"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 251

[State -1, Crouch Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "x" && Command = "holdback"
trigger1 = Ctrl
trigger2 = StateNo = 400
trigger2 = AnimElemTime(16) >= 0
value = 400

[State -1, MVC2 - Crouch Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "x"
trigger1 = Ctrl
trigger2 = StateNo = 400
trigger2 = AnimElemTime(16) >= 0
value = 405

[State -1, MVC2 - Crouch Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "x" || Command = "y"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 406

[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "z" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 410

[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "z" && Command = "holdfwd"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 420

[State -1, MVC2 - Crouch Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "z"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 425

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "a" && Command = "holdback"
trigger1 = Ctrl

[State -1, MVC2 - Crouch Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "a"
trigger1 = Ctrl
value = 435

[State -1, MVC2 - Crouch Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = (Command = "a" && MoveContact) || Command = "b"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 436

[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "c" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 440

[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "c" && Command = "holdfwd"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 450

[State -1, MVC2 - Crouch Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType != A && Command = "holddown"
triggerall = Command = "c"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 205 || StateNo = 235 || StateNo = 405 || StateNo = 435
value = 455

[State -1, Aerial Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "x" && Command = "holdback"
trigger1 = Ctrl
value = 600

[State -1, MVC2 - Aerial Light Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "x"
trigger1 = Ctrl
value = 605

[State -1, MVC2 - Aerial Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = (Command = "x" && MoveContact) || (Command = "y" && Command != "holddown")
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 606

[State -1, Aerial Medium Punch - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "y"
triggerall = Command = "holddown"
triggerall = !Var(34)
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 615

[State -1, Aerial Medium Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "z" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
value = 610

[State -1, Aerial Strong Punch - Up Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "holddown" && Command = "z"
triggerall = !Var(34)
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 625

[State -1, Aerial Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "z" && Command = "holdfwd"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 620

[State -1, MVC2 - Aerial Strong Punch]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "z"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
value = 621

[State -1, Aerial Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "a" && Command = "holdback"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605
value = 630

[State -1, Aerial Medium Kick - Up Forward/MVC2 Aerial Medium Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
trigger1 = Ctrl && Command = "b" && Command = "holdup"
trigger2 = (MoveContact && Command = "a") || (Command = "b" && Command = "holdup") || (MoveContact && Command = "b")
trigger2 = StateNo = 630 || StateNo = 642
trigger3 = (MoveContact && Command = "a") || (Command = "b" && Command = "holdup") || (MoveContact && Command = "b")
trigger3 = StateNo = 606 || StateNo = 610 || StateNo = 615
value = 646

[State -1, Aerial Medium Kick - Forward]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "b"
triggerall = Command = "holdfwd"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 610 || StateNo = 615
value = 644

[State -1, Aerial Medium Kick - Down/MVC2 Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "b" && Command = "holddown"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
;trigger4 = MoveContact
;trigger4 = StateNo = 620 || StateNo = 621
value = 640

[State -1, Aerial Medium Kick - Down Forward/MVC2 Aerial Light Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = (Command = "b" || Command = "a")
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605
value = 642

[State -1, Aerial Strong Kick - Down]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 655

[State -1, Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "c" && (Command = "holdback" || Command = "holdfwd")
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 650

[State -1, Aerial Medium Kick - Down/MVC2 Aerial Strong Kick]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = !Var(0)
triggerall = StateType = A
triggerall = Command = "c"
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 630 || StateNo = 642
trigger3 = MoveContact
trigger3 = StateNo = 606 || StateNo = 644 || StateNo = 646 || StateNo = 610 || StateNo = 615
trigger4 = MoveContact
trigger4 = StateNo = 620 || StateNo = 621
value = 640

[State -1, Taunt]
type = ChangeState
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = Command = "start"
value = 196

[State -1, Fly Direction]
type = Null
triggerall = Var(50) = 3
triggerall = !Var(0)
triggerall = Var(33)
triggerall = !(Var(44) := 0)
trigger1 = (Command = "holdback") && (Command = "holdup")
trigger1 = Var(44) := 3
trigger2 = (Command = "holdback") && (Command = "holddown")
trigger2 = Var(44) := 2
trigger3 = (Command = "holdfwd") && (Command = "holddown")
trigger3 = Var(44) := 6
trigger4 = (Command = "holdfwd") && (Command = "holdup")
trigger4 = Var(44) := 7
trigger5 = (Command = "holdback")
trigger5 = Var(44) := 1
trigger6 = (Command = "holddown")
trigger6 = Var(44) := 4
trigger7 = (Command = "holdfwd")
trigger7 = Var(44) := 5
trigger8 = (Command = "holdup")
trigger8 = Var(44) := 8

[State -1, Super Jump - Vel X]
type = VelSet
trigger1 = Var(32) = 1
trigger1 = StateType = A
trigger1 = MoveType != H
trigger1 = StateNo < 800
x = 3 * (Command = "holdfwd") - 3 * (Command = "holdback")

;---------------------------------------------------------------------------
; Misc
;---------------------------------------------------------------------------

[State -1, Training Mode - Switch Forms]
type = ChangeState
triggerall = Var(59) = -1
triggerall = Var(50) = [0, 1]
triggerall = !Var(0)
triggerall = Ctrl
trigger1 = Command = "start"
value = 195

;---------------------------------------------------------------------------
; Head
;---------------------------------------------------------------------------

[State -1, AssertSpecial]
type = AssertSpecial
trigger1 = IsHelper(20300)
flag = NoShadow
ignorehitpause = 1

[State -1, PalFx - Red]
type = PalFx
triggerall = IsHelper(20300)
trigger1 = !HitShakeOver
trigger1 = !(Var(8) % 3)
time = 1
add = 128, -48, -64
ignorehitpause = 1

[State -1, PalFx - Blue]
type = PalFx
triggerall = IsHelper(20300)
trigger1 = !HitShakeOver
trigger1 = Var(8) % 3 = 2
time = 1
add = 16, 80, 112
ignorehitpause = 1

[State -1, PalFx - Gray]
type = PalFx
triggerall = IsHelper(20300)
trigger1 = !HitShakeOver
trigger1 = Var(8) % 3 = 1
time = 1
color = 0
ignorehitpause = 1

[State -1, PalFxCounter Decrement]
type = VarAdd
trigger1 = IsHelper(20300)
trigger1 = Var(8)
var(8) = -1
ignorehitpause = 1

[State -1, Remove]
type = DestroySelf
trigger1 = IsHelper(20300)
trigger1 = Parent, Var(50) != 1

[State -1, NotHitBy]
type = NotHitBy
triggerall = IsHelper(20300)
triggerall = Parent, StateNo = [21100, 21102]
trigger1 = Parent, BackEdgeDist < 0
trigger2 = Parent, FrontEdgeDist < 0
value = SCA