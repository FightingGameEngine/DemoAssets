;=========================================================
;\------------------\ Sandman /--------------------------/
;Sprite Edits, Character design, Concepts ----  McCready 
;Sprite Edits, Programming-code, Concepts ----  Loganir
;==========================================================
;  loganir@gmail.com    mccready171@yahoo.com

;-| Button Remapping |-----------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "quicksand"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "quicksand"
command = ~D, DB, B,  y+z
time = 20
[Command]
name = "quicksand"
command = ~D, DB, B,  x+z
time = 20

[Command]
name = "sandhypergrab"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "sandhypergrab"
command = ~D, DF, F,  y+z
time = 20
[Command]
name = "sandhypergrab"
command = ~D, DF, F,  x+z
time = 20

[Command]
name = "sandsaw"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "sandsaw"
command = ~D, DF, F,  b+c
time = 20
[Command]
name = "sandsaw"
command = ~D, DF, F,  a+c
time = 20

[Command]
name = "head"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "head"
command = ~D, DB, B,  b+c
time = 20
[Command]
name = "head"
command = ~D, DB, B,  a+c
time = 20

[Command]
name = "6"
command =~D,B, a+x
time = 20
[Command]
name = "6"
command =~D,B, b+y
time = 20
[Command]
name = "6"
command =~D, B, c+z
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "qs_f3k"
command = ~F, D, DF, a+b+c
time = 25
[Command]
name = "qs_f3p"
command = ~F, D, DF, x+y+z
time = 25

[Command]
name = "qs_b3k"
command = ~B, D, DB, a+b+c
time = 25
[Command]
name = "qs_b3p"
command = ~B, D, DB, x+y+z
time = 25

[Command]
name = "smash_down1"
command = ~D, DF, F, x
[Command]
name = "smash_down1"
command = ~D, DF, F, ~x
[Command]
name = "smash_down2"
command = ~D, DF, F, y
[Command]
name = "smash_down2"
command = ~D, DF, F, ~y
[Command]
name = "smash_down3"
command = ~D, DF, F, z
[Command]
name = "smash_down3"
command = ~D, DF, F, ~z

[Command]
name = "shower"
command = ~D, DB, B, x
[Command]
name = "shower"
command = ~D, DB, B, ~x
[Command]
name = "shower"
command =~D, DB, B, y
[Command]
name = "shower"
command = ~D, DB, B, ~y
[Command]
name = "shower"
command = ~D, DB, B, z
[Command]
name = "shower"
command = ~D, DB, B, ~z

[Command]
name = "collum_a"
command = ~D, DF, F, a
[Command]
name = "collum_a"
command = ~D, DF, F, ~a
[Command]
name = "collum_b"
command = ~D, DF, F, b
[Command]
name = "collum_b"
command = ~D, DF, F, ~b
[Command]
name = "collum_c"
command = ~D, DF, F, c
[Command]
name = "collum_c"
command = ~D, DF, F, ~c

[Command]
name = "imobilizator"
command = ~D, DB, B, a
[Command]
name = "imobilizator"
command = ~D, DB, B, ~a
[Command]
name = "imobilizator"
command = ~D, DB, B, b
[Command]
name = "imobilizator"
command = ~D, DB, B, ~b
[Command]
name = "imobilizator"
command = ~D, DB, B, c
[Command]
name = "imobilizator"
command = ~D, DB, B, ~c


[Command]
name = "rec-cou"
command = ~B, DB, D, x
[Command]
name = "rec-cou"
command = ~B, DB, D, ~x
[Command]
name = "rec-cou"
command = ~B, DB, D, y
[Command]
name = "rec-cou"
command = ~B, DB, D, ~y
[Command]
name = "rec-cou"
command = ~B, DB, D, z
[Command]
name = "rec-cou"
command = ~B, DB, D, ~z
[Command]
name = "rec-cou"
command = ~B, DB, D, a
[Command]
name = "rec-cou"
command = ~B, DB, D, ~a
[Command]
name = "rec-cou"
command = ~B, DB, D, b
[Command]
name = "rec-cou"
command = ~B, DB, D, ~b
[Command]
name = "rec-cou"
command = ~B, DB, D, c
[Command]
name = "rec-cou"
command = ~B, DB, D, ~c




