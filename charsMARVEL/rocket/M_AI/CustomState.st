;------------------------------------------------------------------------------------------
; Hit by  - shaking from the hit #### (For Air Dual Shot)
; 

[Statedef 9087]
type    = A
movetype= H
physics = N
velset = -5,-7;0,0

[State 9020, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9086;30

;------------------
; Hit by - flying through the air
; 
[Statedef 9086]
type    = A
movetype= H
physics = N

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9030, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,0

[State 9030, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9088;27


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(5061)
value = 5061
persistent = 0


[State 5050, 4] ;Recover near ground
type = null;ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5070]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall 
;
[Statedef 9088]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027, Pos]
type = null;PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = null;PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

[State 9027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9089

;------------------
; Hit by  - bounce off wall
;
[Statedef 9089]
type    = A
movetype= H
physics = N


[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6;.3

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = .5

[State 9028, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .26

[State 9028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100



;---------------------------------------------------------------------------
; AI Walk Forward
[Statedef 25]
type    = S
physics = S
sprpriority = 0
anim = 20

[State 20, 1]
type = VelSet
trigger1 = var(59)
x = const(velocity.walk.fwd.x)