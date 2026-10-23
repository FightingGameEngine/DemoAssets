[Statedef -2]

[State -2, Debug]
type = DisplaytoClipboard
trigger1 = 1
text = "prevstateno = %d\n var5=%d posz=%f animexist=%d f10=%f";fvar(2) = %f var(59) = %d var(58) = %d numhelper(20200) = %d";pos y = %f, fv(0) = %f, v(12) = %d"
params = prevstateno, var(5), pos z, SelfAnimExist(Anim), fvar(10);fvar(2), var(59), var(58), numhelper(20200);pos y, fvar(0), var(12)

; ============================================================================
; Begin Winane Training Mode Detection Code
; http://www.mugenguild.net/~winane/

[State -2, Increment]
type = VarAdd
trigger1 = var(59) = [0, 33]
trigger1 = StateNo != 5900
var(59) = 1
IgnoreHitPause = 1

[State -2, Training Mode?]
type = VarSet
trigger1 = Power = Const(data.power) && !Var(58)	; !Var(58) = at GameTime = 0
trigger1 = var(59) = 31 || var(59) = 1
trigger1 = NumEnemy < 2 && !NumPartner
trigger1 = RoundNo = 1 && MatchNo = 1 && ID = [32,33]
trigger1 = Life = [const(data.life) - 1, const(data.life)]
trigger1 = RoundState < 3
var(59) = -1
IgnoreHitPause = 1

[State -2, Not Training Mode?]
type = VarSet
triggerall = var(59)<31
trigger1 = NumEnemy > 1 || NumPartner
trigger2 = MatchNo > 1 || RoundNo > 1
trigger3 = RoundState > 2 || ID != [32,33]
var(59) = 31
IgnoreHitPause = 1

[State -2, PrevPower]
type = VarSet
trigger1 = var(59) = [1, 30]
var(58) = Power
IgnoreHitPause = 1

; ONLY if desired:
[State -2, Start Full]
type = Null;PowerSet
triggerall = RoundNo=1; or !RoundsExisted, if you want to be a little cheaper in turns mode; (or omit this line entirely, if player starts every round with full power)
trigger1 = var(59)=31
trigger2 = StateNo=5900
trigger2 = var(59)=34
value = const(data.power)
IgnoreHitPause = 1

; End Winane Training Mode Detection Code
; ============================================================================

;=====================
; AI
;=====================

; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

[State -2, StopAI]
type = VarSet
triggerall = var(57) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(57) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(57)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(57)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(57) = 1
trigger2 = var(0):=0
var(0) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

;=====================
; Shared
;=====================

[State -2, Super Armor - HitOverride]
type = HitOverride
trigger1 = Var(50) = [0, 1]
time = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 15000

[State -2, NoAutoTurn]
type = AssertSpecial
trigger1 = Var(50) = [0, 1]
flag = NoAutoTurn
ignorehitpause = 1

[State -2, NoGuard]
type = AssertSpecial
trigger1 = Var(50) = [0, 1]
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignorehitpause = 1

[State -2, TimerFreeze]
type = AssertSpecial
trigger1 = FVar(32)
flag = TimerFreeze
ignorehitpause = 1

[State -2, No Push]
type = PlayerPush
trigger1 = Var(50) = [0, 1]
;triggerall = Var(50) = [0, 1]
;trigger1 = !(Vel X); && (Anim = 10000 || Anim = [15000, 15020]) ; Allows player to not get pushed but also to not be able to push
;trigger2 = Var(50) = 1
value = 0
ignorehitpause = 1

[State -2, Super Armor - GetHit Counter Decrement]	; For hurt anim
type = VarAdd										; Used to prevent hurt anim from taking place
trigger1 = Var(7)
trigger1 = MoveType != H
var(7) = -1
ignorehitpause = 1

[State -2, Super Armor - GetHit Threshold Decrement]	; For hurt anim
type = VarAdd											; Used to prevent hurt anim from taking place
trigger1 = Var(28)										; Used as an anti-spam
trigger1 = MoveType != H
var(28) = -1
ignorehitpause = 1

;=====================
; Defense
;=====================

