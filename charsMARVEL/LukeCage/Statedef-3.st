;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Cable Training"
value = 3
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Scarlet Witch"
value = 4
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Spiderman"
value = 5
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Wolverine"
value = 6
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Black Widow"
value = 7
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Captain America"
value = 8
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Ironman"
value = 9
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Red Hulk"
value = 10
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Thing"
value = 11
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Mighty Thor"
value = 12
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Luke Cage"
value = 13
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "MissMarvel"
value = 14
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Hope"
value = 15
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Iceman"
value = 16
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Psylocke"
value = 17
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Emma Frost"
value = 18
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Cyclops"
value = 19
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Magneto"
value = 20
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Namor"
value = 21
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Colossonaught"
value = 22
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Storm"
value = 23
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Beast"
value = 24
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Rogue"
value = 25
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Deadpool"
value = 26
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Captain Marvell"
value = 27
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Phoenix Force"
value = 28
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "SentinelStage"
value = 29

[State VictoryQuote]
Type = null;VictoryQuote
trigger1 = p2name != "Cable Training"
trigger1 = p2name != "Scarlet Witch"
trigger1 = p2name != "Spiderman"
trigger1 = p2name != "Wolverine"
trigger1 = p2name != "Black Widow"
trigger1 = p2name != "Captain America"
trigger1 = p2name != "Ironman"
trigger1 = p2name != "Red Hulk"
trigger1 = p2name != "The Thing"
trigger1 = p2name != "The Mighty Thor"
trigger1 = p2name != "Luke Cage"
trigger1 = p2name != "MissMarvel"
trigger1 = p2name != "Hope"
trigger1 = p2name != "Iceman"
trigger1 = p2name != "Psylocke"
trigger1 = p2name != "Emma Frost"
trigger1 = p2name != "Cyclops"
trigger1 = p2name != "Magneto"
trigger1 = p2name != "Namor"
trigger1 = p2name != "Colossonaught"
trigger1 = p2name != "Storm"
trigger1 = p2name != "The Beast"
trigger1 = p2name != "Rogue"
trigger1 = p2name != "Deadpool"
trigger1 = p2name != "Captain Marvell"
trigger1 = p2name != "Phoenix Force"
value = 1 + random%1

[State -3, Cable Stage]
type = Explod
triggerall = numexplod(29872)=0
triggerall = p2name = "Cable Training"
triggerall = StageVar(info.name) =  "B"
trigger1 = Teamside = 1
anim = F29872
ID =  29872
pos = 50,200;-40,-22
postype = left  ;p1
removetime = -2
scale = 1,1
sprpriority = -10000
ownpal = 1



[State -3, Finish Hit Explod - Helper]
type = null;Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, -1500
postype = back
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = stateno < 3000
trigger2 = MoveType = H
trigger3 = (WinKO)
id = 10010
ignorehitpause = 1



[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = S8100,0

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = F8510;60
postype = p1
pos = -10,0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1



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




