;---------------------------------------------------------------------------
; Gun shot weak Standing
;---------------------------------------------------------------------------
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 999+(Command = "GunshotStand2_x")
poweradd = 35
velset = 0
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = Time = 2
value = S1001,0+1*(random%5)
volume=255


[State 1010,2]
type = PlaySnd
trigger1 = animelem = 2
value = 88,12



[State 1010, 4]
type = Projectile
trigger1 = AnimElem = 5
projanim = 2002
projhitanim = 200222
projshadow = -1
projremovetime = 25
projpriority = 1
projsprpriority = 1
postype = p1
projhits = 1
offset = 137,-108-31*(anim=1000)
velocity = 12, 0
attr = SCA, HP
hitflag = MAF
guardflag = MA
animtype = hard
priority = 5, Hit
damage = 80,4
pausetime = 3,3
sparkno = -1
guard.sparkno = 40
sparkxy = -10,-50
hitsound = 5,3
guardsound = S3,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -12,-5
airguard.velocity = -10,-5
air.type = High
air.velocity = -4,-9
air.hittime = 10
air.fall = 1
fall = 1
fall.recover = 0

[State 1010, 20]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Gamma Charge H Near
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle = 0;  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1001
sprpriority = 0



[State 1001]
type = PlayerPush
trigger1 = 1
value = 0

[State 1001]
type = HitDef
attr = S, NA
hitflag = MAF
guardflag = MA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 130,120
animtype = heavy
priority  = 5, Hit
pausetime = 13,13
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S1000,20
guardsound = S4,0
sparkno = S20003
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 7,-13
air.velocity = 7,-13
fall = 1
air.fall = 1
fall.recover = 1
getpower = 50,25
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84


[State 1001] ;Gamma Charge
type = PlaySnd
trigger1 = time = 0
value = S1450,0+1*(random%4)



[State 1003]
type = Explod
Anim = 3110;7002
trigger1 = animelem=3
postype = P1
pos = 20,-100
bindtime = 16
removeTime = 16
sprpriority = 3
ownpal = 1
ID=3110;7002

[State 1001]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 1001]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1001]
type = ChangeState
trigger1 = Time = 17 && StateType != A
value = 1002
ctrl = 0

[State 1001]
type = ChangeState
trigger1 = Time = 17 && StateType = A
value = 10021
ctrl = 0


;---------------------------------------------------------------------------
;Gamma Charge H  End
[Statedef 1002]
type    = U
movetype= I
physics = S
juggle = 0;  = 3
;poweradd= 60
ctrl = 0
;velset = 0,0
anim = 1002
sprpriority = 0
;facep2 = 1

[State 1531]
type = PlaySnd
trigger1 = Time = 0
value = 100,8


[State 1531]
type = Explod
trigger1 = Time = 0
anim = 918
pos = 0,0
;random = 0,0
ontop = 1
ownpal = 1



[State 1531]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;------------------------------------------------------------------------------------------------------------
; Gamma Charge U  End
[Statedef 10021]
type = A
movetype = I
physics = A
anim = 10021
ctrl = 0
sprpriority = 0
;poweradd= 65
velset = 0,0
;facep2 = 1




[State 1532]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 1532]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------
;Gamma Charge(vertical)
[Statedef 1012]
type    = S
movetype= A
physics = S
velset = 0
poweradd = 90
ctrl = 0