[State -2, Damage Dampener - Defense]
type = VarSet
trigger1 = 1
fvar(11) = 1
ignorehitpause = 1

[State -2, Damage Dampener - Defense - Level Playing Field]
type = Null;VarSet
trigger1 = 1
fvar(11) = FVar(11) * Const(data.life)/enemyNear, Const(data.life)
ignorehitpause = 1

;=====================
; Stage Interaction
;=====================

;[State -2, Stage Interaction - VarAdd]		; Originally the code was based off VIB's Character - Stage Interaction code
;type = VarAdd								; But it did not trigger every time.
;trigger1 = Var(52) < 2
;var(52) = 1

;[State -2, Stage Interaction - VarSet]
;type = VarSet
;triggerall = Var(52) = [1,2]				; Fighttime = [1,2]
;trigger1 = !Var(50)
;trigger1 = ScreenPos Y - FVar(0) = 11069	; Stage ID = 11069. FVar(0) = Float Pos Y
;trigger2 = Var(50) = 1
;trigger2 = ScreenPos Y - 300 = 11069		; 300 comes from Onslaught (2nd Form)'s intro PosSet
;var(52) = 3

[State -2, Stage Interaction - New York Skyline - Floor]
type = Null;Explod
;trigger1 = Var(52) = 3
trigger1 = Abs(Pos Z) = 26;11069			; Code based off Pos Z
trigger1 = !NumExplod(20100)
anim = 20100
id = 20100
pos = 160, 240
postype = Left
bindtime = 1
removetime = -1
sprpriority = -8
ownpal = 1

[State -2, Stage Interaction - New York Skyline - Floor]
type = Helper
triggerall = !Var(53)
;trigger1 = Var(52) = 3
trigger1 = Abs(Pos Z) = 26;11069			; Code based off Pos Z
trigger1 = !NumHelper(20100)
name = "Floor"
id = 20100
pos = 160, 24
postype = Left
stateno = 20100
ownpal = 1
supermovetime = 60		; So helper can turn itself invisible during a superpause
pausemovetime = 60

[State -2, Stage Interaction - XMvsSF - Apocalypse Now! - Floor]
type = Helper
triggerall = !Var(53)
;trigger1 = Var(52) = 3
trigger1 = Abs(Pos Z) = 27			; Code based off Pos Z
trigger1 = !NumHelper(20100)
name = "Floor"
id = 20100
pos = 162, -210
postype = Left
stateno = 20102
ownpal = 1
supermovetime = 60		; So helper can turn itself invisible during a superpause
pausemovetime = 60

[State -2, Stage Interaction - MSHvsSF - Apocalypse Now! - Floor]
type = Helper
triggerall = !Var(53)
;trigger1 = Var(52) = 3
trigger1 = Abs(Pos Z) = 28			; Code based off Pos Z
trigger1 = !NumHelper(20100)
name = "Floor"
id = 20100
pos = 160, 23
postype = Left
stateno = 20104
ownpal = 1
supermovetime = 60		; So helper can turn itself invisible during a superpause
pausemovetime = 60

;=====================
; Revert Custom State Changes
;=====================

[State -2, Revert Forced Turn]			; Does not work
type = Turn
trigger1 = Var(50) = [0, 1]
trigger1 = Facing != Var(23)
ignorehitpause = 1

[State -2, Revert Forced ChangeAnim]
type = ChangeAnim
trigger1 = Var(50) = [0, 1]
trigger1 = Anim != Var(24)
value = Var(24)
elem = Var(25)
ignorehitpause = 1

[State -2, Revert Forced ChangeAnimElem]
type = ChangeAnim
trigger1 = Var(50) = [0, 1]
trigger1 = AnimElemNo(0) != Var(25)
value = Var(24)
elem = Var(25)
ignorehitpause = 1

[State -2, Revert Forced Pos X Change]
type = PosSet
trigger1 = Var(50) = [0, 1]
trigger1 = Pos X != FVar(1)
x = FVar(1)
ignorehitpause = 1

