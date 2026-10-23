;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;Player 1 Locator Label
[State -3]
type = Explod
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
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
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

; Player 2 Locator Label
[State -3]
type = Explod
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
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
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (O)-próprio
[State -3]
type = Explod
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger1 = var(39)=var(37)
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (>)-próprio
[State -3]
type = Explod
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
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
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)

[State 0, SelfState]
type = SelfState
trigger1 =  stateno = [2000,2999]
trigger1 = roundstate = 3
value = 50
ctrl =1

[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0

;--------------------------------------------------
; Level-up sounds [Uses Var(2)]
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,1
volume = 255
volume = 255
ignorehitpause = 1
persistent = 1

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,2
volume = 255
volume = 255
ignorehitpause = 1
persistent = 1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,3
volume = 255
volume = 255
ignorehitpause = 1
persistent = 1

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3

;-------------------------------------------------------------------------------

;P1 Life Nearly Depleted Sound [Uses Var(29)]

[State -2, danger] 
type = lifeadd
trigger1 = life <= 350
trigger1 = var(29) = 0
value = -1

;"I can hardly move without somebody wanting a piece of me"
[State -2, danger]
type = playsnd
trigger1 = life <= 350
trigger1 = var(29) = 0
value = S28,13
volume = 255
ignorehitpause = 1
persistent = 1

[State -2, danger reset]
type = varset
trigger1 = life <= 349
var(29) = 1