[State 1012, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 9000
trigger1 = Time = 0 && Anim != 1011
value = 1011

[State 1012]
type = PlaySnd
trigger1 = time=0
value = 1450,0+1*(random%4);3,7

[State 1012]
type = Explod
Anim = 6090
trigger1 = animelem = 3
postype = P1
pos = 0,-30
ID = 6090
bindtime = 25
removeTime = 25
sprpriority = 2
ownpal = 1

[State 1012]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = A
physics = N

[State 1012]
type = Velset
trigger1 = time >= 6
trigger1 = time <= 31
x = 1
y = -14

[State 1012]
type = Velset

trigger1 = time > 31
x = 0
y = -5

[State 1304]
type = HitOverride
triggerall = prevstateno != 1012
trigger1 = time <= 27
slot = 1
time = 27
attr = SCA, NP
stateno = 1012
ignorehitpause = 1
persistent = 0

[State 1304]
type = HitOverride
triggerall = prevstateno != 1012
trigger1 = time <= 27
slot = 2
time = 27
attr = SCA, SP
stateno = 1012
ignorehitpause = 1
persistent = 0

[State 1304]
type = HitOverride
triggerall = prevstateno != 1012
trigger1 = time <= 27
slot = 4
time = 27
attr = SCA, SA
stateno = 1012
ignorehitpause = 1
persistent = 0

[State 1304]
type = HitOverride
triggerall = prevstateno != 1012
trigger1 = time <= 27
slot = 5
time = 27
attr = SCA, HA
stateno = 1012
ignorehitpause = 1
persistent = 0

[State 1012]
type = LifeAdd
trigger1 = (enemy,ProjContactTime(0)) = 1
value = -3
kill = 0

[State 1012]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
damage = 130,120
getpower = 30,10
guardflag = MA
hitflag = MAF
animtype = UP
air.animtype = UP
priority = 6, Hit
pausetime = 6, 9
guard.sparkno = S7047
sparkxy = -5, -130
hitsound   = S1000,20
guardsound = S4,0
sparkno = S20003
guard.velocity = -10
airguard.velocity = -5
air.type = Low
air.velocity = -5,-11
air.hittime = 35
down.bounce = 0
yaccel = .5
air.recover = 1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0 
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84

[State 1012]
type = ChangeState
triggerall = command != "holdfwd"
trigger1 = Command = "y" 
trigger1 = time = [12,31]
value = 1001


[State 1012]
type = ChangeState
trigger1 = AnimTime = 0
value = 1013


;GAMMA CHARGE FALLING
[Statedef 1013]
type    = A
movetype= A
physics = A
anim = 10021
velset = 0
ctrl = 0

[State 1013]
type = Gravity
trigger1 = 1

[State 1013]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 47

;---------------------------------------------------------------------------
;Earth Quake Punch
[Statedef 1003]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1003
sprpriority = 2
facep2 = 1

[State 1260]
type = Explod
trigger1 = Time = 0
anim = 7023
;scale = .5,.5
ontop = 1
ownpal = 1




[State 1260]
type = PlaySnd
trigger1 = Time = 1
value = S1003,0+1*(random%4);6,0

[State 1260]
type = PlaySnd
trigger1 = Time = 19
value = 1240,1


[State 1260]
type = PlaySnd
trigger1 = Time = 20
value = 1240,2

[State 1260]
type = PlaySnd
trigger1 = Time = 2
value = 88,15




[State 1260]
type = EnvShake
trigger1 = Time = 19
time = 17






;[State 1260]
;type = Helper
;trigger1 = Time = 20
;stateno = 21242
;id = 21242
;ownpal = 1
;pos = 0,0

[State 1260]
type = Helper
trigger1 = Time = 20
stateno = 21240
id = 21240
ownpal = 1
pos = 130,0


[State 1260]
type = Helper
trigger1 = Time = 32
stateno = 21240
id = 21240
ownpal = 1
pos = 130+32,0


[State 1260]
type = Helper
trigger1 = Time = 44
stateno = 21240
id = 21240
ownpal = 1
pos = 130+32+32,0


[State 1260]
type = Helper
trigger1 = Time = 56
stateno = 21240
id = 21240
ownpal = 1
pos = 130+32+32+32,0


[State 1260]
type = Helper
trigger1 = Time = 68
stateno = 21240
id = 21240
ownpal = 1
pos = 130+32+32+32+32,0

[State 1260]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA             
damage = 30,15                    
animtype = Medium                 
guardflag = M                 
hitflag = MAF                    
priority = 3, Hit                
pausetime = 7,7             
sparkno = S20003                   
sparkxy = -10,-90
hitsound = S1000,20    
guardsound = S4,0                
guard.sparkno = S10017
ground.type = High              
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84


[State 1260]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA             
damage = 30,15                     
animtype = Medium                 
guardflag = L                 
hitflag = MAFD                    
priority = 3, Hit                
pausetime = 5,5             
sparkno = S20003                   
sparkxy = -10,-30
hitsound = S1000,20    
guardsound = S4,0                
guard.sparkno = S10017
ground.type = Low               
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84





[State 1260]
type = ChangeAnim
trigger1 = Time = 84
value = 1004
persistent = 0


[State 1260]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 1004
value = 0
ctrl = 1


;------------------------------------------------------------------------------------------------------------
;Earth Quake Blast
[Statedef 21240] 
type = S
movetype = A
physics = N
;anim = 21240
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1


[State 21240]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 21240
value = 21240

[State 21240]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21240]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21240]
type = HitOverride
trigger1 = 1
stateno = 21240
attr = SCA,AP
slot = 0
time = -1


[State 21240]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 25,13
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S2,2
guardsound = S3,0
sparkno = S(8200+random%8)
guard.sparkno = S10017
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,20,10),ifelse(MoveHit,20,0)
sprpriority = 3



