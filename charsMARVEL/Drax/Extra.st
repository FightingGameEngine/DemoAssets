;-------------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1
;-------------------------------------------------------------------------------
;Liedown Roll Forward Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9600]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 0,0
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,NumHelper(8400)=1
id = 7005

[State 0, ChangeState]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1

[State 0, Listras2]
type = Explod
trigger1 = 1
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000
value =  9601
ctrl = 0

;-------------------------------------------------------------------------------
;Hyper Background End
;-------------------------------------------------------------------------------
[Statedef 9601]
type = S
movetype = I
physics = N
anim = 9999

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = !time
time = 20
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S9600,0

[state 8010]
type = modifyexplod
trigger1 = 1
id = 7005
scale = 1.0,1.0+time/-15.0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15


;------------------
; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(16) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(16)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(16):=1
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2


;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick dir activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9742, PauseCheck]
type = VarSet
trigger1 = (GameTime>Parent,var(57))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)

[State 9742, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = (var(6):=0)
var(6) = 1

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "start")
trigger8 = (var(7):=0)
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = (Parent,command = "a")
trigger1 = (Partner,command = "a")
trigger2 = (Parent,command = "b")
trigger2 = (Partner,command = "b")
trigger3 = (Parent,command = "c")
trigger3 = (Partner,command = "c")
trigger4 = (Parent,command = "x")
trigger4 = (Partner,command = "x")
trigger5 = (Parent,command = "y")
trigger5 = (Partner,command = "y")
trigger6 = (Parent,command = "z")
trigger6 = (Partner,command = "z")
trigger7 = (Parent,command = "start")
trigger7 = (Partner,command = "start")
trigger8 = (var(15):=0)
var(15) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(1)
trigger1 = var(6)
trigger1 = !var(3)
trigger1 = !var(4)
trigger1 = !var(9)
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5)
trigger1 = var(7)
trigger1 = !var(2)
trigger1 = !var(15)
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = !var(8)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "start")
trigger7 = (Parent,command = "start")
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = (var(2) = 2)
trigger2 = (var(2):=0)
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6)
trigger2 = var(7)
trigger3 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = (var(1):=1)
var(5) = !var(7)


;------------------
; XOR Method's HitPauseTime Helper State

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, HitPauseTime]
type = VarSet
trigger1 = !(Parent,HitPauseTime)
trigger2 = (GameTime>Parent,var(57))
var(1) = Parent,HitPauseTime

[State 9742, Goodbye]
type = DestroySelf
trigger1 = (Parent,var(59) = 1)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)