[State -2, Revert Forced Pos Y Change]
type = PosSet
trigger1 = Var(50) = [0, 1]
trigger1 = Pos Y != FVar(1)
y = FVar(3)
ignorehitpause = 1

[State -2, Revert Forced State Change]
type = SelfState
trigger1 = Var(50) = [0, 1]
trigger1 = Var(22)
value = Var(5)
ctrl = !Var(5)
ignorehitpause = 1

[State -2, SelfState Check]
type = VarAdd
trigger1 = 1
var(22) = 1
ignorehitpause = 1

;======
; Misc
;======

[State -2, BGMusic - NoMusic]
type = AssertSpecial
trigger1 = FVar(30) = 1
flag = NoMusic

[State -2, BGMusic - PlaySnd - Onslaught (1st Form)]
type = PlaySnd
triggerall = FVar(30) = 1
triggerall = RoundState > 1 || RoundsExisted
triggerall = !Var(50) || (Var(50) = 3 && !Var(53))
triggerall = !FVar(29)
trigger1 = (P2Name != "Abyss" && P3Name != "Abyss" && P4Name != "Abyss")
trigger1 = (P2Name != "Onslaught" && P3Name != "Onslaught" && P4Name != "Onslaught")
trigger2 = ((P2Name = "Abyss" || P3Name = "Abyss" || P4Name = "Abyss" || P2Name = "Onslaught" || P3Name = "Onslaught" || P4Name = "Onslaught") && ID = 33)
trigger3 = ((((P2Name = "Abyss" || P3Name = "Abyss" || P4Name = "Abyss") && !enemyNear, FVar(38)) || ((P2Name = "Onslaught" || P3Name = "Onslaught" || P4Name = "Onslaught") && !enemyNear, FVar(30))))
value = 10000, 0 + Floor(FVar(29) := 1) * 0
channel = 5
loop = 1
abspan = 1

[State -2, BGMusic - PlaySnd - Onslaught (2nd Form)]
type = PlaySnd
triggerall = FVar(30) = 1
triggerall = RoundState > 1 || RoundsExisted
triggerall = Var(50) = [1, 2]
triggerall = StateNo != 20190
triggerall = !FVar(29)
trigger1 = (P2Name != "Abyss" && P3Name != "Abyss" && P4Name != "Abyss")
trigger1 = (P2Name != "Onslaught" && P3Name != "Onslaught" && P4Name != "Onslaught")
trigger2 = ((P2Name = "Abyss" || P3Name = "Abyss" || P4Name = "Abyss" || P2Name = "Onslaught" || P3Name = "Onslaught" || P4Name = "Onslaught") && ID = 33)
trigger3 = ((((P2Name = "Abyss" || P3Name = "Abyss" || P4Name = "Abyss") && !enemyNear, FVar(38)) || ((P2Name = "Onslaught" || P3Name = "Onslaught" || P4Name = "Onslaught") && !enemyNear, FVar(30))))
value = 10000, 1 + Floor(FVar(29) := 1) * 0
channel = 5
loop = 1
abspan = 1

[State -2, Hit Wall Spark]
type = Null;Explod
triggerall = enemyNear, StateNo = 5030
triggerall = enemyNear, Vel X
triggerall = !NumExplod(15030)
trigger1 = enemyNear, BackEdgeBodyDist <= 10
anim = 7070
id = 15030
pos = -16, -30
postype = p2
facing = -1
ownpal = 1
ignorehitpause = 1

[State -2, Life VarSet]		; Sets Var(21) to LifeMax at start of round
type = VarSet
trigger1 = RoundState < 2
trigger2 = Var(21) > LifeMax
; Training Mode/Space Bar
trigger3 = Var(59) = -1
;trigger3 = !NumHelper(20300)
trigger3 = Life > Var(21) && Life = LifeMax
;trigger4 = NumHelper(20300)
;trigger4 = Life > Var(21) && Life = LifeMax && Helper(20300), StateNo != 20310
var(21) = LifeMax

[State -2, NoKO]			; Used so when Sentinel is in play, P1 cannot be KOed
type = AssertSpecial		; Flaw is opponent can't be KOed as well
triggerall = !Var(53)
trigger1 = NumHelper(13210)
trigger1 = MoveType = H
flag = noko

