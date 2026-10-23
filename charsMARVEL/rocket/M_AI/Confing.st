;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;Constatnt AI Activation ON/OFF
[State -3, AI ON/OFF]
type = VarSet
trigger1 = 1
var(58) = 0 ; 0 - Off  /  1 - On

;Guts Mechanic (Attack Up)
[State -3, Guts Mechanic (Attack Up)]
type = VarSet
trigger1 = 1
var(57) = 0 ; 0 - Off  /  1 - On


;Guts Mechanic (Defence Up)
[State -3, Guts Mechanic (Defence Up)]
type = VarSet
trigger1 = 1
var(56) = 0 ; 0 - Off  /  1 - On


;Constant Life Recovery ON/OFF
[State -3, Constant Life Recovery]
type = VarSet
trigger1 = 1
var(55) = 0 ; 0 - Off  /  1 - On


;Constant Power Recovery ON/OFF
[State -3, Constant Power Recovery]
type = VarSet
trigger1 = 1
var(54) = 0 ; 0 - Off  /  1 - On


;---------------------------------------------------------------------------
; Please do not change the settings below.
;--------------------------------------------------------------------------- 

;This controller plays a sound everytime the player lands from a jump, or
;from a back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -1]
Type = DisplayToClipBoard
Trigger1 = 1
Text = "P2BodyDist X=%f, \t P2Dist Y=%f"
Params = P2BodyDist X, P2Dist Y
IgnoreHitPause = 1


;------------------------------------------------------------------------------;
; Var
;------------------------------------------------------------------------------;
[State -2:          Hit Count Reset]
type           = VarSet
triggerall     = !IsHelper
trigger1       = MoveType != H
trigger2       = StateNo = [120, 159]
v              = 33
value          = 0
ignorehitpause = 1

[State -2:          Hit Count]
type           = VarSet
triggerall     = !IsHelper
trigger1       = MoveType = H
trigger1       = StateNo != [120, 159]
v              = 33
value          = GetHitVar(HitCount)
ignorehitpause = 1

[State -2]
type = Varset
trigger1 = 1
fvar(6) = 1 * ifelse(var(56)=1,Life*0.001,1)
ignorehitpause = 1


[State , Fall Defence Up]
type = Varset
trigger1 = 1
trigger1 = alive && !Ishelper
trigger1 = Statetype = L && movetype = H
var(34) = 1
ignorehitpause = 1

[State , Fall Defence Up]
type = Varset
trigger1 = alive && !Ishelper
trigger1 = var(34) = 1
trigger1 = movetype != H
var(34) = 0
ignorehitpause = 1

;-------------------------------------------------------------------------------
;Changing Status
;-------------------------------------------------------------------------------

[State -2, Attack Up]
type = AttackMulSet
trigger1 = 1
value = 1 * ifelse(var(57),1+(LifeMax-Life)*0.0018,1)

[State -2, Defence Up notL]
type = DefenceMulSet
trigger1 = 1
trigger1 = var(34) != 1
value = 1 / ifelse(var(56)=1,1+(LifeMax-Life)*0.004,1)
ignorehitpause = 1

[State -2, Defence Up L]
type = DefenceMulSet
trigger1 = 1
trigger1 = var(34) = 1
value = 0.7 / ifelse(var(56)=1,1+(LifeMax-Life)*0.004,1)
ignorehitpause = 1

[State -2, Life Up]
type = lifeadd
trigger1 = var(55) = 1
trigger1= (GameTime% 1 )=0 
value = 1
;ignorehitpause =1

[State -2, Power Up]
type = Poweradd
trigger1 = roundstate = 2
trigger1 = var(54) = 1
trigger1= (GameTime% 1 )=0 
value = 2
;ignorehitpause =1


;---------------------------------------------------------------------------
[State -2 AI combo marking (Pull Cannon)]
Type = helper
Trigger1 = projhittime(1004) = 1
trigger1 = !numhelper(1068)
helpertype = Normal
name = "1068"
ID =  1068
postype = P1
pos = 0,0
stateno = 1068
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
sprpriority = 4

;---------------------------------------------------------------------------

[State -2 AI combo marking (Puls Bombs)]
Type = helper
Trigger1 = Projhittime(4201) = 1
trigger1 = enemynear,pos Y > -140
trigger1 = !numhelper(4028)
helpertype = Normal
name = "4028"
ID =  4028
postype = P1
pos = 0,0
stateno = 4028
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
sprpriority = 4



;---------------------------------------------------------------------------
; Helper States Only
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 1068]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 184
sprpriority = -4

[State 184, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, DestroySelf]
type = DestroySelf
triggerall = numenemy = 1
trigger1 = enemynear,movetype != H
trigger2 = enemynear,stateno = [150,155]
trigger3 = enemynear,stateno = [5100,5120]

;---------------------------------------------------------------------------
[Statedef 4028]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 185
sprpriority = -4

[State 4028, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4028, DestroySelf]
type = DestroySelf
triggerall = numenemy = 1
trigger1 = enemynear,movetype != H
trigger2 = enemynear,stateno = [150,155]
trigger3 = enemynear,stateno = [5100,5120]
;trigger1 = enemynear,stateno != [5000,5050] <= NO WORK!!!!
;---------------------------------------------------------------------------

