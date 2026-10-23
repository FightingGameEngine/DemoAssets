;-| CPU |--------------------------------------------------------
[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1
;-| Super Motions |--------------------------------------------------------

;Hofund's Might
[command]
name = "HofundsMight"
command = ~D,DF,F,y+z
time = 30
[command]
name = "HofundsMight"
command = ~D,DF,F,x+z
time = 30
[command]
name = "HofundsMight"
command = ~D,DF,F,x+y
time = 30

;Balrog's Irruption
[Command]
name = "BalrogsIrruption"
command = ~D,DF,F,b+c
time = 25
[Command]
name = "BalrogsIrruption"
command = ~D,DF,F,a+c
time = 25
[Command]
name = "BalrogsIrruption"
command = ~D,DF,F,a+b
time = 25

;Defence Of The Realm
[command]
name = "DefenceOfTheRealm"
command = ~D,DB,B,x+y
time = 30
[command]
name = "DefenceOfTheRealm"
command = ~D,DB,B,y+z
time = 30
[command]
name = "DefenceOfTheRealm"
command = ~D,DB,B,x+z
time = 30

;Soul Searcher
[command]
name = "SoulForge"
command = ~D,DB,B,b+c
time = 30
[command]
name = "SoulForge"
command = ~D,DB,B,a+b
time = 30
[command]
name = "SoulForge"
command = ~D,DB,B,a+c
time = 30

;-| Special Motions |-----------------------------------------------------------

[Command]
name = "FZx"
command = ~F,D,DF,x
time = 15

[Command]
name = "FZy"
command = ~F,D,DF,y
time = 15

[Command]
name = "FZz"
command = ~F,D,DF,z
time = 17


[Command]
name = "BZx"
command = ~B,D,DB,x
time = 15

[Command]
name = "BZy"
command = ~B,D,DB,y
time = 15

[Command]
name = "BZz"
command = ~B,D,DB,z
time = 17


[Command]
name = "DFx"
command = ~D,DF,F,x
time = 12

[Command]
name = "DFy"
command = ~D,DF,F,y
time = 12

[Command]
name = "DFz"
command = ~D,DF,F,z
time = 10


[Command]
name = "BZa"
command = ~B,D,DB,a
time = 15

[Command]
name = "BZb"
command = ~B,D,DB,b
time = 15

[Command]
name = "BZc"
command = ~B,D,DB,c
time = 17


[Command]
name = "DFa"
command = ~D,DF,F,a
time = 12

[Command]
name = "DFb"
command = ~D,DF,F,b
time = 10

[Command]
name = "DFc"
command = ~D,DF,F,c
time = 12


[Command]
name = "DBx"
command = ~D,DB,B,x
time = 12

[Command]
name = "DBy"
command = ~D,DB,B,y
time = 12

[Command]
name = "DBz"
command = ~D,DB,B,z
time = 12


[Command]
name = "DBa"
command = ~D,DB,B,a
time = 12

[Command]
name = "DBb"
command = ~D,DB,B,b
time = 12

[Command]
name = "DBc"
command = ~D,DB,B,c
time = 12


[Command]
name = "FZa"
command=~F,D,DF,a
time = 30

[Command]
name = "FZb"
command=~F,D,DF,b
time = 30

[Command]
name = "FZc"
command=~F,D,DF,c
time = 30


[Command]
name = "BZa"
command=~B,D,DB,a
time = 30

[Command]
name = "BZb"
command=~B,D,DB,b
time = 30

[Command]
name = "BZc"
command=~B,D,DB,c
time = 30



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "xxx"
command = ~x,~x,~x
time = 15

[Command]
name = "xxx"
command = ~x,~y,~x
time = 15

[Command]
name = "xxx"
command = ~x,~z,~x
time = 15

[Command]
name = "yyy"
command = ~y,~y,~y
time = 15

[Command]
name = "yyy"
command = ~y,~x,~y
time = 15

[Command]
name = "yyy"
command = ~y,~z,~y
time = 15

[Command]
name = "zzz"
command = ~z,~z,~z
time = 15

[Command]
name = "zzz"
command = ~z,~y,~z
time = 15

[Command]
name = "zzz"
command = ~z,~x,~z
time = 15

[Command]
name = "FF2"
command = ~DB,F,F
time = 20

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = DB, UF
time = 10

[Command]
name = "DU"
command = DF, UB
time = 10

[Command]
name = "DU"
command = $D, UF
time = 10

[Command]
name = "DU"
command = $D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "ayb"
command = a+y+b
time = 1

[Command]
name = "zc"
command = z+c
time = 1

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd"
command = ~F
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

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

[Command]
name = "down2";Required (do not remove)
command = ~D
time = 1


[Command]
name = "down"
command = /D
time = 1

[Command]
name = "down"
command = /DF
time = 1

[Command]
name = "down"
command = /DB
time = 1

[Command]
name = "holddown2"
command = ~8$D
time = 1

[Command]
name = "holdback2"
command = ~4$B
time = 1


[Command]

name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]

name = "CPU2"
command = D, D, U, U, D, U, D, D, U, D
time = 1