[State 21240]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 240

;------------------------------------------------------------------------------------------------------------
;Earth Quake Blast End
[Statedef 21241] 
type = S
movetype = I
physics = N
anim = 9800
ctrl = 0
sprpriority = 1
velset = 0,0


[State 21241]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21241]
type = DestroySelf
trigger1 = Time = 0



;------------------------------------------------------------------------------------------------------------
;Earth Quake Spark 
[Statedef 21242] 
type = S
movetype = I
physics = N
anim = 21242
ctrl = 0
sprpriority = 3
velset = 0,0


[State 21242]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21242]
type = DestroySelf
trigger1 = AnimTime = 0



;----------------------------------------
;GAMMA POUND START
[Statedef 890]
type    = S
movetype= A
physics = S
anim = 890
velset = 0
ctrl = 0

[State 890]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,11

[State 891]
type = PlaySnd
trigger1 = Time = 0
value = S890, ifelse( random <500,0,4);9,0

[State 890]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, ST
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
pausetime = 4,10
snap = 146, -88
sparkno = s7017
guard.sparkno = S7047
sparkxy = -35,-90
p2facing = -1
p1stateno = 894
p2stateno = 895
hitsound = s3,1
guardsound = s3,0
fall = 1
fall.damage = 40
kill = 0
fall.kill = 1 
          
[State 890]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
;GAMMA POUND TECH HIT DECIDER
[Statedef 894]
type    = S
movetype= A
physics = N
velset = 0
anim = 819
ctrl = 0

[State 894]
type = TargetBind
trigger1 = 1
pos = 125, -82



[State 894]
type = targetstate
Trigger1 = Time = 6
value = 892



[State 894]
type = ChangeState
Trigger1 = Time = 6
value = 891
ctrl = 0
;------------------------------------------
;GAMMA POUND P2 STATE
[Statedef 895]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 895]
type = ChangeAnim2
trigger1 = time = 0
value = 818

[State 895]
type = ScreenBound
trigger1 = Alive
value = 0

[State 895]
type = ChangeState
Trigger1 = Time = 8
value = 892
ctrl = 0

;------------------------------------------

;GAMMA POUND P1 STATE
[Statedef 891]
type    = S
movetype= A
physics = N
velset = 0
anim = 891
poweradd = 50
ctrl = 0

[State 891]
type = ScreenBound
trigger1 = Alive
value = 0



[State 891]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = 2,0

[State 891]
type = PlaySnd
trigger1 = AnimElem = 11
value = 5,1

[State 891]
type = PlaySnd
trigger1 = AnimElem = 12
value = 2,1

[State 891]
type = EnvShake
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 12
time = 15
ampl = -5
freq = 100
phase = 1

[State 891]
type = Explod
Anim = 9992
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 12
postype = P1
pos = 115,-65
bindtime = 1
removeTime = 7
sprpriority = 5
ownpal = 1

[State 820]
type = SprPriority 
trigger1 = AnimElem = 1
value = 0

[State 891]
type = SprPriority 
trigger1 = AnimElem = 2
value = 3

[State 891]
type = TargetBind
trigger1 = AnimElem = 2
pos = 120, -102

[State 891]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
pos = 115, -130

[State 891]
type = TargetState
trigger1 = AnimElem = 12
value = 893

[State 891]
type = TargetDrop
trigger1 = animelem = 14

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -30
kill=0
persistent = 0

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -30
kill=0
persistent = 0

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 11,>=3
value = -40
kill=1
persistent = 0

[State 891]
type = ChangeState
triggerall = Animtime = 0
trigger1 = BackEdgeDist < 0
value = 100

[State 891]
type = ChangeState
trigger1 = Animtime = 0
trigger1 = BackEdgeDist >= 0
value = 0
ctrl = 1
;-------------------------------
;GAMMA POUND P2 STATE
[Statedef 892]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 822]
type = ScreenBound
trigger1 = Alive
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem=4
trigger2 = animelem=7
y = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem=5
y = 0

[State 892]
type = ChangeAnim2
trigger1 = time = 0
value = 892

[State 892]
type = ScreenBound
trigger1 = Alive
value = 0

;---------------------------------
;GAMMA POUND P2 Thrown into ground
[Statedef 893]
type = A
movetype = H
physics = N
sprpriority = -1
velset=0,0

[State 893]
type = ChangeAnim2
trigger1 = time = 0
value = 893

[State 893]
type = posadd
trigger1 = time = 10
y = -50