;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "superj3press"
command = a+b+c
time = 5

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "dash2press"
command = x+y+z
time = 5

;-| Dir + Button |---------------------------------------------------------


[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


;-|hold Button |---------------------------------------------------------


[Command]
name = "hold_c"
command = /c
time = 5

[Command]
name = "superjump"
command = $D, $U


;===================================================================================
[Statedef -1]


[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


[State -1, 0]
type = ChangeState
triggerall = Var(59)>=1&& (StateType != A) && Ctrl && !(enemynear,hitdefattr = SCA,HA)&& RoundState = 2
trigger1 = (P2StateType != A)  && (P2StateType!= L) && (P2BodyDist X <= 11) 
value = ifelse(Random <= 400,800,850)

[State -1, 1]
type = ChangeState
triggerall = Var(59)>=1  && (P2StateType = S) && RoundState = 2&& (Random > 700)
trigger1 = Ctrl && (StateType != A) && (p2bodydist X <= 45)
trigger2 = (stateno = 100) && (p2bodydist x=[10,60])
value = 200

[State -1, 2]
type = ChangeState
triggerall = Var(59)>=1 && (P2StateType = S)  && RoundState = 2&& (Random < 400)
trigger1 = Ctrl &&  (StateType != A) && (p2bodydist X < 45)
trigger2 = stateno = 100 && (p2bodydist x=[10,60])
value = 230

[State -1, 3]
type = ChangeState
triggerall = Var(59)>=1 && (P2StateType = C)  && RoundState = 2&& (Random < 300)
trigger1 = Ctrl && StateType != A && (p2bodydist X < 45) 
trigger2 = stateno = 100 && (p2bodydist x=[10,60])
value = 400

[State -1, 4]
type = ChangeState
triggerall = Var(59)>=1 && P2StateType = C && RoundState = 2&& (Random > 700)
trigger1 = Ctrl &&  StateType != A && (p2bodydist X < 45) 
trigger2 = stateno = 100 && (p2bodydist x=[10,60])
value = 430


[State -1, 5]
type = ChangeState
triggerall = Var(59)>=1&& (StateType = A) && (P2StateType = A)  && RoundState = 2
trigger1 = (stateno = 2999) && (time = 8) && Ctrl
trigger2 =  (p2bodydist X < 45) && Ctrl
value = IfElse(Random < 500,600,630)

[State -1, 6]
type = ChangeState
triggerall = Var(59)>=1&& (StateType = A) && RoundState = 2 && (life>300)
trigger1 = (StateNo = [600,610]) && (Movehit)
value = IfElse(StateNo = 600,610,620)

[State -1, 7]
type =ChangeState
triggerall = Var(59)>=1&& (StateType = A) && RoundState = 2&& (life>300)
trigger1 = (StateNo = [630,640]) && (Movehit)
value = IfElse(StateNo = 630,640,650)

[State -1, 8]
type =ChangeState
triggerall = Var(59)>=1&& (StateType = A) && RoundState = 2&& (life<300)
trigger1 = (StateNo = [600,640]) && (Movecontact)
value = IfElse((StateNo = 600),630,IfElse((StateNo = 630),640,IfElse((StateNo = 640),620,650)))


[State -1, 9]
type = ChangeState
triggerall = Var(59)>=1&& (StateType != A) && RoundState = 2
trigger1 = (StateNo = 200) && (Movecontact)
value = IfElse((random <500),210,220)

[State -1, 10]
type = ChangeState
triggerall = Var(59)>=1&& (StateType != A) && RoundState = 2
trigger1 = (StateNo = 230) && (Movecontact)
value = IfElse((random <333),240,IfElse((random>777),420,250))


[State -1, 11]
type = ChangeState
triggerall = Var(59)>=1&& (StateType = C) && RoundState = 2
trigger1 = (StateNo = 430) && (Movecontact)
value = IfElse((random <333),440,IfElse((random>777),420,450))


[State -1, 12]
type = ChangeState
triggerall = Var(59)>=1&& (StateType = C) && RoundState = 2
trigger1 = (StateNo = 400) && (Movecontact)
value = IfElse((random <333),410,420)



[State -1, 13]
type = ChangeState
triggerall = var(59)>=1 && (stateno !=[120,155]) && inguarddist && (enemynear,hitdefattr =SCA,AA,AP)
trigger1 = ctrl
trigger2 = (stateno = 100||stateno = 105)
value = 120
persistent=0

[State -1, 14]
type=changestate
triggerall= var(59)>=1 && (life >750) && (roundstate=2) && (StateType !=A) 
trigger1 = ctrl && (p2bodydist x >160) && (random <30)
value = 195

[State -1,15]
type = ChangeState
trigger1 = Var(59)>=1 && (stateno = [150,155]) && (random<200)
value = IfElse(StateType = S ,6300,IfElse(StateType = C ,6310,6320))

[State -1,16]
type = ChangeState
triggerall = Var(59)>=1&& roundstate=2 && alive && (stateno = 5100)
trigger1 = (random <= 150) && (p2bodydist x=[-20,20])
value = 6500

[State -1, 17]
type = ChangeState
triggerall = Var(59)>=1 &&(stateno!=100) && (StateType = S) && (Random <= 100)
trigger1 = (p2bodydist X >= 110) && Ctrl && (p2movetype!=A)
value = 100

[State -1, 18]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && Ctrl && (Random >= 700) 
trigger1 = (enemynear, numproj >= 1) && (p2bodydist X > 130) 
value = 2999

[State -1, 19]
type = changestate
triggerall = var(59)>=1 &&  (stateno = 5050) && alive && RoundState = 2
trigger1 = (vel y > 0) && canrecover && (random < 100)
value = ifelse((pos y>-15),5200,5210)

[State -1,20] 
type = ChangeState 
triggerall = Var(59)>=1 && (StateType != A) && Ctrl && (stateno!=100) && RoundState = 2
trigger1 = (P2statetype = L) && (Random <= 500) 
value = ifelse((p2bodydist x=[0,60]),430,1000)


[State -1, 21]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && RoundState = 2
trigger1= (stateno = 200||stateno = 230||stateno = 240) && (movehit) && (Random < 250)
trigger2 = ctrl && (p2bodydist x=[0,90]) && (Random < 150)
value = ifelse((p2bodydist x=[0,70]),1001,1000)


[State -1, 22]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && RoundState = 2 && (Random < 50)
trigger1 = ctrl && (p2bodydist x=[120,300]) 
value = 1100


[State -1, 23]
type = ChangeState
triggerall = (p2stateno!=1221) && (!Numhelper(1210)) && (p2statetype != A) 
triggerall = Var(59)>=1 && (StateType != A) && RoundState = 2 && (Random <400)
trigger1 = (stateno = 200||stateno = 230||stateno = 240) && movehit
trigger2 = ctrl && (p2bodydist x=[100,300]) 
value = 1200

[State -1, 23x]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && RoundState = 2 && (Random < 300) && ctrl
trigger1 = p2movetype = A && (enemynear,hitdefattr = SCA,HA,HP)
trigger2 =(enemynear, numproj >= 1)
trigger3 = (p2bodydist x=[100,300]) 
value = 1700


[State -1, 24]
type = changestate
triggerall = Var(59)>=1 && ctrl && (StateType != A) && (p2statetype = A) 
trigger1 = (p2bodydist X < 80) && (EnemyNear, Pos Y < -60);> 
value = ifelse (random < 200, 420, 1002)

[State -1, 25]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && (p2bodydist X < 50)
trigger1 = ctrl && (Random < 150)
trigger2 = (Random < 100) &&(stateno =1200) && (p2stateno=1221) && (Numhelper(1210))
trigger3 = (stateno = 200||stateno = 230||stateno = 240) && (movehit) 
value = 1500

[State -1, 26]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A)  && (p2bodydist x=[51,140]) 
trigger1 = (StateNo = 1500) && (time>= 20) && (p2movetype = H) 
trigger2 = ctrl && (p2bodydist X < 70) && (Random < 150)
trigger3 = (Random < 100) && (stateno =1200) && (p2stateno=1221) && (Numhelper(1210))
value = 1501

[State -1, 27]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && (p2bodydist X > 141)
trigger1 = (StateNo = 1501) && (time>= 20) && (p2movetype = H) 
trigger2 = ctrl && (Random < 150)
trigger3 = (Random < 100) && (stateno =1200) && (p2stateno=1221) && (Numhelper(1210))
value = 1502


[State -1, h1]
type = ChangeState
triggerall = Var(59)>=1 && (RoundNo != 2) && (RoundState = 2)
triggerall =  (StateType != A) && (power >= 1000) && (p2bodydist X>95)
trigger1 = ctrl && (random<550)
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = (movehit) && (random < 250)
trigger3 = (stateno =1200) && (p2stateno=1221) && (Numhelper(1210))
value = ifelse ((p2bodydist x=[95,130]),3100,3000)

[State -1, h2]
type = ChangeState
triggerall = Var(59)>=1 && (RoundNo != 2) && (RoundState = 2)
triggerall =  (StateType != A) && (power >= 1000) && (p2bodydist X<90)
trigger1 = ctrl && (random<550)
trigger2 =(stateno = [200,250]) || (stateno = [400,450])||(stateno = [1000,1002])
trigger2 = (movehit) && (random < 250)
trigger3 = (stateno =1200) && (p2stateno=1221) && (Numhelper(1210))
value = ifelse ((p2bodydist x=[0,50]),3300,3200)

[State -1,c]
type = ChangeState
triggerall = Var(59)>=1  && (RoundNo != 2) && (stateno = [150,155]) && (random<100)
trigger1 = (StateType != A)&& (power >= 1000) 
value = IfElse(StateType = C ,6100,6000)

[State -1, HC]
type = ChangeState
triggerall = !Numpartner 
triggerall = Var(59)>=1 && (RoundNo != 1) && (RoundState = 2) && (StateType != A)
trigger1 = ctrl && (power=3000) && (RoundNo = 2||RoundNo = 3)
trigger2 = (power>= 1000) && (stateno = [200,450]) && (p2bodydist x=[0,90])
trigger2 = (movehit) && (life < 250) 
value = 3500

[State -1, HC]
type = ChangeState
triggerall = Numpartner 
triggerall = Var(59)>=1 && (RoundNo != 1) && (RoundState = 2) && (StateType != A)
trigger1 = ctrl && (power=3000) && (RoundNo = 2||RoundNo = 3)
trigger2 = (power>= 1000) && (stateno = [200,450]) && (p2bodydist x=[0,90])
trigger2 = (movehit) && (life < 250) 
value = 3530









;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[State -1, qs]
type = changestate
value = 1700
triggerall = Var(59) <= 0 && statetype != A && (command="qs_f3p"||command="qs_b3p"||command="qs_f3k"||command="qs_b3k")
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) 




