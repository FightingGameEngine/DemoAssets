;---------------------------------------------------------------------------
;Hypers
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------
;Legion Arrow LM(ground)

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3000, Hyper Portrait]
type = explod
trigger1 = AnimElem = 4
;trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3000, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3000, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3000, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

;[State 3000, Ground Flash]
;type = Explod
;trigger1 = time = 0
;anim = 6666
;ID = 8400
;postype = P1
;pos = -40,0
;sprpriority = 3
;scale = .5,.5
;ownpal = 1

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = 1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 3000, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0
channel = 8

[State 3000, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2
channel = 7

[State 3000, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1
channel = 6

[State 3000, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
;trigger1 = time = 0
anim = 11001
id = 11001
sprpriority = 15
postype = p1
pos = 30,-70;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 1000]
type = VarRandom
trigger1 = 1
v = 6
range = -3,3
IgnoreHitPause = 1

[State 3000, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,HA
damage = 100,20
givepower = 0
getpower = 0
animtype = Medium
givepower = 300
getpower =   275
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = s20021
sparkxy = -10, -53
guard.sparkno = s20050
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25

[State 1000, projectile]
type = Projectile
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
attr = S, SP
damage = 11,2
getpower  = 0,0
givepower = 1,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 100,-70;+var(6)
velocity = 13,0+var(6)
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1.8,1.1;1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
guardflag = MA
priority = 4
sparkno = s20021
sparkxy = 10,0;20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
;hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -3,0
guard.hittime  = 22
air.velocity = -3,0
;air.juggle = 4 
fall = 1
air.fall = 1
fall.recover = 0

[State 3000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Legion Arrow LM(air)

[Statedef 3001]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3001
ctrl = 0
sprpriority = 2

[State 3001, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3001, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3001, Hyper Portrait]
type = explod
trigger1 = AnimElem = 4
;trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3001, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3001, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3001, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3001, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3021, PosSet]
type = PosSet
trigger1 = animelem = 1
trigger1 = pos Y > -50
Y = -50
ignorehitpause = 1

[State 3001, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0

[State 3000, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2

[State 3001, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1

[State 3001, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
;trigger1 = time = 0
anim = 11001
id = 11001
sprpriority = 15
postype = p1
pos = 30,-70;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 3001]
type = VarRandom
trigger1 = 1
v = 6
range = -3,3
IgnoreHitPause = 1

[State 3001, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,HA
damage = 100,20
givepower = 50
getpower = 0
animtype = Medium
givepower = 0
getpower =   275
guardflag = HA
hitflag = MAFLD
priority = 4, Hit
pausetime = 13,14
sparkno = s7703
sparkxy = -10, -53
guard.sparkno = 6767
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5
fall = 1
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25

[State 3001, arrow]
type = Projectile
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
attr = S, SP
damage = 11,2
getpower  = 0,0
givepower = 1,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
offset = 100,-70
velocity = 17,0+var(6)
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1.8,1.1;1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -3,0
guard.hittime  = 22
air.velocity = -3,0;
;air.juggle = 4
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = floor(50*fvar(1))


;-----------------------------------硬直処理
[State 3021, VelSet]
type = VelSet
trigger1 = AnimElem = 80
Y = 1.2

[State vPosset]
type = PosSet
trigger1 = ( AnimElem >= 80 ) && ( pos Y > 0 )
y = 0

[State land]
type = ChangeState
trigger1 = ( AnimElem >= 80 ) && ( pos Y >= 0 )
value = 52


[State 3001, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Legion Arrow LH(ground)

[Statedef 3010]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3010
ctrl = 0
sprpriority = 2

[State 3010, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3010, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3010, Hyper Portrait]
type = explod
trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3010, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3010, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3010, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3010, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 3010, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0
channel = 8

[State 3010, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2
channel = 7

[State 3010, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1
channel = 6

[State 3010, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
;trigger1 = time = 0
anim = 11004
id = 11004
sprpriority = 15
postype = p1
pos = 30,-70;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 1000]
type = VarRandom
trigger1 = 1
v = 6
range = -1,4
IgnoreHitPause = 1

[State 3010, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,HA
damage = 100,20
givepower = 0
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = s20021
sparkxy = -10, -53
guard.sparkno = s20050
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25

[State 1000, projectile]
type = Projectile
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
attr = S, SP
damage = 11,1
getpower  = 0,0
givepower = 1,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 115,-110
velocity = 14,-10+var(6)
accel = 0,0
projID = 10004
projanim = 10004
projhitanim = 10004
projremanim = 10004
projscale = 1.8,1.1;1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
sparkxy = 10,0;20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -3,0
guard.hittime = 22
air.velocity = -3,-1
;air.juggle = 4 
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = floor(50*fvar(1))

[State 3010, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Legion Arrow LH(air)
[Statedef 3011]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3011
ctrl = 0
sprpriority = 2

[State 3011, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3011, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3011, Hyper Portrait]
type = explod
trigger1 = AnimElem = 4
;trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3011, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3011, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3011, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3011, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3021, PosSet]
type = PosSet
trigger1 = animelem = 1
trigger1 = pos Y > -50
Y = -50
ignorehitpause = 1

[State 3011, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0

[State 3011, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2

[State 3011, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1

[State 3011, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
;trigger1 = time = 0
anim = 11003
id = 11003
sprpriority = 15
postype = p1
pos = 30,-70;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 3011]
type = VarRandom
trigger1 = 1
v = 6
range = -3,3
IgnoreHitPause = 1

[State 3011, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,HA
damage = 100,20
givepower = 50
getpower = 0
animtype = Medium
givepower = 0
getpower =   0
guardflag = MA
hitflag = MAFLD
priority = 4, Hit
pausetime = 13,14
sparkno = s20021
sparkxy = -10, -53
guard.sparkno = s20050
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5,0
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 3011, projectile]
type = Projectile
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
attr = S, SP
damage = 11,2
getpower  = 0,0
givepower = 1,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 115,-45
velocity = 15+var(6),10+var(6)
accel = 0,0
projID = 10003
projanim = 10003
projhitanim = 10003
projremanim = 10003
projscale = 1.8,1.1;1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 10,0;20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -3,0
air.velocity = -1,1;-3,-4
down.velocity = 0,0
down.hittime = 25
;air.juggle = 4 
fall = 1
air.fall = 1
fall.recover = 0


;-----------------------------------硬直処理
[State 3021, VelSet]
type = VelSet
trigger1 = AnimElem = 80
Y = 1.2

[State vPosset]
type = PosSet
trigger1 = ( AnimElem >= 80 ) && ( pos Y > 0 )
y = 0

[State land]
type = ChangeState
trigger1 = ( AnimElem >= 80 ) && ( pos Y >= 0 )
value = 52


[State 3011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Legion Arrow MH(ground)

[Statedef 3020]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3020
ctrl = 0
sprpriority = 2

[State 3020, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3020, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3020, Hyper Portrait]
type = explod
trigger1 = AnimElem = 4
;trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3020, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3020, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3020, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3020, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 3020, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0

[State 3020, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2

[State 3020, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1

[State 3020, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
;trigger1 = time = 0
anim = 11002
id = 11002
sprpriority = 15
postype = p1
pos = 0,-90;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 1000]
type = VarRandom
trigger1 = 1
v = 6
range = 0,6
IgnoreHitPause = 1

[State 3020, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 100,20
givepower = 0
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = s7703
sparkxy = -10, -53
guard.sparkno = 6767
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25

[State 1000, arrow]
type = Helper
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
id = 3022
pos = 0,-90
postype = p1
stateno = 3022
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = 0.8
size.yscale = 1.5

[State 3020, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------------
;Arrows for LegionMH Ground
[Statedef 3022]
type     = A
movetype = A
physics  = N
anim     = 10002
poweradd = 0
juggle   = 0
sprpriority = 2

[State 3022, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, SP 
animtype  = Hard
damage    = 10,5
getpower  = 0,0
givepower = 1,0 
priority  = 6
hitflag = MAFL
guardflag = MA
pausetime = 0,10
sparkno = s20021
guard.sparkno = s20050
sparkxy = -10,-20
hitsound = s8000,10
guardsound = s8500,0
ground.type = Low
ground.slidetime = 13
ground.hittime  = 15
guard.hittime  = 22
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
air.fall = 0
fall.animtype = Hard
fall.recover = 0
Persistent = 0
kill = 1

[State 3022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3022, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP

[State 3022, アーマー]
type = Hitoverride
trigger1 = 1
time = -1
attr = SCA, AP
slot = 1
stateno = 3027

[State 3022]
type = velset
trigger1 = time = 0
x = 2
y = -10

[State 3022, ステート変更]
type = ChangeState
trigger1 = movecontact
value = 3027
ctrl = 0

[State 3022, ステート変更]
type = ChangeState
trigger1 = time > 12
value = 3023
ctrl = 0

;------------------------------------
;落下
[Statedef 3023]
type     = A
movetype = A
physics  = N
anim     = 10006
poweradd = 0
velset = 0,0
juggle   = 0
sprpriority = 1

[State 3022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3023, posAdd]
type = posadd
trigger1 = AnimElem = 2
x = 100

[state 3023]
type = VarRandom
trigger1 = 1
v = 6
range = 1,3
IgnoreHitPause = 1

[State 3023, def]
type = HitDef
trigger1 = time = 0
attr = S, SP 
animtype  = Hard
damage    = 11,5
getpower  = 0,0
givepower = 1,0 
priority  = 6
hitflag = MAFLD
guardflag = MA
pausetime = 0,10
sparkno = s20021
guard.sparkno = s20050
sparkxy = -10,-20
hitsound = s8000,10
guardsound = s8500,0
ground.type = Low
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -2,0
guard.hittime  = 22
air.velocity = -2,1
down.hittime = 25
down.velocity = 0,0
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = floor(50*fvar(1))
fall.animtype = Hard
kill = 1

[State 3023, VelSet]
type = VelSet
trigger1 = Time > 2
x = var(6);2
Y = 18



[State 3023, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP

[State 3023, アーマー]
type = Hitoverride
trigger1 = 1
time = -1
attr = SCA, AP
slot = 1
stateno = 7043

[State 3000, ステート変更]
type = ChangeState
trigger1 = movecontact
value = 3028
ctrl = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y >= 0 && vel y > 0
value = 3024

;------------------------------------
;地面に刺さる
[Statedef 3024]
type     = S
movetype = A
physics  = S
anim     = 10007
poweradd = 0
juggle   = 2
sprpriority = 1

[State 3022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3024,]
type = PosSet
trigger1 = time = 0
y = 0

[State 3024,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 3024]
type = Playsnd
trigger1 = time = 0
value = s8000,9
channel = -1

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 20

;------------------------------------
;上昇中ヒット
[Statedef 3027]
type     = A
movetype = I
physics  = N
anim     = 10009
poweradd = 0
juggle   = 2
sprpriority = 1

[State 3022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 358001,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 50


;------------------------------------
;下降中ヒット
[Statedef 3028]
type     = A
movetype = I
physics  = N
anim     = 10008
poweradd = 0
juggle   = 2
sprpriority = 1

[State 3022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 358001,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 50



;---------------------------------------------------------------------------------------------
;Legion Arrow MH(air)

[Statedef 3021]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3021
ctrl = 0
sprpriority = 2

[State 3021, Hide Backgrond]
type = assertspecial
trigger1 = time = [10,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3021, Super Pause]
type = SuperPause
trigger1 = AnimElem = 4
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3021, Hyper Portrait]
type = explod
trigger1 = AnimElem = 4
;trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3021, Hyper Background]
type  = Explod
trigger1 = AnimElem = 4
;trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3021, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 4
;trigger1 = Time = 12
value = 8889,0

[State 3021, Hyper Explode]
type = Explod
trigger1 = AnimElem = 5
;trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3021, Hyper Circle]
type = Explod
trigger1 = AnimElem = 8
;trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3021, PosSet]
type = PosSet
trigger1 = animelem = 1
trigger1 = pos Y > -55
Y = -55
ignorehitpause = 1

[State 3021, voice]
type = PlaySnd
trigger1 = animelem = 4
value = s3000, 0

[State 3000, SE]
type = PlaySnd
trigger1 = animelem = 25
value = s3000, 2

[State 3021, voice]
type = PlaySnd
trigger1 = animelem = 55
value = s3000, 1

[State 3021, SE]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
value = s8400, 8
channel = 5

;---------------------[エフェクト]
[State explod]
type = Explod
trigger1 = animelem = 25
anim = 11000
id = 11000
sprpriority = 15
postype = p1
pos = 30,-70;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
;scale = 0.25,0.25
ontop = 1
removeongethit = 1

[state 3021]
type = VarRandom
trigger1 = 1
v = 6
range = -4,4;-3,3
IgnoreHitPause = 1

[State 3021, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,HA
damage = 100,20
givepower = 0
getpower = 0
animtype = Medium
givepower = 300
getpower =   275
guardflag = HA
hitflag = MAFLD
priority = 4, Hit
pausetime = 13,14
sparkno = s7703
sparkxy = -10, -53
guard.sparkno = 6767
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 14
ground.velocity = 5
fall = 1
air.type = High
air.velocity = -12,10
air.fall = 1
air.hittime = 25

[State 3021, projectile]
type = Projectile
trigger1 = animelem = 25
trigger2 = animelem = 27
trigger3 = animelem = 29
trigger4 = animelem = 31
trigger5 = animelem = 33
trigger6 = animelem = 35
trigger7 = animelem = 37
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 43
trigger11 = animelem = 45
trigger12 = animelem = 47
trigger13 = animelem = 49
trigger14 = animelem = 51
trigger15 = animelem = 53
trigger16 = animelem = 55
trigger17 = animelem = 57
trigger18 = animelem = 59
trigger19 = animelem = 61
trigger20 = animelem = 63
trigger21 = animelem = 65
trigger22 = animelem = 67
trigger23 = animelem = 69
trigger24 = animelem = 71
trigger25 = animelem = 73
attr = S, SP
damage = 11,2
getpower  = 0,0
givepower = 1,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 30,30;+var(6)
velocity = 0+var(6),20;0
accel = 0,0
projID = 10001
projanim = 10001
projhitanim = 10001
projremanim = 10001
projscale = 1.1,1.8;1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 10, -50;ceil(0*const(size.yscale)) 
guard.sparkno = s20050
;hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -3,0
guard.hittime  = 22
air.velocity = 0,1
down.velocity = 0,0
down.hittime = 25
;air.juggle = 4 
fall = 1
air.fall = 1
fall.recover = 0


;-----------------------------------硬直処理
[State 3021, VelSet]
type = VelSet
trigger1 = AnimElem = 81
Y = 1.2

[State vPosset]
type = PosSet
trigger1 = ( AnimElem >= 81 ) && ( pos Y > 0 )
y = 0

[State land]
type = ChangeState
trigger1 = ( AnimElem >= 81 ) && ( pos Y >= 0 )
value = 52


[State 3021, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aegis Counter
[Statedef 3100]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3100
ctrl = 0
sprpriority = 2

[State 3100, Hide Backgrond]
type = assertspecial
trigger1 = time = [5,40]
;trigger1 = time = [0,40]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3100, Super Pause]
type = SuperPause
trigger1 = AnimElem = 3
;trigger1 = AnimElemTime(1) = 0
Time = 40
pos = 9999,-9951
poweradd = -1000
movetime = 40

[State 3100, Hyper Portrait]
type = explod
trigger1 = time = 0
anim = 1080
postype = back
sprpriority = -3
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

[State 3100, Hyper Background]
type  = Explod
trigger1 = Time = 40
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3100, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3100,4 ;8889,0

[State 3100, Hyper Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s8889,0

[State 3100, Hyper Explode]
type = Explod
trigger1 = time = 15
anim = 4532
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3100, Hyper Circle]
type = Explod
trigger1 = Time = 30
anim = 4533
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

;[State 3100, Ground Flash]
;type = Explod
;trigger1 = time = 0
;anim = 6666
;ID = 8400
;postype = P1
;pos = -40,0
;sprpriority = 3
;scale = .5,.5
;ownpal = 1

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 3100, voice]
type = PlaySnd
trigger1 = animelem = 3
value = s3100, 0

[State 1210, reversaldef]
type = ReversalDef
trigger1 = !time ;animelem = 3
;trigger2 = !enemynear,ishelper
reversal.attr = SCA,AA
slot = 1
p1stateno = 3101
p2stateno = 3102
;time = 20
;forceair = 0

[State 3100, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Sword of Black-knight
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3101
ctrl = 0
sprpriority = 2

[State 3100, Hyper Background]
type  = Explod
trigger1 = animelem = 1
anim = 32710
postype = left
ID = 32710
sprpriority = -4
removetime = 200
pos = 0,0
scale = .5,.5
bindtime = -1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
supermove = 9999
pausemove = 9999
;See statedef -2 for HyperBackground's RemoveExplod

[State 3101, counterSnd]
type = PlaySnd
trigger1 = animelem = 1
value = s1115, 1

[State 3101, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s3100, 1

[State 3101, voice]
type = PlaySnd
trigger1 = animelem = 57;63
value = s3100, 2

[State 3101, voice]
type = PlaySnd
trigger1 = animelem = 83
value = s3100, 3

[State 100, 特殊効果] ;振り向きを防止
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3100, swingSE]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 10
trigger3 = animelem = 20
trigger4 = animelem = 29
trigger5 = animelem = 38
trigger6 = animelem = 42
trigger7 = animelem = 45
trigger8 = animelem = 49
trigger9 = animelem = 52
trigger10 = animelem = 56
trigger11 = animelem = 77
value = s8400, 3

[State 3100, slashSE]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 12
trigger3 = animelem = 22
trigger4 = animelem = 30
trigger5 = animelem = 40
trigger6 = animelem = 43
trigger7 = animelem = 46
trigger8 = animelem = 50
trigger9 = animelem = 54
trigger10 = animelem = 57
trigger11 = animelem = 64
trigger12 = animelem = 77
value = s8000, 12

[State 3100, HitCntUp]
type = HitAdd
;trigger1 = animelem = 3
trigger1 = animelem = 12
trigger2 = animelem = 22
trigger3 = animelem = 30
trigger4 = animelem = 40
trigger5 = animelem = 43
trigger6 = animelem = 46
trigger7 = animelem = 50
trigger8 = animelem = 54
trigger9 = animelem = 57
trigger10 = animelem = 64
trigger11 = animelem = 77
trigger12 = animelem = 80
value = 1
IgnoreHitPause = 1

[State VerticalSlashHitMark]
type = Explod
trigger1 = animelem = 12
trigger2 = animelem = 30
trigger3 = animelem = 43
trigger4 = animelem = 50
trigger5 = animelem = 57
trigger6 = animelem = 77
anim = 20021
id = 20021
sprpriority = 15
postype = p2
pos = -10,-65
bindtime = -1
supermove = 0
under = 0
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State HorizontalSlashHitMark]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 40
trigger3 = animelem = 54
anim = 20011
id = 20011
sprpriority = 15
postype = p2
pos = -10,-60
bindtime = -1
supermove = 0
under = 0
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State HorizontalSlashHitMark2]
type = Explod
trigger1 = animelem = 22
trigger2 = animelem = 46
trigger3 = animelem = 64
anim = 20011
id = 20011
sprpriority = 15
postype = p2
pos = -10,-70
bindtime = -1
supermove = 0
under = 0
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State GunHitMark2]
type = Explod
trigger1 = animelem = 80
anim = 20020
id = 20020
sprpriority = 15
postype = p2
pos = 50,-70
bindtime = -1
supermove = 0
under = 0
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State explod]
type = Explod
trigger1 = animelem = 64
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State posadd]
type = PosAdd
trigger1 = animelem = 64
X = 150

[State 3100, stingSE]
type = PlaySnd
trigger1 = animelem = 62
value = s8400, 5

[State 3100, gunSE]
type = PlaySnd
trigger1 = animelem = 80
value = s3100, 5

[State 3100, gunSE]
type = PlaySnd
trigger1 = animelem = 81
value = s3100, 6

[State 3100, landSE]
type = PlaySnd
trigger1 = animelem = 87
value = s8200, 0

[State explod]
type = Explod
trigger1 = animelem = 87
anim = 20200
id = 20200
sprpriority = 15
postype = p2
pos = 0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State 3100, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 81
value = -250

[State 3100, Bind 1]
type = TargetBind
trigger1 = AnimElem <= 63
pos = 100, 0

[State 3100, Bind 2]
type = TargetBind
trigger1 = 64 <= AnimElem <= 80
pos = -50, 0

[State 3100, Bind 3]
type = TargetBind
trigger1 = AnimElem = 81
pos = -150, -65

[State 3100, Bind 4]
type = TargetBind
trigger1 = AnimElem = 82
pos = -165, -70

[State 3100, Bind 5]
type = TargetBind
trigger1 = AnimElem = 83
pos = -175, -75

[State 3100, Bind 6]
type = TargetBind
trigger1 = AnimElem = 84
pos = -185, -80

[State 3100, Bind 7]
type = TargetBind
trigger1 = AnimElem = 85
pos = -195, -55

[State 3100, Bind 8]
type = TargetBind
trigger1 = AnimElem = 86
pos = -205, -25

[State 3100, Bind 9]
type = TargetBind
trigger1 = AnimElem = 87
pos = -210, 0

[State 3100, Bind 10]
type = TargetBind
trigger1 = AnimElem = 88
pos = -215, -20

[State 3100, Bind 11]
type = TargetBind
trigger1 = AnimElem = 89
pos = -220, 0

[State 3101, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Sword of Black Knight enemy 
[Statedef 3102]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0

[State 3102]
type = ChangeAnim2
trigger1 = Time = 0
value = 3102

[State 3102]
type = PosSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 10
;X = 100
Y = 0

[State 3102, No scroll]
type = ScreenBound
trigger1 = 1
value = 1;0

[State 3102] ;Hit ground
type = SelfState
trigger1 = time = 225;1
value = ifelse(Alive,5120,5150)
ctrl=0


;---------------------------------------------------------------------------
; HC KO Helper
[Statedef 6000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 6007
ctrl = 0
sprpriority = 5

[State 11009, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S9999,4
volume = 200

[State 11009, PlaySnd]
type = PlaySnd
trigger1 = time =10
value = S9999,6
volume = 255

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nomusic
flag3 = nokosnd
flag4=noFG
ignorehitpause = 1
persistent = 1

[State 11009, dust]
type = Explod
trigger1 = time = 0
anim = 8201
ID = 8201
postype =left
pos = 0,0
bindtime = -1
facing = ifelse(facing = -1, -1,1)
sprpriority = -1
scale = 2,2;ifelse(GameHeight=180,1.5,2)
ownpal = 0
ignorehitpause =1
ontop =0
pausetime = 999
supermovetime = 9999


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,statetype !=A  && time > 120

