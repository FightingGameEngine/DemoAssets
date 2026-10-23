[Statedef -3]

;=====================
; AI
;=====================

; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
; Feel free to move this controller to your character's intro state for slightly
; better efficiency.
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(57) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(57) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy
; control options in Training mode without activating the dummy's AI while
; working on the character, then all you need to do is temporarily disable
; this controller.  Or, if you want to permanently disable this controller in
; Training mode, then you could use the Training mode detection code available
; from my site ( http://www.mugenguild.net/~winane/ ), and then just add a
; "(var(59)&63)>30" triggerall to this controller.
; Alternatively, you can just set "Dummy control" to "Manual", press a P2 button
; to kill the AI helper, and then set dummy control back to "Cooperative".  (In
; fact, setting dummy control to manual isn't even necessary, if you press the
; P2 button prior to the first time you pause.)
[State -3, AI Helper]
type = Helper
triggerall = !var(57) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(57) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(57) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(57)!=1 && !IsHelper
triggerall = !var(1)
triggerall = var(2) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(57) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = VarAdd
trigger1 = var(1) > 0 && !IsHelper
var(1) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(2) < GameTime-1 && !IsHelper
var(1) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(2) = GameTime
IgnoreHitPause = 1

; Within StateDef -3, none of your own AI-related code should come after the code
; provided here (and putting it before the code is also generally a bad idea).
; It's better to use State -1 (or, in special circumstances, State -2) instead.

;=====================
; Shared
;=====================

[State -3, Super Armor - Store StateNo]
type = VarSet
trigger1 = MoveType != H
var(5) = StateNo

;=====================
; Damage Dampener
;=====================

[State -3, Damage Dampener - Based on HitCount]
type = VarSet
trigger1 = NumEnemy
;fvar(10) = (1 - 0.1 * (target, GetHitVar(HitCount) = 1) - 0.2 * (target, GetHitVar(HitCount) > 1)) ** (target, GetHitVar(HitCount))
fvar(10) = (1 - 0.1 * (enemyNear, GetHitVar(HitCount) = 1) - 0.2 * (enemyNear, GetHitVar(HitCount) > 1)) ** (enemyNear, GetHitVar(HitCount))
ignorehitpause = 1

[State -3, Damage Dampener - Reset]
type = VarSet
trigger1 = enemyNear, MoveType != H
fvar(10) = 1
ignorehitpause = 1

[State -3, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = FVar(10)
ignorehitpause = 1

;=====================
; Check Custom State Changes
;=====================

[State -3, SelfState Check]
type = VarSet
trigger1 = 1
var(22) = 0
ignorehitpause = 1

[State -3, Forced Turn Check]	; Doesn't work
type = VarSet
trigger1 = 1
var(23) = Facing
ignorehitpause = 1

[State -3, Forced ChangeAnim Check]
type = VarSet
trigger1 = 1
var(24) = Anim
ignorehitpause = 1

[State -3, Forced ChangeAnim Elem Check]
type = VarSet
trigger1 = 1
var(25) = AnimElemNo(0)
ignorehitpause = 1

[State -3, Forced Pos X Check]
type = VarSet
trigger1 = 1
fvar(1) = Pos X
ignorehitpause = 1

[State -3, Forced Pos Y Check]
type = VarSet
trigger1 = 1
fvar(3) = Pos Y
ignorehitpause = 1

[State -3, Lose]
type = ChangeState
triggerall = RoundState > 1
triggerall = !Var(53)
triggerall = StateNo != 5150
triggerall = StateNo != 15150
triggerall = StateNo != 25150
trigger1 = !Alive
trigger2 = Life = 0 && Var(21) > Life
trigger2 = Var(50) = 1
trigger2 = (Var(21) := 0) + 1
trigger3 = Life = 0 && Var(21) > Life
trigger3 = !Var(50)
trigger3 = !FVar(31)
trigger3 = (Var(21) := 0) + 1
trigger4 = Life = 0 && Var(21) > Life
trigger4 = !Var(50)
trigger4 = FVar(31) = 1
value = 5150 + (FVar(31) = 1 && !Var(50)) * 10000

;=====================
; Onslaught (1st Form)
;=====================

[State -3, Turn]
type = ChangeState
trigger1 = !Var(50)
trigger1 = P2Dist X < 0
trigger1 = Ctrl
value = 10005

[State -3, PosSet]			; Sets position y to 0 due to floating
type = PosSet
trigger1 = !Var(50)
trigger1 = StateNo			; StateNo is not 0
trigger1 = StateNo != [5000, 5999]	; StateNo is not GetHit state
trigger1 = StateNo != [15000, 15001]	; StateNo is not GetHit state
trigger1 = StateNo != 180
trigger1 = StateNo != 10180
y = 0

;=====================
; Onslaught (2nd Form)
;=====================

[State -3, Head]
type = Helper
trigger1 = Var(50) = 1
trigger1 = !NumHelper(20300)
trigger1 = Alive
trigger1 = !Lose
trigger1 = RoundState > 0 || RoundsExisted
name = "Head"
id = 20300
stateno = 20300
keyctrl = 1
ownpal = 1

[State -3, PalFx - Red]
type = PalFx
trigger1 = Var(50) = 1
trigger1 = !HitShakeOver
trigger1 = !(Var(14) % 3)
time = 1
add = 128, -48, -64
ignorehitpause = 1

[State -3, PalFx - Blue]
type = PalFx
trigger1 = Var(50) = 1
trigger1 = !HitShakeOver
trigger1 = Var(14) % 3 = 2
time = 1
add = 16, 80, 112
ignorehitpause = 1

[State -3, PalFx - Gray]
type = PalFx
trigger1 = Var(50) = 1
trigger1 = !HitShakeOver
trigger1 = Var(14) % 3 = 1
time = 1
color = 0
ignorehitpause = 1

[State -3, Head Hit - ChangeState - PosFreeze]	; Freezes when head is hit
type = ChangeState
trigger1 = Var(50) = 1
trigger1 = StateNo != 15000
trigger1 = NumHelper(20300)
trigger1 = Helper(20300), StateNo = [20310, 20311]
trigger1 = !Lose
trigger1 = !Win
value = 15002
ctrl = 0

;=====================
; Sentinel
;=====================

[State -3, PalFx - Normal]	; In MvC 2, Sentinel's palfx flickers between palfx and no palfx
type = PalFx
trigger1 = Var(50) = 3
trigger1 = (Var(14) % 2 = 1) && Var(14)
time = 1
add = 0, 0, 0
ignorehitpause = 1

[State -3, PalFx]
type = PalFx
trigger1 = Var(50) = 3
trigger1 = !(Var(14) % 2) && Var(14)
time = 1
add = 256, 68 - 68 * !(Var(14) % 4), -256
; Tone 1 = add 0 to green (68 - 68 (when var(14) % 4 = 0 and using ! to invert it to 1)
; Tone 2 = add 68 to green
ignorehitpause = 1

[State -3, PalFxCounter Decrement]	; Used for Onslaught (2nd Form) and Sentinel
type = VarAdd
trigger1 = Var(14)
var(14) = -1
ignorehitpause = 1

[State -3, Super Jump Gravity]
type = VelAdd
trigger1 = Var(50) = 3
trigger1 = Var(32) = 1
trigger1 = !Var(34)
trigger1 = StateType = A
trigger1 = MoveType != H
trigger1 = StateNo < 800
y = 0.161	; 0.381 - 0.22

[State -3, ScreenBound Aerial Knock Down]
type = ScreenBound
trigger1 = Var(50) = 3
trigger1 = NumTarget(600)
value = 0
movecamera = 0, 0

[State -3, Partner Change Over]
type = ChangeState
triggerall = !Var(53)
trigger1 = Var(50) = 3
trigger1 = !Var(18)
trigger1 = Ctrl && StateType != A
value = 9040

[State -3, KO]
type = ChangeState
triggerall = !Var(53)
triggerall = Var(50) = 3
triggerall = !Var(30)
triggerall = StateNo != [9100, 9150]
trigger1 = RoundState > 1
value = 9100

[State -3, Dizzy]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = Var(43) >= 6000
trigger1 = MoveType = H
trigger1 = RoundState = 2
value = 5250