[State 893]
type = ScreenBound
trigger1 = 1
value = 1
movecamera=999,999

[State 893]
type = ScreenBound
trigger1 = time >= 5
value = 0

[State 893]
type = VelSet
trigger1 = time = [0,13]
x = 5
y = -19

[State 893]
type = VelSet
trigger1 = time >= 14 
x = -2
y = 1

[State 893]
type = Gravity
trigger1 = 1

[State 893]
type = turn
trigger1 = time = 14

[State 893]
type = SelfState
trigger1 = time = 15
value = 5050

[State 893]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)

[State 893]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------------------------------
;GAMMA POUND START
[Statedef 1890]
type    = S
movetype= A
physics = S
anim = 890
velset = 0
ctrl = 0

[State 890]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,11

[State 890]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, ST
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
pausetime = 4,10
snap = 146, -88
sparkno = s7017
guard.sparkno = S7047
sparkxy = -35,-90
p2facing = -1
p1stateno = 1894
p2stateno = 1895
hitsound = s3,1
guardsound = s3,0
fall = 1
fall.damage = 40
kill = 0
fall.kill = 1

[State 890]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
;GAMMA POUND TECH HIT DECIDER
[Statedef 1894]
type    = S
movetype= A
physics = N
velset = 0
anim = 819
ctrl = 0

[State 894]
type = TargetBind
trigger1 = 1
pos = 125, -82



[State 894]
type = targetstate
Trigger1 = Time = 6
value = 1892



[State 894]
type = ChangeState
Trigger1 = Time = 6
value = 1891
ctrl = 0
;------------------------------------------
;GAMMA POUND P2 STATE
[Statedef 1895]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 895]
type = ChangeAnim2
trigger1 = time = 0
value = 818

[State 895]
type = ScreenBound
trigger1 = Alive
value = 0

[State 895]
type = ChangeState
Trigger1 = Time = 8
value = 892
ctrl = 0

;------------------------------------------

;GAMMA POUND P1 STATE
[Statedef 1891]
type    = S
movetype= A
physics = N
velset = 0
anim = 894
poweradd = 50
ctrl = 0

[State 891]
type = ScreenBound
trigger1 = Alive
value = 0

[State 891]
type = PlaySnd
trigger1 = Time = 5
value = S890,2

[State 891]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 12
value = 2,0

[State 891]
type = PlaySnd
trigger1 = AnimElem = 14
value = 5,1

[State 891]
type = PlaySnd
trigger1 = AnimElem = 15
value = 2,1

[State 891]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
time = 15
ampl = -5
freq = 100
phase = 1

[State 891]
type = Explod
Anim = 9992
trigger1 = AnimElem = 5
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
postype = P1
pos = 115,-65
bindtime = 1
removeTime = 7
sprpriority = 5
ownpal = 1

[State 820]
type = TargetBind
trigger1 = AnimElem = 1
pos = 120, 0
time = 39

[State 820]
type = SprPriority
trigger1 = AnimElem = 1
value = 0

[State 891]
type = TargetState
trigger1 = AnimElem = 16
value = 1893

[State 891]
type = TargetDrop
trigger1 = animelem = 17

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -30
kill=0
persistent = 0

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 12
value = -30
kill=0
persistent = 0

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 15
value = -40
kill=1
persistent = 0

[State 891]
type = ChangeState
triggerall = Animtime = 0
trigger1 = BackEdgeDist < 0
value = 100

[State 891]
type = ChangeState
trigger1 = Animtime = 0
trigger1 = BackEdgeDist >= 0
value = 0
ctrl = 1

;-------------------------------
;GAMMA POUND P2 STATE
[Statedef 1892]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 822]
type = ScreenBound
trigger1 = Alive
value = 0

[State 892]
type = ChangeAnim2
trigger1 = time = 0
value = 895

[State 892]
type = ScreenBound
trigger1 = Alive
value = 0

;---------------------------------
;---------------------------------
;GAMMA POUND P2 Thrown into ground
[Statedef 1893]
type = A
movetype = H
physics = N
sprpriority = -1

[State 893]
type = ChangeAnim2
trigger1 = time = 0
value = 1893

[State 893]
type = posset
trigger1 = animelem = 1
x = 0

[State 893]
type = posadd
trigger1 = time = 10
y = -50

[State 893]
type = ScreenBound
trigger1 = alive
value = 1
movecamera=999,999

[State 893]
type = VelSet
trigger1 = time = [0,13]
x = 30
y = -1

[State 893]
type = Gravity
trigger1 = 1

[State 893]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)

[State 0, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0


[State 893]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 856

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