[State -2, Sentinel - Damage]
type = VarAdd
triggerall = !Var(53)
trigger1 = Life < Var(21)
var(30) = - Ceil((Var(21) - Life) * (Const(data.defence)/100) * 100/125 * FVar(11))
ignorehitpause = 1

[State -2, Sentinel - Damage as Player]
type = VarSet
triggerall = Var(53)
trigger1 = Var(50) = 3
var(30) = Life
ignorehitpause = 1

[State -2, Sentinel - Red Life VarSet]
type = VarSet
triggerall = !Var(53)
trigger1 = Var(29) < 0
var(29) = 0

[State -2, Sentinel - Life VarSet]
type = VarSet
triggerall = !Var(53)
trigger1 = Var(30) < 0
trigger2 = Life = 0 && Var(30) > Life
var(30) = 0

[State -2, LifeSet]			; Var(21) = Life. Used to keep track of damage from head hits
type = LifeSet
trigger1 = !Var(53)
trigger1 = RoundState > 1
value = Var(21) * Alive
ignorehitpause = 1

[State -2, Partner Change Timer Decrement]
type = VarAdd
trigger1 = Var(18)
var(18) = -1

[State -2, Grab Timer Decrement]
type = VarAdd
trigger1 = Var(41)
var(41) = -1

;=====================
; Onslaught (1st Form)
;=====================

[State -2, No Push Dummy]		; Allows player to be able to push opponent withput opponent being able to push player
type = Helper
trigger1 = !Var(50)
trigger1 = !NumHelper(10002)
trigger1 = Life
trigger1 = !Lose
name = "No Push"
id = 10002
stateno = 10002

;=====================
; Onslaught 2nd Form
;=====================

[State -2, NoShadow]
type = AssertSpecial
trigger1 = Var(50) = 1
flag = NoShadow
ignorehitpause = 1

[State -2, ScreenBound]
type = ScreenBound
trigger1 = Var(50) = 1
trigger1 = Var(5) != [21100, 21102]	; Dash Punch
value = 0
;movecamera = 1, 0
movecamera = 0, 0
ignorehitpause = 1

;=====================
; Sentinel
;=====================

[State -2, SelfState]
type = SelfState
triggerall = RoundState > 1
triggerall = !Var(53)
triggerall = Var(50) = 3
triggerall = StateNo != 9150
trigger1 = StateNo = 5150
value = 9150

[State -2, Dizzy Counter Decrement]
type = VarAdd
trigger1 = Var(50) = 3
trigger1 = Var(43) > 0
var(43) = -1
ignorehitpause = 1

[State -2, Fly Timer Decrement]
type = VarAdd
trigger1 = Var(50) = 3
trigger1 = Var(34)
var(34) = -1
ignorehitpause = 1

[State -2, Fly Timer Over]
type = VarSet
trigger1 = Var(50) = 3
trigger1 = Var(34)
trigger1 = RoundState > 2
var(34) = 0
ignorehitpause = 1

[State -2, Fly - Land]
type = PosSet
triggerall = Var(50) = 3
triggerall = Var(34)
triggerall = Pos Y >= -Vel Y
trigger1 = MoveType = H
trigger2 = StateType != A
y = 0 + (Var(34) := 0) + (Var(33) := 0)
ignorehitpause = 1

[State -2, Fly - Off]
type = VarSet
triggerall = Var(50) = 3
triggerall = !Var(34)
triggerall = StateType = A
triggerall = Var(33)
trigger1 = Ctrl
var(33) = 0

[State -2, Grab - NoGuard]
type = AssertSpecial
triggerall = Var(50) = 3
trigger1 = Var(40)
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -2, Grab - NoAutoTurn]
type = AssertSpecial
triggerall = Var(50) = 3
trigger1 = Var(40)
flag = noautoturn

[State -2, Grab - Switch Off]
type = VarSet
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim != [1400, 1699]
trigger1 = Anim != [800, 850]
trigger2 = RoundState > 2
var(41) = 0

[State -2, Grab - Switch Off]
type = VarSet
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = !Var(41)
var(40) = 0