[State -1,Deadly Headache]
type = ChangeState
value = 3300
triggerall = Var(59) <= 0 && command = "head" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)

[State -1,hands of oblivion]
type = ChangeState
value = 3200
triggerall = Var(59) <= 0 && command = "quicksand" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)

[State -1, Destroyer Strike]
type = ChangeState
value = 3100
triggerall = Var(59) <= 0 && command = "sandhypergrab" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)

[State -1, spiral slash]
type = ChangeState
value = 3000
triggerall = Var(59) <= 0 && command = "sandsaw" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)


[State -1, 6]
type = ChangeState
value = 3500
triggerall = !Numpartner
triggerall = Var(59)<= 0 && command = "6" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)


[State -1, 6];level 3 team mode
type = ChangeState
value = 3530
triggerall = Numpartner
triggerall = Var(59)<= 0 && command = "6" && power = 3000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])||(stateno = [1000,1002])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210)





[State -1, Smash1]
type = ChangeState
value = 1001
triggerall = Var(59) <= 0 && statetype != A && command = "smash_down1"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) 
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;cancel bind
[State -1, Smash2]
type = ChangeState
value = 1002
triggerall = Var(59) <= 0 && statetype != A && command = "smash_down2"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) 
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;cancel bindsand
[State -1, Smash3]
type = ChangeState
value = 1000
triggerall = Var(59) <= 0 && statetype != A && command = "smash_down3"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) 
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;cancel bindsand