;[Command]

;name = "CPU3"
;command = D, D, U, U, D, U, U, U, D
;time = 1

;===============================================================================
[Statedef -1]


;===============================================================================



;===============================================================================
;HYPERS
;===============================================================================
;===============================================================================
[State -1,Soul Shield of Asgard]
type = ChangeState
value = 3300
triggerall = command = "SoulForge"
triggerall = Statetype != A
triggerall = Power >=1000 || fvar(10) != 0
triggerall = Var(19) !=3
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,  Soul Shield of Asgard]
type = ChangeState
value = 3300
triggerall = command = "SoulForge"
triggerall = Var(19) !=3
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;==============================================================================
[State -1,BalrogsIrruption]
type = ChangeState
value = 3200
triggerall = command = "BalrogsIrruption"
triggerall = Statetype != A
triggerall = Power >=1000 || fvar(10) != 0
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,BalrogsIrruption]
type = ChangeState
value = 3200
triggerall = command = "BalrogsIrruption"
triggerall = Statetype != A
triggerall = Power >=1000
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;==============================================================================
[State -1,DefenceOfTheRealm]
type = ChangeState
value = 3100
triggerall = command = "DefenceOfTheRealm"
triggerall = Statetype != A
triggerall = Power >=1000 || fvar(10) != 0
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DefenceOfTheRealm]
type = ChangeState
value = 3100
triggerall = command = "DefenceOfTheRealm"
triggerall = Statetype != A
triggerall = Power >=1000
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,HofundsMight]
type = ChangeState
value = 3000
triggerall = command = "HofundsMight"
triggerall = Statetype != A
triggerall = Power >=1000 || fvar(10) != 0
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,HofundsMight]
type = ChangeState
value = 3000
triggerall = command = "HofundsMight"
triggerall = Statetype != A
triggerall = Power >=1000
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
;SPECIALS
;===============================================================================
;===============================================================================
[State -1,BZx]
type = ChangeState
value = ifelse(command="BZx",1200,1210)
triggerall = command = "BZx" || command = "BZy"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,BZx]
type = ChangeState
value = ifelse(command="BZx",1200,1210)
triggerall = command = "BZx" || command = "BZy"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,BZz]
type = ChangeState
value = 1211
triggerall = command = "BZz"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,BZz]
type = ChangeState
value = 1211
triggerall = command = "BZz"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

[State -1,BZa]
type = ChangeState
value = ifelse(command="BZa",1900,1910)
triggerall = command = "BZa" || command = "BZb"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,BZa]
type = ChangeState
value = ifelse(command="BZa",1900,1910)
triggerall = command = "BZa" || command = "BZb"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,BZc]
type = ChangeState
value = 1920
triggerall = command = "BZc"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,BZc]
type = ChangeState
value = 1920
triggerall = command = "BZc"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1


;-------------------------------------------------------------------------------
[State -1,FZa]
type = ChangeState
value = ifelse(command="FZa",1000,1010)
triggerall = command = "FZa" || command = "FZb"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,FZa]
type = ChangeState
value = ifelse(command="FZa",1000,1010)
triggerall = command = "FZa" || command = "FZb"
triggerall = Statetype != A
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,FZc]
type = ChangeState
value = 1011
triggerall = command = "FZc"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,FZc]
type = ChangeState
value = 1011
triggerall = command = "FZc"
triggerall = Statetype != A
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,FZx]
type = ChangeState
value = ifelse(command="FZx",1500,1510)
triggerall = command = "FZx" || command = "FZy"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && ((animelem = 6,>= 1 && animelem = 9,<= 0) || movecontact)
trigger10 = stateno = 310 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,FZx]
type = ChangeState
value = ifelse(command="FZx",1500,1510)
triggerall = command = "FZx" || command = "FZy"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,FZz]
type = ChangeState
value = 1511
triggerall = command = "FZz"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && ((animelem = 6,>= 1 && animelem = 9,<= 0) || movecontact)
trigger10 = stateno = 310 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,FZz]
type = ChangeState
value = 1511
triggerall = command = "FZz"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DBx]
type =ChangeState
value = ifelse(command="DBx",1300,1310)
triggerall = command = "DBx" || command = "DBy"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DBx]
type = ChangeState
value = ifelse(command="DBx",1300,1310)
triggerall = command = "DBx" || command = "DBy"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1


;===============================================================================
[State -1,DBz]
type = ChangeState
value = 1320
triggerall = command = "DBz"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DBz]
type = ChangeState
value = 1320
triggerall = command = "DBz"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DFa]
type = ChangeState
value = ifelse(command="DFa",1100,1110)
triggerall = command = "DFa" || command = "DFb"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DFa]
type = ChangeState
value = ifelse(command="DFa",1100,1110)
triggerall = command = "DFa" || command = "DFb"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1