[State -2, Grab - Target Self State]
type = TargetState
triggerall = Var(50) = 3
triggerall = !Var(40)
triggerall = NumTarget(1400)
trigger1 = !Var(41)
value = 1407
id = 1400

[State -2, Lifebar]
type = Explod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = !NumExplod(7700)
trigger1 = !NumHelper(19000)
anim = 7700
id = 7700
pos = 30 * (TeamSide = 1) + 188 * (TeamSide = 2), 220
postype = left
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
ownpal = 1

[State -2, Lifebar - Small Portrait]
type = Explod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = !NumExplod(7705)
trigger1 = !NumHelper(19000)
anim = 7705
id = 7705
pos = 4 * (TeamSide = 1) + 315 * (TeamSide = 2), 210
postype = left
facing = 1 * (TeamSide = 1) - 1 * (TeamSide = 2)
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
ownpal = 1

[State -2, Lifebar - Red Bar]
type = Explod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = !NumExplod(7710)
trigger1 = !NumHelper(19000)
anim = 7710
id = 7710
pos = (31 + (100 - 100 * Var(29)/1000))* (TeamSide = 1) + 189 * (TeamSide = 2), 220
postype = left
bindtime = -1
removetime = -1
sprpriority = 6
ontop = 1
ownpal = 1

[State -2, Lifebar - Scale Red Bar]
type = ModifyExplod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = NumExplod(7710)
trigger1 = MoveType != H
id = 7710
pos = (31 + (100 - 100 * Var(29)/1000))* (TeamSide = 1) + 189 * (TeamSide = 2), 220
postype = left
scale = 100 * Var(29)/1000, 1

[State -2, Lifebar - Yellow Bar]
type = Explod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = !NumExplod(7720)
trigger1 = !NumHelper(19000)
anim = 7720
id = 7720
pos = (31 + (100 - 100 * Var(30)/1000))* (TeamSide = 1) + 189 * (TeamSide = 2), 220
postype = left
bindtime = -1
removetime = -1
sprpriority = 7
ontop = 1
ownpal = 1

[State -2, Lifebar - Scale Yellow Bar]
type = ModifyExplod
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = NumExplod(7720)
id = 7720
pos = (31 + (100 - 100 * Var(30)/1000))* (TeamSide = 1) + 189 * (TeamSide = 2), 220
postype = left
scale = 100 * Var(30)/1000, 1

[State -2, Reduce Red Bar]
type = VarAdd
triggerall = Var(29) > Var(30)
trigger1 = MoveType != H
var(29) = -1 * 5	; Speed of reduction

[State -2, Remove LifeBar]
type = RemoveExplod
triggerall = !Var(53)
trigger1 = Var(50) != 3
trigger1 = NumExplod(7700)
trigger2 = NumHelper(19000)
id = 7700

[State -2, Remove LifeBar - Small Portrait]
type = RemoveExplod
triggerall = !Var(53)
trigger1 = Var(50) != 3
trigger1 = NumExplod(7705)
trigger2 = NumHelper(19000)
id = 7705

[State -2, Remove LifeBar - Red Bar]
type = RemoveExplod
triggerall = !Var(53)
trigger1 = Var(50) != 3
trigger1 = NumExplod(7710)
trigger2 = NumHelper(19000)
id = 7710

[State -2, Remove LifeBar - Yellow Bar]
type = RemoveExplod
triggerall = !Var(53)
trigger1 = Var(50) != 3
trigger1 = NumExplod(7720)
trigger2 = NumHelper(19000)
id = 7720

[State -2, Win - VarRandom]
type = VarRandom
triggerall = Var(50) = 3
trigger1 = RoundState < 3
v = 42
range = 1, 2

[State -2, Win B - Invisible Projectile]	; Purpose is to give player a target
type = Projectile
triggerall = Var(50) = 3
triggerall = Var(42) = 2
triggerall = WinKO && RoundState = 3
triggerall = !NumTarget
trigger1 = enemyNear, StateNo = [5100, 5110]
projid = 6100
projanim = 6100
postype = p2
attr = S, NA
hitflag = MAFD
guardflag = 
sparkno = -1
guard.sparkno = -1
hitsound = -1, -1
guardsound = -1, -1
p2stateno = enemyNear, StateNo
p2getp1state = 0
numhits = 0