[State -1, shower]
type = ChangeState
value = 1100
triggerall = Var(59) <= 0 && statetype !=A && command = "shower"
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;

[State -1, bindingsand]
type = ChangeState
value = 1200
triggerall = !Numhelper(1210)
triggerall = Var(59) <= 0 && statetype !=A && command = "imobilizator"
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450])



[State -1, assault step]
type = ChangeState
value = 1500
triggerall = Var(59) <= 0 && statetype != A && command = "collum_a" 
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;

[State -1, assault step]
type = ChangeState
value = 1501
triggerall = Var(59) <= 0 && statetype != A && command = "collum_b"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;

[State -1, assault step]
type = ChangeState
triggerall = Var(59) <= 0 && statetype != A && command = "collum_c"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves
value = 1502
trigger3 = stateno =1200 && p2stateno=1221 && Numhelper(1210) ;

[State -1, Fall]
type = VarSet
triggerall = alive 
trigger1 = command = "rec-cou"
trigger1 = stateno = 5050 || stateno = 5071 || stateno = 5100
v = 20
value = 1

[State -1, roll]
type = ChangeState
value = 6500
triggerall = alive 
trigger1 = Var(20) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)


[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]


[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) <= 0 && statetype = S && ctrl && stateno != 52
trigger1 = command = "FF" 
trigger2 = command = "dash2press" 