;===============================================================================
[State -1,DFc]
type = ChangeState
value = 1111
triggerall = command = "DFc"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DFc]
type = ChangeState
value = 1111
triggerall = command = "DFc"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DBa]
type = ChangeState
value = ifelse(command="DBa",1800,1810)
triggerall = command = "DBa" || command = "DBb"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DBa]
type = ChangeState
value = ifelse(command="DBa",1800,1810)
triggerall = command = "DBa" || command = "DBb"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DBc]
type = ChangeState
value = 1811
triggerall = command = "DBc"
triggerall = Statetype != A
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DBc]
type =ChangeState
value = 1811
triggerall = command = "DBc"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DFx]
type = ChangeState
value = ifelse(command="DFx",1600,1610)
triggerall = command = "DFx" || command = "DFy"
triggerall = Statetype != A
triggerall = numhelper(1630) = 0
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DFx]
type = ChangeState
value = ifelse(command="DFx",1600,1610)
triggerall = command = "DFx" || command = "DFy"
triggerall = numhelper(1630) = 0
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===============================================================================
[State -1,DFz]
type = ChangeState
value = 1611
triggerall = command = "DFz"
triggerall = Statetype != A
triggerall = numhelper(1630) = 0
trigger1 = Ctrl = 1 || stateno = 100 && animelem = 4,>= 0
trigger2 = Stateno = 200 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger3 = Stateno = 205 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger4 = Stateno = 235 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger5 = Stateno = 400 && ((animelem = 3,>= 1 && animelem = 5,<= 0) || movecontact)
trigger6 = Stateno = 410 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger7 = Stateno = 430 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)
trigger8 = Stateno = 440 && ((animelem = 5,>= 1 && animelem = 7,<= 0) || movecontact)
trigger9 = stateno = 300 && movecontact
trigger10 = stateno = 310 && movecontact
trigger11 = Stateno = 215 && ((animelem = 4,>= 1 && animelem = 6,<= 0) || movecontact)

[State -1,DFz]
type = ChangeState
value = 1611
triggerall = command = "DFz"
triggerall = numhelper(1630) = 0
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1


;---------------------------------------------------------------------------
;Throw
[State -1]
type = ChangeState
value = 800
triggerall = command = "z" && (command = "holdfwd" || command = "holdback")
triggerall = statetype != A && command != "yb" && command != "holddown"
triggerall = p2bodydist x = [-8,8]
trigger1 = ctrl; || stateno = 100 && animelem = 4,>= 0
trigger1 = enemy,statetype != A && enemy,movetype != H && enemy,statetype != L
;---------------------------------------------------------------------------

[State -1]
type = varset
trigger1 = Stateno = 150 || stateno = 152
trigger1 = Time = 0
var(3) = 0

[State -1]
type = varset
triggerall = var(3) = 0
trigger1 = Stateno = 150 || stateno = 152
trigger1 = command = "yb" || command = "z"
var(3) = 1

[State -1]
type = varset
triggerall = var(3) = 0
trigger1 = Stateno = 150 || stateno = 152
trigger1 = command = "xa" || command = "c"
var(3) = 2


[State -1,]
type = changestate
value = ifelse(var(3)=1,325,385)
triggerall = var(3)
triggerall = statetype != A
triggerall = var(10) = 0
trigger1 = Stateno = 151 || stateno = 153
trigger1 =  Power >= 0
;
[State -1,]
type = changestate
value = ifelse(var(3)=1,325,385)
triggerall = var(3)
triggerall = statetype != A && var(10) = 1
trigger1 = Stateno = 151 || stateno = 153
trigger1 = var(11) = 1
;----------------------------------------------------------------------------

;---------------------------------------------------------------------------

[State -1]
type = null;ChangeState
value = 900
triggerall = command = "c" && (command = "holdfwd" || command = "holdback")
triggerall = statetype != A
triggerall = p2bodydist x = [-10,8]
trigger1 = ctrl || stateno = 100 && animelem = 4,>= 0
trigger1 = enemy,statetype != A && enemy,movetype != H

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------
[State -1, super jump ]
type = ChangeState
value = 123
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these
trigger2 = (stateno = 400) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher


[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 123 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State -3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 123
trigger1 = stateno = 50
x = -.2
;------------------------------------------------------

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl && Stateno != 195

;===========================================================================

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = ifelse((p2bodydist X = [-60,12]),205,200)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = ifelse((p2bodydist X = [-60,15]),215,210)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand hard Punch]
type = ChangeState
value=320+(-20*(p2bodydist x<45))
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 435 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
[State -1, Standing med Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 435 && movecontact

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 320 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
[State -1, Crouching med Punch]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 440 && movecontact
trigger3 = stateno = 445 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 445 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching med Kick]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 440 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 442
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 440 && movecontact
trigger3 = stateno = 435 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
;=========================================

;[State -1,Turn]
;type = Turn
;trigger1 = var(1) = 0
;trigger1 = command = "yb" || command = "z"
;trigger1 = StateNo = 50 || stateno = 56

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Jump Medium Punch]
type = ChangeState
value = 605
triggerall = command = "y" && command != "yb"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 605 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Jump med Kick]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 605 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 635 && movecontact
trigger4 = stateno = 605 && movecontact
trigger5 = stateno = 100000
;===============================================================================