[State -2, Win B - TargetState]
type = TargetState
triggerall = Var(50) = 3
triggerall = Var(42) = 2
triggerall = WinKO && RoundState = 3
triggerall = NumTarget
triggerall = target, StateNo != 5150
triggerall = !target, Pos Y
trigger1 = target, StateNo = 5110
trigger1 = !target, AnimTime
;trigger2 = target, StateNo = 5100
value = 5150 + Floor((FVar(20) := target, Pos X) * 0 + (FVar(21) := 1) * 0)
; Must change to StateNo 5150 to make the round able to end

;==================================
; Combo Messages and Score Control
;==================================

[State -2, VS_Combo]
type = VarSet
trigger1 = var(47) >= 3
trigger2 = var(47) = -1 && (movehit || p2stateno = [5000,5899])
var(48) = 1+(var(47)>4)+(var(47)>5)+(var(47)>7)+(var(47)>9)+(var(47)>29)+(var(47)>49)+(var(47)>69)-(var(47)=-1)
ignorehitpause = 1

[State -2, Danger]
type = VarSet
trigger1 = var(49) !=1 && roundstate = 2 && life = [1, 250]
var(48) = 9
ignorehitpause = 1

[State -2, First Attack]
type = PlaySnd
triggerall = var(47) = -1
triggerall = NumExplod(7500) = 0
trigger1 = var(47) = -1 && (movehit || p2stateno = [5000,5899])
persistent = 0
value = 7500, 0
volume = 255
ignorehitpause = 1

[State -2, Combo Sound]
type = PlaySnd
trigger1 = NumExplod(7500) = 0
trigger1 = var(47) = 0 && var(48)!= 0
persistent = 0
value = 7500, var(48)
volume = 255
ignorehitpause = 1

[State -2, Left]
type = Explod
trigger1 = var(47) = 0 && var(48) != 0
trigger2 = var(47) = -1 && (movehit || p2stateno = [5000,5899])
triggerall = TeamSide = 1 && NumExplod(7500) = 0
anim = (7500 + var(48))
ID = 7500
postype = left
pos = 0,80
ontop = 1
bindtime = -1
removetime = 60
supermovetime = 60
pausemovetime = 60
scale = 0.5,0.5
persistent = 0
ignorehitpause = 1

[State -2, Right]
type = Explod
trigger1 = var(47) = 0 && var(48) != 0
trigger2 = var(47)=-1 && (movehit || p2stateno = [5000,5899])
triggerall = TeamSide = 2 && NumExplod(7500) = 0
anim = (7600 + var(48))
ID = 7500
postype = right
pos = -1,80
ontop = 1
bindtime = -1
removetime = 60
supermovetime = 60
pausemovetime = 60
scale = 0.5,0.5
persistent = 0
ignorehitpause = 1

[State -2, VS_Combo]
type = VarAdd
trigger1 = enemynear, time = 0
trigger1 = enemynear, Hitshakeover = 0
trigger1 = p2stateno = [5000,5899]
trigger2 = var(47) = -1 && (movehit || p2stateno = [5000,5899])
var(47) = 1 + (var(47) = -1)
ignorehitpause = 1

[State -2, VS_Combo]
type = VarSet
trigger1 = var(47) != -1 && (p2movetype!=H || enemynear, ctrl)
trigger2 = var(47) = -1
trigger2 = (StateNo = [5000,5899]) || (StateNo = [15000, 15002])
var(47) = 0 - (roundstate < 2)
ignorehitpause = 1

[State -2, VS_Combo]
type = VarSet
triggerall = numexplod(7500) != 0
trigger1 = var(47) = 0
var(48) = 0
ignorehitpause = 1

[State -2, Is Danger]
type = VarSet
trigger2 = var(49) = 0 && life <= 250
trigger1 = var(49) = 1 && roundstate != 2
var(49) = (roundstate > 1)
ignorehitpause = 1