[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) <= 0 && statetype = S && ctrl && stateno != 105
trigger1 = command = "BB"



[State -1, Throw]; custom foward
type = ChangeState
value = 800
triggerall = command = "z" && statetype = S && ctrl && p2bodydist X <= 11 
triggerall= (p2statetype = S) || (p2statetype = C)
trigger1 = command = "holdfwd" && p2movetype != H


[State -1, Throw]; custom backward
type = ChangeState
value = 850
triggerall = command = "c" && statetype = S && ctrl && p2bodydist X <= 11 
triggerall= (p2statetype = S) || (p2statetype = C)
trigger1 = command = "holdfwd" && p2movetype != H


[State -1, Taunt]
type = ChangeState
value = 195
triggerall = ctrl && statetype != A
trigger1 = command = "start"


[State -1, Super Jump]
type = ChangeState
value = 2999
triggerall = Var(59) <= 0 && statetype != A && ctrl
trigger1 = command = "superjump"
trigger2 = command = "superj3press"


[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "x" 
trigger1 = statetype = S && ctrl

[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "y" 
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 230 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430
trigger3 = movecontact


[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "z" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 
trigger3 = movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "a" 
trigger1 = statetype = S && ctrl


[State -1, Standing medium Kick]
type = ChangeState
value = 240
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "b" 
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 230 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 
trigger3 = movecontact

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 
trigger3 = movecontact


[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "x"
trigger1 = statetype = C && ctrl


[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "y"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "z" 
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = C && ctrl

[State -1, Crouching medium Kick]
type = ChangeState
value = 440
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "b"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "c"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "x"
trigger1 = ctrl
trigger2 = var(25)&& (stateno = 630)&& movecontact


[State -1, Jump medium Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 610
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "y"
trigger1 = ctrl
trigger2 = var(25)
trigger2 = stateno = 600 || stateno = 640 
trigger2 = movecontact
trigger3 = stateno = 630 
trigger3 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "z"
trigger1 = ctrl
trigger2 = var(25)
trigger2 = stateno = 600 ||  stateno = 610 
trigger2 = movecontact
trigger3 = stateno = 630 ||  stateno = 640
trigger3 = movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "a"
trigger1 = ctrl
trigger2 = var(25)&& (stateno = 600)&& movecontact


[State -1, Jump medium Kick]
type = ChangeState
value = 640
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "b"
trigger1 = ctrl
trigger2 = var(25)
trigger2 = stateno = 630 || stateno = 610 
trigger2 = movecontact
trigger3 = stateno = 600 
trigger3 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "c"
trigger1 = ctrl
trigger2 = var(25)
trigger2 = stateno = 630 || stateno = 640
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 610 
trigger3 = movecontact
