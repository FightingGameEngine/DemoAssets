;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
;-------------------------------------------------------------------------------
; Landing Sounds
;-------------------------------------------------------------------------------
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = 8,1
;-------------------------------------------------------------------------------
;Player Indictators for Player 1 and Player 2
;-------------------------------------------------------------------------------
;Player 2 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8612 - ((enemy,id)<id)
id = 8611
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 2 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8614 - ((enemy,id)<id)
id = 8613
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 1 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
; Player 1 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8613 + ((enemy,id)<id)
id = 8613
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
ownpal = 1
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Afterimage
;-------------------------------------------------------------------------------
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100 ; run forward
trigger1 = Stateno != 105 ; run backward
trigger1 = Stateno != 108 ;Air Dash backward
trigger1 = Stateno != 107 ;Air Dash forward
trigger1 = Stateno != 701 ;Super Jump
time = 0

;-------------------------------------------------------------------------------
;Phantom of the Server Corner Push System
;-------------------------------------------------------------------------------
[State -3, Corner Push]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]; Apply corner push
type= posadd
triggerall= fvar(5)
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85


; END


