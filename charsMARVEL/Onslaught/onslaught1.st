;---------------------------------------------------------------------------
; Flame
[Statedef 10001]
anim = 10001
ctrl = 0
sprpriority = -1

[State 10001, Bind]
type = BindToParent
trigger1 = !Time
time = -1
facing = 1

[State 10001, Sync]
type = ChangeAnim
trigger1 = 1
value = 10001
elem = Parent, AnimElemNo(0)

[State 10001, Remove]
type = DestroySelf
trigger1 = Parent, StateNo	; StateNo is not 0
trigger1 = Parent, StateNo != 15000
trigger2 = Parent, Var(50)

;---------------------------------------------------------------------------
; No Push - Dummy
[Statedef 10002]
ctrl = 0

[State 10002, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Parent, Anim
elem = Parent, AnimElemNo(0)

[State 10002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1;0 + (!Root, Vel X); && (Root, Anim = 10000 || Root, Anim = [15000, 15020]))

[State 10002, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
facing = 1

[State 10002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible

[State 10002, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 10002, Remove]
type = DestroySelf
trigger1 = Parent, Var(50)

;---------------------------------------------------------------------------
; Sparkle
[Statedef 10003]
anim = 10003
ctrl = 0
sprpriority = IfElse(Random < 500, -1, 1)

[State 10003, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 10003, Remove]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, StateNo			; StateNo is not 0
trigger2 = Parent, StateNo != 15000
trigger3 = Parent, Var(50)

;---------------------------------------------------------------------------
; Turn
[Statedef 10005]
velset = 0, 0
ctrl = 0

[State 10005, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10005
value = 10005

[State 10005, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 10005, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(9)
value = 10006

;---------------------------------------------------------------------------
; Turn
[Statedef 10006]
velset = 0, 0
ctrl = 0

[State 10006, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 10006, Turn]
type = Turn
trigger1 = !Time && PrevStateNo = 10005
trigger1 = P2Dist X < 0

[State 10006, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Win Pose 1
[Statedef 10180]
anim = 10180
velset = 0, 0
ctrl = 0

[State 10180, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 10180, Flame]
type = Helper
trigger1 = !NumHelper(10181)
name = "Flame"
id = 10181
stateno = 10181
ownpal = 1

[State 10180, Xavier]
type = Helper
trigger1 = !NumHelper(10182)
name = "Xavier"
id = 10182
stateno = 10182

[State 10180, Glow - Reset Glow Counter]
type = VarSet
trigger1 = Var(11) = 117
var(11) = 0

[State 10180, Glow - PalFx]
type = PalFX
trigger1 = Var(11) = 66
time = 50
add = 32, 32, 32
sinadd = 112, 112, 112, 100

[State 10180, Glow - Increment Glow Counter]
type = VarAdd
trigger1 = 1
var(11) = 1

[State 10180, Float - Reset Float Counter]
type = VarSet
trigger1 = Var(12) = 81
var(12) = 0

[State 10180, Float - Reset Pos Y]
type = VarSet
trigger1 = !Var(12)
fvar(0) = 0

[State 10180, Float - Float Up]
type = VarAdd
trigger1 = !Var(12)
trigger2 = Var(12) = 3
trigger3 = Var(12) = 10
trigger4 = Var(12) = 14
trigger5 = Var(12) = 18
trigger6 = Var(12) = 21
trigger7 = Var(12) = 23
trigger8 = Var(12) = 30
trigger9 = Var(12) = 35
fvar(0) = -1

[State 10180, Float - Float Down]
type = VarAdd
trigger1 = Var(12) = 48
trigger2 = Var(12) = 53
trigger3 = Var(12) = 57
trigger4 = Var(12) = 60
trigger5 = Var(12) = 62
trigger6 = Var(12) = 65
trigger7 = Var(12) = 69
trigger8 = Var(12) = 73
trigger9 = Var(12) = 80
fvar(0) = 1

[State 10180, Float - Set Pos Y]
type = PosSet
trigger1 = 1
y = fvar(0)

[State 10180, Float Increment Float Counter]
type = VarAdd
trigger1 = 1
var(12) = 1

;---------------------------------------------------------------------------
; Flame
[Statedef 10181]
anim = 10181
ctrl = 0

[State 10181, Bind]
type = BindToParent
trigger1 = !Time
time = -1
facing = 1

[State 10181, Sync]
type = ChangeAnim
trigger1 = 1
value = 10181
elem = Parent, AnimElemNo(0)

;---------------------------------------------------------------------------
; Xavier
[Statedef 10182]
anim = 10182
ctrl = 0
sprpriority = 1

[State 10182, RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 10182, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
facing = 1

;---------------------------------------------------------------------------
; Intro
[Statedef 10190]
anim = 10000
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 10190, PlaySnd]
type = PlaySnd
trigger1 = !RoundsExisted
value = 10190, 0

[State 10190, Xavier]
type = Helper
trigger1 = !RoundsExisted
trigger1 = !NumHelper(10191)
name = "Xavier"
id = 10191
stateno = 10191
ownpal = 1

[State 10190, Intro Music]
type = PlaySnd
trigger1 = !RoundsExisted
value = 10190, 1
channel = 1
loop = 1
abspan = 1

[State 10190, ChangeState]
type = ChangeState
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
; Intro - Helper - Xavier
[Statedef 10191]
anim = 10190
ctrl = 0
sprpriority = 1

[State 10191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoMusic

[State 10191, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 10191, Invisible]
type = AssertSpecial
trigger1 = Time < 20
trigger1 = Time % 3 = 0 || Time % 3 = 1
trigger2 = Time >= 20
trigger2 = Time < 40
trigger2 = Time % 2 = 0
trigger3 = Time > 160
trigger3 = Time <= 180
trigger3 = Time % 2 = 0
trigger4 = Time > 180
trigger4 = Time < 200
trigger4 = Time % 3 = 0|| Time % 3 = 1
flag = Invisible

[State 10191, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
facing = 1

[State 10191, Vs Captain America]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Captain America"
var(0) = 1

[State 10191, Vs Captain Commando]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Captain Commando"
var(0) = 3

[State 10191, Vs Chun Li]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Chun Li"
trigger2 = P2Name = "Chun-Li"
trigger3 = P2Name = "RajaaChunli"
var(0) = 5

[State 10191, Vs Gambit]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Gambit"
var(0) = 7

[State 10191, Vs Hulk]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Hulk"
var(0) = 9

[State 10191, Vs Jin]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Jin"
trigger2 = P2Name = "Jin Saotome"
var(0) = 11

[State 10191, Vs Megaman]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Megaman"
trigger2 = P2Name = "Mega Man"
trigger3 = P2Name = "Mega man"
trigger4 = P2Name = "megaman"
trigger5 = P2Name = "Rockman"
var(0) = 13

[State 10191, Vs Morrigan]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Morrigan"
var(0) = 15

[State 10191, Vs Roll]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Roll"
var(0) = 17

[State 10191, Vs Ryu]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Ryu"
trigger2 = P2Name = "MvC2 Ryu By Kamekaze"
var(0) = 19

[State 10191, Vs Spiderman]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Spiderman"
trigger2 = P2Name = "Spider-man"
trigger3 = P2Name = "Spider man"
trigger4 = P2Name = "Spider-Man"
trigger5 = P2Name = "Spider Man"
var(0) = 21

[State 10191, Vs Strider Hiru]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Strider Hiryu"
trigger2 = P2Name = "Strider-Hiryu"
trigger3 = P2Name = "Holy Hiryu"
var(0) = 23

[State 10191, Vs Venom]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Venom"
var(0) = 25

[State 10191, Vs War Machine]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "War Machine"
trigger2 = P2Name = "War-Machine"
trigger3 = P2Name = "WarMachine"
trigger4 = P2Name = "Marvel vs. Capcom's WarMachine"
var(0) = 27

[State 10191, Vs Wolverine]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Wolverine"
trigger2 = P2Name = "Maskless Wolverine"
var(0) = 29

[State 10191, Vs Zangief]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Zangief"
trigger2 = P2Name = "MvC2 Zangief By Kamekaze"
var(0) = 31

[State 10191, Vs Akuma]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Akuma"
trigger2 = P2Name = "Shin Akuma"
trigger3 = P2Name = "Shin-Akuma"
trigger4 = P2Name = "Gouki"
trigger5 = P2Name = "Shin Gouki"
trigger6 = P2Name = "Shin-Gouki"
trigger7 = P2Name = "Gouki_Cota"
var(0) = 33

[State 10191, Vs Anakaris]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Anakaris"
trigger2 = P2Name = "anakaris"
var(0) = 35

[State 10191, Vs Arthur]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Arthur"
var(0) = 37

[State 10191, Vs Baby Bonnie Hood]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Baby Bonnie Hood"
trigger2 = P2Name = "BB Hood"
trigger3 = P2Name = "BBH"
trigger4 = P2Name = "B.B. Hood"
trigger5 = P2Name = "B.B.H."
trigger6 = P2Name = "Bulleta"
var(0) = 39

[State 10191, Vs Bison]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Bison"
trigger2 = P2Name = "M.Bison"
trigger3 = P2Name = "M. Bison"
trigger4 = P2Name = "Vega"
var(0) = 41

[State 10191, Vs Cammy]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Cammy"
var(0) = 43 + (Random % 2) * 2

[State 10191, Vs Cyber Akuma]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Cyber Akuma"
trigger2 = P2Name = "Cyber Gouki"
var(0) = 47

[State 10191, Vs Dan]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Dan"
trigger2 = P2Name = "Shin Dan"
var(0) = 49

[State 10191, Vs Dante]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Dante"
var(0) = 51

[State 10191, Vs Dark Chun Li]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Dark Chun Li"
trigger2 = P2Name = "Dark Chun-Li"
trigger3 = P2Name = "DChun Li"
trigger4 = P2Name = "DChun-Li"
trigger5 = P2Name = "D.Chun Li"
trigger6 = P2Name = "D.Chun-Li"
trigger7 = P2Name = "D. Chun Li"
trigger8 = P2Name = "D. Chun-Li"
trigger9 = P2Name = "Shadow Lady"
var(0) = 53

[State 10191, Vs Dhalsim]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Dhalsim"
var(0) = 55

[State 10191, Vs Evil Dan]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Evil Dan"
trigger2 = P2Name = "Devil Dan"
var(0) = 57

[State 10191, Vs Evil Ken]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Evil Ken"
var(0) = 59

[State 10191, Vs Evil Ryu]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Evil Ryu"
var(0) = 61

[State 10191, Vs Felicia]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Felicia"
trigger2 = P2Name = "cvsfelicia"
var(0) = 63

[State 10191, Vs Guile]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Guile"
var(0) = 65

[State 10191, Vs Hayato]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Hayato"
var(0) = 67

[State 10191, Vs Ibuki]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Ibuki"
var(0) = 69

[State 10191, Vs Jedah]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Jedah"
var(0) = 71

[State 10191, Vs Jill]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Jill"
var(0) = 73

[State 10191, Vs Ken]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Ken"
var(0) = 75

[State 10191, Vs Kenji]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Kenji"
var(0) = 77

[State 10191, Vs Lillith]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Lillith"
var(0) = 79

[State 10191, Vs Lou]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Lou"
var(0) = 81

[State 10191, Vs Magneto]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Magneto"
var(0) = 83

[State 10191, Vs Nash]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Nash"
var(0) = 85

[State 10191, Vs Norimaro]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Norimaro"
var(0) = 87

[State 10191, Vs Rare Akuma]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Rare Akuma"
var(0) = 89

[State 10191, Vs Sakura]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Sakura"
var(0) = 91

[State 10191, Vs Sean]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Sean"
var(0) = 93

[State 10191, Vs Servbot]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Servbot"
var(0) = 95

[State 10191, Vs SonSon]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "SonSon"
var(0) = 97

[State 10191, Vs Tron Bonne]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Tron Bonne"
var(0) = 99

[State 10191, Vs Viewtiful Joe]
type = VarSet
triggerall = !Time
trigger1 = P2Name = "Viewtiful Joe"
var(0) = 101

[State 10191, Special Intro]
type = ChangeState
trigger1 = Var(0)
value = 10192

[State 10191, DestroySelf]
type = DestroySelf
trigger1 = Time = 200

;---------------------------------------------------------------------------
; Intro - Helper - Xavier - Special Intro
[Statedef 10192]
anim = 10191
ctrl = 0
sprpriority = 1

[State 10192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoMusic
flag3 = NoBarDisplay

[State 10192, 1st Message]
type = Explod
trigger1 = !Time
anim = 10199 + Var(0)
id = 10192
pos = 0, 10;30
postype = Left
bindtime = -1
removetime = 200
ontop = 1
ownpal = 1

[State 10192, 2nd Message]
type = Explod
trigger1 = Time = 200
anim = 10200 + Var(0)
id = 10192
pos = 0, 10;30
postype = Left
bindtime = -1
removetime = -1
ontop = 1
ownpal = 1

[State 10192, RemoveExplod]
type = RemoveExplod
trigger1 = !AnimTime
value = 10192

[State 10192, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Init
[Statedef 11000]
velset = 0, 0
ctrl = 0

[State 11000, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 11000, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11000
value = 11000

[State 11000, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11001

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb
[Statedef 11001]
velset = 0, 0
ctrl = 0

[State 11001, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11001
value = 11001

[State 11001, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11001, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11000
value = 11000, 0

[State 11001, Sentinel Missile 1]
type = Helper
trigger1 = !Time && PrevStateNo = 11000
name = "Sentinel Missile"
id = 11010
pos = -40, Ceil(Pos Y + P2Dist Y - 162)
postype = back
stateno = 11010
ownpal = 1

[State 11001, Sentinel Missile 2]
type = Helper
trigger1 = !Time && PrevStateNo = 11000
name = "Sentinel Missile"
id = 11011
pos = -104, Ceil(Pos Y + P2Dist Y - 130)
postype = back
stateno = 11010
ownpal = 1

[State 11001, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11002

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - End
[Statedef 11002]
velset = 0, 0
ctrl = 0

[State 11002, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11002
value = 11002

[State 11002, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11002, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 11002, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Sentinel Missile
[Statedef 11010]
type = A
anim = 11010
velset = 4, 0
ctrl = 0
sprpriority = 3

[State 11010, Explod]
type = Explod
trigger1 = !Time
anim = 11020
id = 11020
bindtime = -1
removetime = -1
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
ignorehitpause = 1

[State 11010, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 11013

[State 11010, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 11010, Drop Bombs]
type = ChangeState
trigger1 = P2Dist X <= 64		; Not exact number
value = 11011

[State 11010, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 11020

[State 11010, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Sentinel Missile - Drop Bombs
[Statedef 11011]
type = A
movetype = A
anim = 11011
ctrl = 0

[State 11011, Bomb 1]				; Splitting up the bombs is unnecessary. It was to give each bomb a unique Helper ID
type = Helper						; for an idea that did not turn out right
trigger1 = AnimElemNo(0) = 2
trigger1 = Time = 0
name = "Bomb"
id = 11030 + (IsHelper(11011)) * 4
pos = 19, -1
stateno = 11030

[State 11011, Bomb 2]
type = Helper
trigger1 = AnimElemNo(0) = 2
trigger1 = Time = 5
name = "Bomb"
id = 11031 + (IsHelper(11011)) * 4
pos = 19, -1
stateno = 11030

[State 11011, Bomb 3]
type = Helper
trigger1 = AnimElemNo(0) = 2
trigger1 = Time = 10
name = "Bomb"
id = 11032 + (IsHelper(11011)) * 4
pos = 19, -1
stateno = 11030

[State 11011, Bomb 4]
type = Helper
trigger1 = AnimElemNo(0) = 2
trigger1 = Time = 15
name = "Bomb"
id = 11033 + (IsHelper(11011)) * 4
pos = 19, -1
stateno = 11030

[State 11011, Fly Away]
type = ChangeState
trigger1 = AnimElemTime(3) = 2
value = 11012

[State 11011, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50
id = 11020

[State 11011, Remove]
type = ChangeState
trigger1 = FrontEdgeDist < -80
value = 11014

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Sentinel Missile - Fly Away
[Statedef 11012]
type = A
velset = 4, -1
ctrl = 0

[State 11012, VelAdd]
Type = VelAdd
trigger1 = 1
x = (Vel X > 3) * -0.1
y = -0.2

[State 11012, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 11010
persistent = 0

[State 11012, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50
id = 11020

[State 11012, Remove]
type = ChangeState
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50
value = 11014

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Sentinel Missile - Destroyed
[Statedef 11013]
type = A
anim = 6010
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 11013, Explosion PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 215, 0

[State 11013, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(11020)
id = 11020

[State 11013, Remove]
type = ChangeState
trigger1 = !AnimTime
value = 11014

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Sentinel Missile - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 11014]
ctrl = 0

[State 11014, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11014, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 11014, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(11030 + (IsHelper(11011)) * 4)
trigger1 = !NumHelper(11031 + (IsHelper(11011)) * 4)
trigger1 = !NumHelper(11032 + (IsHelper(11011)) * 4)
trigger1 = !NumHelper(11033 + (IsHelper(11011)) * 4)

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Bomb
[Statedef 11030]
movetype = A
anim = 11030
velset = 0, 1
ctrl = 0
sprpriority = 3

[State 11030, HitOverride]	; Useless
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 11031

[State 11030, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 11030, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 11030, HitDef]
type = HitDef
trigger1 = 1
attr = A, NA
animtype = Medium			; Confirmed
air.animtype = Medium		; Confirmed
damage = 28, 4				; Confirmed
guardflag = MA
pausetime = 0, 9			; Confirmed
sparkno = S7011				; Based off animtype
sparkxy = -10, 10			; Will have to check
hitsound = S5, 3			; 
guardsound = S6, 0			; Confirmed
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 0		; N/A when ground.velocity y < 0
guard.slidetime = 16		; Confirmed
ground.hittime  = 0			; N/A when ground.velocity y < 0
guard.hittime = 18
yaccel = 0.68
ground.velocity = -5, -6	; Assumed to be the same as air.velocity
guard.velocity = -6			; Pixel checked
air.velocity = -5, -6		; Pixel checked. Old: -4, -3
airguard.velocity = -6 		; Vel X pixel checked.
							; getpower = 26, 14. Will rely on MUGEN engine
							; givepower = 55, 0. Will rely on MUGEN engine
palfx.time = 23				; Confirmed
palfx.add = 160, 80, -32	; Compared the palette changes with palfx snapshot
palfx.sinadd = 80,40,-16,4

[State 11030, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7300
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11030, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2						; Not exact number

[State 11030, Flame]
type = Explod
trigger1 = MoveHit
trigger1 = NumExplod(6020) < 4
anim = 6020 + (Random < 500) * 10
id = 6020
pos = 0, -40
postype = p2
bindtime = -1
random = 20, 20
scale = Const(size.xscale), Const(size.yscale)
sprpriority = -1
shadow = -1
ownpal = 1

[State 11030, Explode]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = MoveContact
value = 11031

;---------------------------------------------------------------------------
; Sentinel Aerial Bomb - Helper - Bomb - Explosion
[Statedef 11031]
anim = 6000
velset = 0, 0
ctrl = 0

[State 11031, Remove]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Sentinel Assist - Init
[Statedef 11100]
velset = 0, 0
ctrl = 0

[State 11100, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 11100, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11000
value = 11000

[State 11100, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11101

;---------------------------------------------------------------------------
; Sentinel Assist
[Statedef 11101]
velset = 0, 0
ctrl = 0

[State 11101, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11101
value = 11101

[State 11101, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11101, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11100
value = 11000, 0

[State 11101, Sentinel]
type = Helper
trigger1 = !Time && PrevStateNo = 11100
name = "Sentinel Assist"
id = 11110
pos = -87, 0
postype = back
stateno = 11110
ownpal = 1

[State 11101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11102

;---------------------------------------------------------------------------
; Sentinel Assist - End
[Statedef 11102]
velset = 0, 0
ctrl = 0

[State 11102, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11002
value = 11002

[State 11102, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11102, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 11102, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel Assist - Helper - Sentinel
[Statedef 11110]
type = S
movetype = A
anim = 11110
velset = 8, 0
ctrl = 0
sprpriority = 3

[State 11110, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 11110, 0

[State 11110, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 11111

[State 11110, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 11110, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 11110, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 11110, HitDef]
type = HitDef
triggerall = Var(13) < 3
trigger1 = !MoveContact || MoveGuarded
trigger2 = MoveHit >= 9
attr = S, NA
animtype = Hard				; Confirmed
air.animtype = Hard			; Confirmed
priority = 1, Miss
damage = 76, 7				; Confirmed
guardflag = MA
pausetime = 9, 9			; Confirmed
sparkno = S7012				; Based off animtype
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y))		; Will have to check
hitsound = S5, 2
guardsound = S6, 0			; Confirmed
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 16		; N/A when ground.velocity y < 0
ground.hittime  = 18		; N/A when ground.velocity y < 0
yaccel = 0.68
ground.velocity = -12, -15	;
air.velocity = -12, -5		;
ground.cornerpush.veloff = 0
;getpower = 87, 56
;givepower = 89, 0

[State 11110, HitFlash]
type = Explod
trigger1 = MoveHit = 1		; MoveHit increments 1 tick and stays at 1 during hitpause after hitting with ignorehitpause = 1 this is why HitPauseTime is 1 tick lower than it should be
trigger1 = HitPauseTime = 8	; This is to ensure that this only occurs for 1 tick
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11110, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -100

;---------------------------------------------------------------------------
; Sentinel Assist - Helper - Sentinel - Destroyed
[Statedef 11111]
anim = 11111
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 11111, Explosion]
type = Explod
trigger1 = !(Time % 9)		; New explod every 9 ticks
anim = 6000
id = 6000
pos = 20, -100
bindtime = -1
random = 60, 80
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 4
shadow = -1
ownpal = 1
ignorehitpause = 0

[State 11111, Explosion PlaySnd]
type = PlaySnd
trigger1 = !(Time % 9)
value = 215, 0

[State 11111, Remove]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Hyper Grav - Init
[Statedef 11200]
velset = 0, 0
ctrl = 0

[State 11200, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 11200, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11200
value = 11200

[State 11200, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11201

;---------------------------------------------------------------------------
; Hyper Grav
[Statedef 11201]
velset = 0, 0
ctrl = 0

[State 11201, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11201
value = 11201

[State 11201, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11201, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11200
value = 11200, 0

[State 11201, Orb Generator]
type = Helper
trigger1 = !Time && PrevStateNo = 11200
trigger1 = !NumHelper(11205)
name = "Orb Generator"
id = 11205
stateno = 11205
ownpal = 1

[State 11201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11202

;---------------------------------------------------------------------------
; Hyper Grav - End
[Statedef 11202]
velset = 0, 0
ctrl = 0

[State 11202, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11202
value = 11202

[State 11202, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11202, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 11202, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb Generator
[Statedef 11205]
ctrl = 0

[State 11205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11205, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 11205, BindToParent]
type = BindToParent
trigger1 = 1

[State 11205, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 11201, 0

[State 11205, Orb UL]
type = Helper
trigger1 = !Time
name = "Orb UL"
id = 11210
pos = 39, -161
stateno = 11210

[State 11205, Orb DL]
type = Helper
trigger1 = !Time
name = "Orb DL"
id = 11211
pos = 39, -97
stateno = 11210

[State 11205, Orb UR]
type = Helper
trigger1 = !Time
name = "Orb UR"
id = 11212
pos = 103, -161
stateno = 11210

[State 11205, Orb DR]
type = Helper
trigger1 = !Time
name = "Orb DR"
id = 11213
pos = 103, -97
stateno = 11210

[State 11205, Orb Damager]
type = Helper
trigger1 = !Time
name = "Orb Damager"
id = 11214
pos = 71, -129
stateno = 11214

[State 11205, Remove]
type = ChangeState
trigger1 = Parent, Anim != 11201
value = 11206

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb Generator - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 11206]
ctrl = 0

[State 11206, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11206, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 11206, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(11210) && !NumHelper(11211) && !NumHelper(11212) && !NumHelper(11213) && !NumHelper(11214)

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb - Init
[Statedef 11210]
type = A
anim = 11210
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 11210, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11210, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 11212

[State 11210, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NA, NT, ST, HT
time = -1

[State 11210, ChangeState]
type = ChangeState
trigger1 = Time = 73;70
value = 11211

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb - Home
[Statedef 11211]
type = A
movetype = A
velset = 0, 0
ctrl = 0

[State 11211, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Unguardable

[State 11211, Offset X]
type = VarSet
trigger1 = !Time
;fvar(0) = ((Pos X - Root, Pos X) * Facing - 71) * -1
fvar(0) = 14 * enemyNear, Facing

[State 11211, Offset Y]
type = VarSet
trigger1 = !Time
;fvar(1) = ((Pos Y - Root, Pos Y) + 129) * -1
fvar(1) = -80

[State 11211, Vector X]
type = VarSet
trigger1 = !Time
fvar(2) = ((enemyNear, Pos X + FVar(0)) - Pos X) * Facing

[State 11211, Vector Y]
type = VarSet
trigger1 = !Time
fvar(3) = ((enemyNear, Pos Y + FVar(1)) - Pos Y)

[State 11211, Distance Equation]
type = VarSet
trigger1 = !Time
fvar(4) = Exp(0.5 * Ln(FVar(2) * FVar(2) + FVar(3) * FVar(3)))
; Sqrt((x2 - x1) + (y2 - y1))

[State 11211, VelSet]
type = VelSet
trigger1 = !Time
x = 4 * FVar(2)/FVar(4)
y = 4 * FVar(3)/FVar(4)

[State 11211, NoGuard]				; This makes sure the opponent won't guard
type = AttackDist
trigger1 = 1
value = 0

[State 11211, HitDef]			; Purpose is to detect if move made contact
type = HitDef
trigger1 = !MoveContact
attr = A, SP
animtype = Light				; Confirmed
damage = 0, 0
guardflag = 
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = -1, -1
guardsound = -1, -1
ground.type = Low				; Confirmed
ground.slidetime = 0
ground.hittime  = 0
guard.dist = 0					; This makes sure the opponent won't guard, however AttackDist seems to work better
numhits = 0

[State 11211, Remove]
type = ChangeState
trigger1 = (FrontEdgeDist < -100) || (BackEdgeDist < -200 + Root, BackEdgeDist)
trigger2 = (ScreenPos Y < -100) || (ScreenPos Y > 339)
trigger3 = P2StateNo = 11216
trigger4 = !MoveContact && NumHelper(11210)
trigger4 = Helper(11210), MoveContact
trigger5 = !MoveContact && NumHelper(11211)
trigger5 = Helper(11211), MoveContact
trigger6 = !MoveContact && NumHelper(11212)
trigger6 = Helper(11212), MoveContact
trigger7 = !MoveContact && NumHelper(11213)
trigger7 = Helper(11213), MoveContact
trigger8 = Time = 128
value = 11212

[State 11211, DestroySelf]
type = DestroySelf
trigger1 = MoveContact = 2	; Must be 2 to allow Helper(11214) to detect MoveContact

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb - Remove
[Statedef 11212]
type = A
anim = 11212
velset = 0, 0
ctrl = 0

[State 11212, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11212, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11212, Remove]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb - Home - Damager
[Statedef 11214]
type = A
movetype = I
anim = 11214
velset = 0, 0
ctrl = 0

[State 11214, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11214, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Unguardable
flag3 = Invisible

[State 11214, NoGuard]				; This makes sure the opponent won't guard
type = AttackDist
trigger1 = 1
value = 0

[State 11214, Bind to Helper(11210)]
type = PosSet
trigger1 = NumHelper(11210)
trigger1 = Helper(11210), MoveContact
x = Helper(11210), Pos X + Helper(11210), P2Dist X * Helper(11210), Facing
y = Helper(11210), Pos Y + Helper(11210), P2Dist Y

[State 11214, Bind to Helper(11211)]
type = PosSet
trigger1 = NumHelper(11211)
trigger1 = Helper(11211), MoveContact
x = Helper(11211), Pos X + Helper(11211), P2Dist X * Helper(11211), Facing
y = Helper(11211), Pos Y + Helper(11211), P2Dist Y

[State 11214, Bind to Helper(11212)]
type = PosSet
trigger1 = NumHelper(11212)
trigger1 = Helper(11212), MoveContact
x = Helper(11212), Pos X + Helper(11212), P2Dist X * Helper(11212), Facing
y = Helper(11212), Pos Y + Helper(11212), P2Dist Y

[State 11214, Bind to Helper(11213)]
type = PosSet
trigger1 = NumHelper(11213)
trigger1 = Helper(11213), MoveContact
x = Helper(11213), Pos X + Helper(11213), P2Dist X * Helper(11213), Facing
y = Helper(11213), Pos Y + Helper(11213), P2Dist Y

[State 11214, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 11214, StateTypeSet]
type = StateTypeSet
trigger1 = NumHelper(11210)
trigger1 = Helper(11210), MoveContact
trigger2 = NumHelper(11211)
trigger2 = Helper(11211), MoveContact
trigger3 = NumHelper(11212)
trigger3 = Helper(11212), MoveContact
trigger4 = NumHelper(11213)
trigger4 = Helper(11213), MoveContact
movetype = A

[State 11214, Invisible Attack]
type = HitDef
trigger1 = NumHelper(11210)
trigger1 = Helper(11210), MoveContact
trigger2 = NumHelper(11211)
trigger2 = Helper(11211), MoveContact
trigger3 = NumHelper(11212)
trigger3 = Helper(11212), MoveContact
trigger4 = NumHelper(11213)
trigger4 = Helper(11213), MoveContact
attr = A, SP
animtype = Light				; Confirmed
damage = 28, 7
guardflag = 
pausetime = 0, 9
sparkno = S7010
sparkxy = -10, -20
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low				; Confirmed
ground.slidetime = 16
ground.hittime  = 18
guard.dist = 0					; This makes sure the opponent won't guard, however AttackDist seems to work better
ground.velocity = -5
air.velocity = -5
id = 11216
persistent = 0

[State 11214, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11214, TargetState]
type = TargetState
trigger1 = NumTarget(11216)
value = 11216
id = 11216

[State 11214, ChangeState]
type = ChangeState
trigger1 = NumTarget(11216)
value = 11215

[State 11214, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(11210) && !NumHelper(11211) && !NumHelper(11212) && !NumHelper(11213)
trigger2 = Time = 201

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb - Hit
[Statedef 11215]
type = A
anim = 11215
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 11215, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11215, TargetBind]
type = TargetBind
trigger1 = NumTarget(11216)
pos = 14, 80
id = 11216

[State 11215, Onslaught (1st Form) - OffSet X]
type = Varset
trigger1 = !(Root, Var(50))
fvar(0) = 145 * Root, Facing

[State 11215, Onslaught (1st Form) - OffSet Y]
type = Varset
trigger1 = !(Root, Var(50))
fvar(1) = -70 - 80

[State 11215, Onslaught (2nd Form) - OffSet X]
type = Varset
trigger1 = Root, Var(50) = 1
fvar(0) = 65 * Root, Facing

[State 11215, Onslaught (2nd Form) - OffSet Y]
type = Varset
trigger1 = Root, Var(50) = 1
fvar(1) = -50

[State 11215, Vector X]
type = VarSet
trigger1 = 1
fvar(2) = ((Root, Pos X + FVar(0)) - Pos X) * Facing

[State 11215, Vector Y]
type = VarSet
trigger1 = 1
fvar(3) = ((Root, Pos Y + FVar(1)) - Pos Y)

[State 11215, Distance Equation]
type = VarSet
trigger1 = 1
fvar(4) = Exp(0.5 * Ln(FVar(2) * FVar(2) + FVar(3) * FVar(3)))
; Sqrt((x2 - x1) + (y2 - y1))

[State 11215, VelSet]
type = VelSet
trigger1 = 1
x = 6 * FVar(2)/FVar(4)
y = 6 * FVar(3)/FVar(4)

[State 11215, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 11215, Shake X Random]
type = VarRandom
trigger1 = 1
v = 0
range = -9, 9

[State 11215, Shake Y Random]
type = VarRandom
trigger1 = 1
v = 0
range = -9, 9

[State 11215, Shake X]
type = PosAdd
trigger1 = 1
x = var(0)

[State 11215, Shake Y]
type = PosAdd
trigger1 = 1
y = var(1)

[State 11215, Knock Back Damage]
type = TargetLifeAdd
trigger1 = Time = 130
value = -62
id = 11216

[State 11215, Knock Back]
type = TargetState
trigger1 = Time = 130
value = 11217
id = 11216

[State 11215, Remove]
type = ChangeState
trigger1 = NumTarget(11216)
trigger1 = target(11216), StateNo != 11216
trigger2 = !NumTarget(11216)
trigger3 = Time = 130
value = 11212

;---------------------------------------------------------------------------
; Hyper Grav - P2 - Custom State - Hit
[Statedef 11216]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 3

[State 11216, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 11216, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5051)
value = 5051

[State 11216, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5051)
value = 11216

;---------------------------------------------------------------------------
; Hyper Grav - P2 - Custom State - Knock Back
[Statedef 11217]
type = A
movetype = H
velset = 14 * -(enemyNear, Facing) * -Facing, -9
ctrl = 0

[State 11217, SelfState]
type = SelfState
trigger1 = !Time
value = 5040

;---------------------------------------------------------------------------
; Magnetic Tempest - Init
[Statedef 11300]
velset = 0, 0
ctrl = 0

[State 11300, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 11300, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11300
value = 11300

[State 11300, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11301

;---------------------------------------------------------------------------
; Magnetic Tempest
[Statedef 11301]
velset = 0, 0
ctrl = 0

[State 11301, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11301
value = 11301

[State 11301, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11301, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11300
value = 11300, 0

[State 11301, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11300
value = 11301, 0

[State 11301, Projectile]
type = Null;Helper
trigger1 = !Time && PrevStateNo = 11300
trigger1 = !NumHelper(11310)
name = "Magnetic Tempest - Projectile Generator"
id = 11310
pos = 0, 0
stateno = 11310
ownpal = 1

[State 11301, Projectile]
type = Helper
trigger1 = AnimElemTime(131) < 0
trigger1 = !(GameTime % 4)
name = "Magnetic Tempest - Projectile Generator"
id = 11310
pos = 0, 0
stateno = 11310
;ownpal = 1 ; Left out to improve speed

[State 11301, HitFlash]
type = Explod
trigger1 = ProjHit[11310] = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11301, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11302

;---------------------------------------------------------------------------
; Magnetic Tempest - End
[Statedef 11302]
velset = 0, 0
ctrl = 0

[State 11302, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11302
value = 11302

[State 11302, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11302, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 11302, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Magnetic Tempest - Helper - Projectile Generator
[Statedef 11310]
type = A
velset = 0, 0
ctrl = 0

[State 11310, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible

[State 11310, Animation Random]
type = VarRandom
trigger1 = !Time
v = 0
range = 1, 3

[State 11310, Pos X Random]
type = VarRandom
trigger1 = !Time
v = 1
range = -60, 50

[State 11310, Pos Y Random]
type = VarRandom
trigger1 = !Time
v = 2
range = -90,-30

[State 11310, Vel X Random]
type = VarRandom
trigger1 = !Time
v = 3
range = 0, 16

[State 11310, Vel Y Random - Up or Down]
type = VarSet
trigger1 = !Time
v = 4
value = (16 - Var(3)) * IfElse(Random < 500, 1, -1)

[State 11310, SprPriority Random]
type = VarSet
trigger1 = !Time
var(5) = IfElse(Random < 500, 3, -1)

[State 11310, BindToParent]
type = BindToParent
trigger1 = 1
pos = Var(1), Var(2)

[State 11310, Explod]
type = Explod
trigger1 = Time = 1
anim = 11310 + Var(0)
id = 11310
pos = 0, 0
bindtime = 1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = Var(5)
ownpal = 1

[State 11310, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

; Creates projectile early to reduce helper approach lag and crash
; Too many helpers hitting may cause a crash
[State 11310, Projectile]
type = Projectile
trigger1 = Time = 1
projid = 11311
projanim = 11310 + Var(0) + 4
projremove = 0
velocity = Var(3), Var(4)
remvelocity = Var(3), Var(4)
projsprpriority = Var(5)
projedgebound = 43 * Abs(Var(3)) + Abs(Ceil(Parent, Pos X + Var(1))) + 1
projstagebound = 43 * Abs(Var(3)) + Abs(Ceil(Parent, Pos X + Var(1))) + 1
projheightbound = -240, 50
offset = -43 * Var(3), -43 * Var(4)
attr = A, SP
animtype = Hard				; Confirmed
air.animtype = Hard			; Confirmed
damage = 28, 3;7			; 10, 4;35, 14
guardflag = MA
pausetime = 0, 9			; Confirmed
sparkno = S7012
sparkxy = 20, 0			; Will have to check
hitsound = S5, 2
guardsound = S6, 0
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 16		; Irrelevant when ground.velocity y < 0
ground.hittime  = 18		; Irrelevant when ground.velocity y < 0
yaccel = 0.68
ground.velocity = -8, -5
air.velocity = -7, -4
;getpower = 20			;63
;givepower = 20			;71

[State 11310, DestroySelf]
type = DestroySelf
trigger1 = Time = 1

;---------------------------------------------------------------------------
; Unused - Magnetic Tempest - Helper - Projectile Generator
[Statedef 11311]
type = A
velset = 0, 0
ctrl = 0

[State 11310, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible

[State 11310, BindToParent]
type = BindToParent
trigger1 = 1

[State 11310, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != 11301
trigger2 = Parent, Anim = 11301
trigger2 = Parent, AnimElemTime(131) >= 0

[State 11310, Projectile]
type = Helper
trigger1 = !(GameTime % 4)
name = "Magnetic Tempest - Projectile"
id = 11320
pos = 0, 0
stateno = 11320

;---------------------------------------------------------------------------
; Unused - Magnetic Tempest - Helper - Projectile - Init
[Statedef 11320]
type = A
anim = 11310
velset = 0, 0
ctrl = 0
sprpriority = IfElse(Random < 500, 3, -1)

[State 11320, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11320, Animation Random]
type = VarRandom
trigger1 = 1
v = 0
range = 1, 3

[State 11320, Pos X Random]
type = VarRandom
trigger1 = !Time
v = 1
range = -60, 50

[State 11320, Pos Y Random]
type = VarRandom
trigger1 = !Time
v = 2
range = -90,-30

[State 11320, BindToParent]
type = BindToParent
trigger1 = 1
pos = Var(1), Var(2)

[State 11320, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11321

;---------------------------------------------------------------------------
; Magnetic Tempest - Helper - Projectile - Attack
[Statedef 11321]
type = A
movetype = A
anim = 11310 + Var(0)
velset = 0, 0
ctrl = 0

[State 11321, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11321, Vel X Random]
type = VarRandom
trigger1 = !Time
v = 3
range = 0, 16

[State 11321, Vel Y Random - Up or Down]
type = VarSet
trigger1 = !Time
V = 4
value = (16 - Var(3)) * IfElse(Random < 500, 1, -1)

[State 11321, VelSet]
type = VelSet
trigger1 = Time = 17
x = Var(3)
y = Var(4)

[State 11321, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 11321, HitDef]
type = HitDef
trigger1 = !MoveContact
trigger1 = Time > 16
attr = A, SP
animtype = Hard				; Confirmed
air.animtype = Hard			; Confirmed
damage = 28, 3;7			; 10, 4;35, 14
guardflag = MA
pausetime = 0, 9			; Confirmed
sparkno = 2
sparkxy = 0, 0				; Will have to check
hitsound = S5, 2
guardsound = S6, 0
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 16		; Irrelevant when ground.velocity y < 0
ground.hittime  = 18		; Irrelevant when ground.velocity y < 0
yaccel = 0.68
ground.velocity = -8, -5
air.velocity = -7, -4
;getpower = 20			;63
;givepower = 20			;71

[State 11321, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11321, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -50
trigger2 = BackEdgeDist < -50
trigger3 = ScreenPos Y < -50
trigger4 = ScreenPos Y > 289

;---------------------------------------------------------------------------
; Hyper Rush - Init
[Statedef 11400]
movetype = A
velset = 0, 0
ctrl = 0

[State 11400, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 11400, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11400
value = 11400

[State 11400, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11401

;---------------------------------------------------------------------------
; Hyper Rush
[Statedef 11401]
movetype = A
velset = 12, 0
ctrl = 0

[State 11401, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11401
value = 11401

[State 11401, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11401, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 11400
trigger1 = PrevStateNo = 11400
value = 11400, 0

[State 11401, Explod Helper]
type = Helper
trigger1 = !NumHelper(11410)
name = "Hyper Rush"
id = 11410
stateno = 11410
ownpal = 1

[State 11401, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 11401, HitDef]
type = HitDef
trigger1 = Var(13) < 10
attr = S, SA
animtype = Hard			; Confirmed
air.type = Hard			; Confirmed
priority = 4, Miss
damage = 55, 7			; Confirmed
guardflag = MA
pausetime = 7, 7;9
sparkno = S7012
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y) + 20)
hitsound = S5, 3
guardsound = S6, 0
ground.type = High		; Confirmed
air.type = Low			; Confirmed
ground.slidetime = 16
ground.hittime  = 18
yaccel = 0.68
ground.velocity = -10, -15
air.velocity = -13, -4
fall = 1
fall.recover = 0
fall.animtype = Hard
priority = 3, Miss
;getpower = 30, 88
;givepower = 72, 0
id = 11401

[State 11401, TargetBind]	; Simulate pushing behavior
type = TargetBind
trigger1 = NumTarget(11401) = 1
trigger1 = MoveHit = 1
trigger1 = Var(13) < 10
pos = (target(11401), Pos X - Pos X) * Facing, (target(11401), Pos Y - Pos Y)
id = 11401
ignorehitpause = 1

[State 11401, HitFlash]
type = Explod
trigger1 = MoveHit = 1		; MoveHit increments 1 tick and stays at 1 during hitpause after hitting with ignorehitpause = 1 this is why HitPauseTime is 1 tick lower than it should be
trigger1 = HitPauseTime = 6	; This is to ensure that this only occurs for 1 tick
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 11401, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11402

;---------------------------------------------------------------------------
; Hyper Rush - End
[Statedef 11402]
velset = 0, 0
ctrl = 0

[State 11402, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11402
value = 11402

[State 11402, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11402, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 11402, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Rush - Helper
[Statedef 11410]
anim = 11410
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 11410, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11410, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1

[State 11410, Remove]
type = DestroySelf
trigger1 = Parent, Anim != 11401

;---------------------------------------------------------------------------
; Teleport - Since Onslaught cannot be hit during the teleport states, Super Armor considerations are not necessary
;---------------------------------------------------------------------------
; Teleport - A - Back
[Statedef 11500]
anim = 11500
velset = 0, 0
ctrl = 0

[State 11500, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11500, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo != 15000
value = 11500, 0

[State 11500, PalFx]
type = PalFX
trigger1 = !Time && PrevStateNo != 15000
time = 57
add = 32, 32, 32
sinadd = 112, 112, 112, 114

[State 11500, Explod]	; Purpose of using an explod is so that it uses it's own palette and is not affected by palfx
type = Explod
trigger1 = !AnimTime
anim = 11510
id = 11510
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 11500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11500, Invisible]
type = AssertSpecial
trigger1 = Time = [8, 37]
flag = invisible

[State 11500, PosSet]
type = PosSet
trigger1 = Time = 37
x = -96 * Facing

[State 11500, ChangeState]
type = ChangeState
trigger1 = Time = 37
value = 11510

;---------------------------------------------------------------------------
; Teleport - B - Center
[Statedef 11501]
anim = 11500
velset = 0, 0
ctrl = 0

[State 11501, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11501, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo != 15000
value = 11500, 0

[State 11501, PalFx]
type = PalFX
trigger1 = !Time && PrevStateNo != 15000
time = 57
add = 32, 32, 32
sinadd = 112, 112, 112, 114

[State 11501, Explod]
type = Explod
trigger1 = !AnimTime
anim = 11510
id = 11510
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 11501, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11501, Invisible]
type = AssertSpecial
trigger1 = Time = [8, 37]
flag = invisible

[State 11501, PosSet]
type = PosSet
trigger1 = Time = 37
x = 0

[State 11501, ChangeState]
type = ChangeState
trigger1 = Time = 37
value = 11510

;---------------------------------------------------------------------------
; Teleport - C - Forward
[Statedef 11502]
anim = 11500
velset = 0, 0
ctrl = 0

[State 11502, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11502, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo != 15000
value = 11500, 0

[State 11502, PalFx]
type = PalFX
trigger1 = !Time && PrevStateNo != 15000
time = 57
add = 32, 32, 32
sinadd = 112, 112, 112, 114

[State 11502, Explod]
type = Explod
trigger1 = !AnimTime
anim = 11510
id = 11510
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 11502, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11502, Invisible]
type = AssertSpecial
trigger1 = Time = [8, 37]
flag = invisible

[State 11502, PosSet]
type = PosSet
trigger1 = Time = 37
x = 96 * Facing

[State 11502, ChangeState]
type = ChangeState
trigger1 = Time = 37
value = 11510

;---------------------------------------------------------------------------
; Teleport - Reappear
[Statedef 11510]
facep2 = 1

[State 11510, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 11510, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo != 15000
value = 11500, 0

[State 11510, Explod]
type = Explod
trigger1 = !NumExplod(11511)
anim = 11511
id = 11511
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 11510, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11501
trigger1 = Time = 13
value = 11501

[State 11510, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 11510, Invisible]
type = AssertSpecial
trigger1 = Anim != 11501
flag = invisible

[State 11510, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = Anim = 11501
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Magnetic Shockwave - Init
[Statedef 13000]
velset = 0, 0
ctrl = 0

[State 13000, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 13000, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13000
value = 13000

[State 13000, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13000, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(17)
value = 13001

;---------------------------------------------------------------------------
; Magnetic Shockwave - SuperPause
[Statedef 13001]
movetype = A
velset = 0, 0
ctrl = 0

[State 13001, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13001, Hyper]
type = Helper
trigger1 = !Time && PrevStateNo = 13000
name = "Hyper"
id = 19000
stateno = 19000
pos = 66, -66
ownpal = 1
supermovetime = 45

[State 13001, SuperPause]
type = SuperPause
trigger1 = !Time && PrevStateNo = 13000
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 13001, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 13002

;---------------------------------------------------------------------------
; Magnetic Shockwave
[Statedef 13002]
velset = 0, 0
ctrl = 0

[State 13002, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13001
value = 13001

[State 13002, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13002, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 13001
value = 13000, 0

[State 13002, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 13002, Shockwave]
type = Helper
trigger1 = !NumHelper(13010)
trigger1 = !Time && PrevStateNo = 13001
name = "Shockwave"
id = 13010
pos = 24, 0
stateno = 13010
ownpal = 1

[State 13002, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist < 0
value = SCA

[State 13002, ChangeState]
type = ChangeState
trigger1 = !AnimTime && BackEdgeDist >= -50
trigger2 = !NumHelper(13010) && BackEdgeDist < -50
value = 13003 + (BackEdgeDist < -50)	; Teleport in

;---------------------------------------------------------------------------
; Magnetic Shockwave - End
[Statedef 13003]
velset = 0, 0
ctrl = 0

[State 13003, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13002
value = 13002

[State 13003, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13003, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 13003, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shockwave - Teleport - Since Onslaught cannot be hit during the teleport states, Super Armor considerations are not necessary
[Statedef 13004]
anim = 11500
velset = 0, 0
ctrl = 0

[State 13004, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13004, ScreenBound]	; This is the only difference between Teleport - A - Back (State 11500) and this state
type = ScreenBound
trigger1 = 1
value = 0

[State 13004, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist < 0	; This is the only difference between Teleport - A - Back (State 11500) and this state
value = SCA

[State 13004, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 13002
value = 11500, 0

[State 13004, PalFx]
type = PalFX
trigger1 = !Time && PrevStateNo = 13002
time = 57
add = 32, 32, 32
sinadd = 112, 112, 112, 114

[State 13004, Explod]
type = Explod
trigger1 = !AnimTime
anim = 11510
id = 11510
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 13004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 13004, Invisible]
type = AssertSpecial
trigger1 = Time = [8, 37]
flag = invisible

[State 13004, PosSet]
type = PosSet
trigger1 = Time = 37
x = -96 * Facing

[State 13004, ChangeState]
type = ChangeState
trigger1 = Time = 37
value = 11510

;---------------------------------------------------------------------------
; Magnetic Shockwave - Helper - Shockwave
[Statedef 13010]
type = A
movetype = A
anim = 13010
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 13010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 13010, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 13010, 0

[State 13010, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 13010, Projectile]
type = Projectile
trigger1 = !Time
projID = 13011
projanim = 13011
projremove = 0
projremovetime = 23
projpriority = 7
projsprpriority = 2
projedgebound = 200
attr = S, HA
animtype = Hard			; Confirmed
air.animtype = Hard		; Confirmed
damage = 97, 7			; Confirmed
guardflag = MA
pausetime = 0, 9
sparkno = S7022
sparkxy = -10, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y))	; Will have to check
hitsound = S5, 10
guardsound = S6, 0
ground.type = High		; Confirmed
air.type = Low			; Confirmed
ground.slidetime = 16		; Irrelevant when ground.velocity y < 0
ground.hittime  = 18		; Irrelevant when ground.velocity y < 0
yaccel = 0.68
ground.velocity = -16, -4
air.velocity = -16, -4
ground.cornerpush.veloff = 0
air.fall = 1
fall = 1
fall.recover = 0
getpower = 0
;givepower = 16, 0

[State 13010, HitFlash]
type = Explod
trigger1 = Root, ProjHit[13011] = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 13010, NumShockWaveAdd]
type = VarSet
trigger1 = !Time
var(0) = IfElse(!IsHelper(13010), (Parent, Var(0) + 1), 1)

[State 13010, Remove]
type = ChangeState
trigger1 = !AnimTime
trigger2 = FrontEdgeDist < -200
value = 13011

[State 13010, Shockwave]
type = Helper
trigger1 = Time = 11
trigger1 = Var(0) < 10	; Sets the limit to 10
name = "Shockwave"
id = 13010 + Var(0)
pos = 96, 0
stateno = 13010

;---------------------------------------------------------------------------
; Magnetic Shockwave - Helper - Shockwave - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 13011]
ctrl = 0

[State 13011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 13011, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 13011, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(13010 + Var(0))

;---------------------------------------------------------------------------
; Mega Optic Blast - Init
[Statedef 13100]
velset = 0, 0
ctrl = 0

[State 13100, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = !Time
add = 0, 0, 0

[State 13100, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13100
value = 13100

[State 13100, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13100, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(9)
value = 13101

;---------------------------------------------------------------------------
; Mega Optic Blast - Super Pause
[Statedef 13101]
velset = 0, 0
ctrl = 0

[State 13101, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13101, Hyper]
type = Helper
trigger1 = !Time && PrevStateNo = 13100
name = "Hyper"
id = 19000
stateno = 19000
pos = 84, -134
ownpal = 1
supermovetime = 45

[State 13101, SuperPause]
type = SuperPause
trigger1 = !Time && PrevStateNo = 13100
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 13101, Explod]
type = Explod
trigger1 = !NumExplod(13110)
;trigger1 = !Time && PrevStateNo = 13100
trigger1 = AnimElemTime(9) = 1 && PrevStateNo = 13100
anim = 13110
id = 13110
pos = 84, -134
bindtime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 13101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 13102

;---------------------------------------------------------------------------
; Mega Optic Blast
[Statedef 13102]
movetype = A
velset = 0, 0
ctrl = 0

[State 13102, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13101
value = 13101

[State 13102, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13102, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 13101
value = 13100, 0

[State 13102, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(20)
value = 13103

;---------------------------------------------------------------------------
; Mega Optic Blast - Beam
[Statedef 13103]
velset = 0, 0
ctrl = 0

[State 13103, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13103, Beam]
type = Helper
trigger1 = !NumHelper(13111)
trigger1 = !Time && PrevStateNo = 13102
name = "Beam"
id = 13111
pos = 90, -134
stateno = 13111
ownpal = 1

[State 13103, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 13104

;---------------------------------------------------------------------------
; Mega Optic Blast - End
[Statedef 13104]
velset = 0, 0
ctrl = 0

[State 13104, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 13102
value = 13102

[State 13104, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13104, Turn]
type = ChangeState
trigger1 = P2Dist X < 0
trigger1 = !AnimTIme
value = 10005

[State 13104, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Mega Optic Blast - Helper - Beam
[Statedef 13111]
type = S
movetype = A
anim = 13111
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 13111, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13111, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 13111, 0

[State 13111, AttackDist]		; Necessary so P2 can guard
type = AttackDist
trigger1 = 1
value = 320

[State 13111, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 13111, Projectile]		; Invisible projectile is used since if a helper projectile is reversed, it would not appear right
type = Projectile
trigger1 = AnimElemNo(0) = 1
trigger2 = AnimElemNo(0) = 10
trigger3 = AnimElemNo(0) > 10
trigger3 = !((AnimElemNo(0) - 15) % 6)	; Want it to trigger at elem 15 so (15 - 15) % 6 = 0. It will trigger every 6 ticks after that
projID = 13111
projanim = 13115 + (AnimElemNo(0) = [4, 6]) + (AnimElemNo(0) = [7, 9]) * 2 + (AnimElemNo(0) > 9) * 3	; For the purpose of Clsn boxes
projremovetime = 5
attr = S, HA
animtype = Hard				; Confirmed
air.animtype = Hard			; Confirmed 
damage = 48, 7				; Confirmed
guardflag = MA
pausetime = 0, 9			; Confirmed
sparkno = 13111				; None
sparkxy = Floor(P2Dist X), Floor(P2Dist Y - 56); Will have to check
hitsound = S5, 20
guardsound = S6, 0
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 12		; Confirmed
ground.hittime  = 12		; Confirmed
yaccel = 0.68
guard.dist = 320			; This makes sure the opponent can guard within the screen
ground.velocity = -14, 0	; Y confirmed
air.velocity = -11, -2		; Y 0 or -1
getpower = 0
;givepower = 18, 0

[State 13111, Explod]
type = Explod
trigger1 = Root, ProjHit13111 = 1
anim = 13120
id = 13120
pos = 0, -56
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
removetime = 12
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 13111, HitFlash]
type = Explod
trigger1 = Root, ProjHit[13111] = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 13111, Remove]
type = DestroySelf
trigger1 = Parent, Anim != 13101

[State 13111, End]
type = ChangeState
trigger1 = !AnimTime
value = 13113

;---------------------------------------------------------------------------
; Mega Optic Blast - Beam - End
[Statedef 13113]
type = A
anim = 13113
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 13113, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13113, Remove]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 13101

;---------------------------------------------------------------------------
; Partner Change
[Statedef 13200]
anim = 11500
velset = 0, 0
ctrl = 0

[State 13200, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13200, Grab - Over]
type = VarSet
trigger1 = !Time
var(41) = 0

[State 13200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 13200, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo != 15000
value = 11500, 0

[State 13200, PalFx]
type = PalFX
trigger1 = !Time && PrevStateNo != 15000
time = 57
add = 32, 32, 32
sinadd = 112, 112, 112, 114

[State 13200, Explod]
type = Explod
trigger1 = !AnimTime
anim = 11510
id = 11510
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 13200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 13200, Invisible]
type = AssertSpecial
trigger1 = Time = [8, 45]
flag = invisible

[State 13200, Hyper]
type = Helper
trigger1 = Time = 20
name = "Hyper"
id = 19000
stateno = 19000
pos = -6, -95
ownpal = 1
supermovetime = 45

[State 13200, SuperPause]
type = SuperPause
trigger1 = Time = 20
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -2000

[State 13200, Onslaught]
type = Helper
trigger1 = Time = 37
name = "Onslaught"
id = 13210
stateno = 13210
ownpal = 1

[State 13200, Parallax Reference Point]
type = Helper
trigger1 = Time = 37
trigger1 = NumHelper(20100)		; Only look right with certain stages
name = "Parallax Reference Point"
id = 13220
stateno = 13220

[State 13200, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = Time = 37
add = 0, 0, 0

[State 13200, Set Sentinel Life Red]
type = VarSet
trigger1 = Time = 37
var(29) = 333

[State 13200, Set Sentinel Life]
type = VarSet
trigger1 = Time = 37
var(30) = 333

[State 13200, Reset Sentinel KO Snd]
type = VarSet
trigger1 = Time = 37
var(39) = 0

[State 13200, Sentinel VarSet]
type = VarSet
trigger1 = Time = 37
var(50) = 3

[State 13200, Partner Change TimerSet]
type = VarSet
trigger1 = Time = 45
var(18) = 900	; 15 seconds

[State 13200, ChangeState]
type = ChangeState
trigger1 = Time = 45
value = 53
ctrl = 1

;---------------------------------------------------------------------------
; Partner Change - Reappear
[Statedef 13201]
velset = 0, 0
ctrl = 0
facep2 = 1

[State 13201, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 13201, VarSet]
type = VarSet
trigger1 = !Time
var(50) = 0

[State 13201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 13201, PosSet]
type = PosSet
trigger1 = PrevStateNo = 9050
trigger1 = Time = 53
x = 0

[State 13201, Turn]
type = Turn
trigger1 = PrevStateNo = 9050
trigger1 = Time = 53
trigger1 = P2Dist X < 0

[State 13201, PlaySnd]
type = PlaySnd
trigger1 = Time = 53
value = 11500, 0

[State 13201, PalFx]
type = PalFX
trigger1 = Time = 63
time = 8
add = 144, 144, 144;32, 32, 32
sinadd = -112, -112, -112, 32;114

[State 13201, Explod]
type = Explod
trigger1 = !NumExplod(11511)
trigger1 = Time = 53
anim = 11511
id = 11511
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1
persistent = 0

[State 13201, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11501
trigger1 = Time = 66
value = 11501

[State 13201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 13201, Invisible]
type = AssertSpecial
trigger1 = Anim != 11501
flag = invisible

[State 13201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = Anim = 11501
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Partner Change - Onslaught
[Statedef 13210]
anim = 13200
velset = 0, 0
ctrl = 0
sprpriority = -30

[State 13210, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 13210, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 11500, 0

[State 13210, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 13200
trigger1 = !AnimTime
value = 13201

[State 13210, Explod]
type = Explod
trigger1 = Time = 19
anim = 13210
id = 13210
bindtime = -1
removetime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = -30
ownpal = 1

[State 13210, Parallax - New York City Skyline]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20100
x = (Helper(13220), ScreenPos X) * 0.4	; BG Delta

[State 13210, Parallax - XMvSF - Apocalypse Now!]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20102
x = (Helper(13220), ScreenPos X) * 0.9	; BG Delta

[State 13210, Parallax - MSHvSF - Apocalypse Now!]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20104
x = (Helper(13220), ScreenPos X) * 0.89285714285714285714285714285714	; BG Delta

[State 13210, ChangeState]
type = ChangeState
trigger1 = Parent, StateNo = 13201
trigger2 = !Parent, Var(50)
value = 13211

;---------------------------------------------------------------------------
; Partner Change - Onslaught - Disappear
[Statedef 13211]
velset = 0, 0
ctrl = 0
sprpriority = -30

[State 13211, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 13211, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = 11500, 0

[State 13211, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 13201
trigger1 = Time = 16
value = 13202

[State 13211, Explod]
type = RemoveExplod
trigger1 = Time = 18
id = 13210

[State 13211, Parallax - New York City Skyline]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20100
x = (Helper(13220), ScreenPos X) * 0.4	; BG Delta

[State 13211, Parallax - XMvSF - Apocalypse Now!]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20102
x = (Helper(13220), ScreenPos X) * 0.9	; BG Delta

[State 13211, Parallax - MSHvSF - Apocalypse Now!]
type = PosSet
trigger1 = NumHelper(13220)
trigger1 = NumHelper(20100)
trigger1 = Helper(20100), Anim = 20104
x = (Helper(13220), ScreenPos X) * 0.89285714285714285714285714285714	; BG Delta

[State 13211, Remove]
type = DestroySelf
trigger1 = Anim = 13202
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Partner Change - Parallax Reference Point
[Statedef 13220]
velset = 0, 0
ctrl = 0

[State 13220, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 13220, Invisible]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 13220, Remove]
type = DestroySelf
trigger1 = !NumHelper(13210)

;---------------------------------------------------------------------------
; Resurrection
[Statedef 15150]
velset = 0, 0
ctrl = 0

[State 15150, LifeSet]
type = LifeSet
trigger1 = !Time
value = LifeMax
ignorehitpause = 1

[State 15150, Life VarSet]
type = VarSet
trigger1 = !Time
var(21) = LifeMax

[State 15150, Invisible Projectile]
type = Projectile
trigger1 = !Time
trigger1 = FVar(36) != 0
projid = 15150
projanim = 6100
postype = p2
damage = -Ceil(enemyNear, LifeMax * FVar(36)/100), -Ceil(enemyNear, LifeMax * FVar(36)/100)
attr = S, NA
hitflag = MAFD
guardflag = 
animtype = Hard
sparkno = -1
guard.sparkno = -1
hitsound = -1, -1
guardsound = -1, -1
ground.slidetime = 20			; N/A
guard.slidetime = 20			; 
ground.hittime = 24				; N/A
guard.hittime = 24				; 
guard.ctrltime = 30				; 
yaccel = 0.68
;ground.velocity = -14, -9
;air.velocity = -14, -9
p2stateno = 5030				; enemyNear, StateNo
p2getp1state = 0
numhits = 0
getpower = 0, 0
givepower = 0, 0
id = 15150

[State 15150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 15150, NoBarDisplay]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 15150, White Cover]
type = Helper
triggerall = !Var(50)
trigger1 = !NumHelper(15155)
name = "White Cover"
id = 15155
pos = 0, -Ceil(ScreenPos Y)
postype = Left
stateno = 15155
ownpal = 1

[State 15150, ChangeAnim]
type = ChangeAnim
trigger1 = !Var(50)
trigger1 = Anim != 15150
value = 15150

[State 15150, PlaySnd]
type = PlaySnd
trigger1 = !Var(50)
trigger1 = !Time
value = 15150, 0

[State 15150, Invisible]
type = AssertSpecial
trigger1 = !Var(50)
trigger1 = Time > 110		; Triggers when the maximum AllPalFx amplification is reached
flag = Invisible

[State 15150, Intro]
type = ChangeState
trigger1 = !Var(50)
trigger1 = Time > 110		
value = 20190 + !(Var(50) := 1) + (Var(21) := LifeMax) * 0 + Floor((FVar(29) := 0))

;---------------------------------------------------------------------------
; Lose - White Cover
[Statedef 15155]
anim = 7030
velset = 0, 0
ctrl = 0
sprpriority = 100

[State 15155, PosSet]
type = PosAdd
trigger1 = 1
x = -ScreenPos X
y = -ScreenPos Y

[State 15155, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 15155, Fade In To White]
type = Trans
trigger1 = Time = [0, 110]
trans = addalpha
alpha = Ceil(Time * 2.56), 256

[State 15155, Fade Out]
type = Trans
trigger1 = Time > 110
trans = addalpha
alpha = 256 - Ceil((Time - 110)* 2.56), 256