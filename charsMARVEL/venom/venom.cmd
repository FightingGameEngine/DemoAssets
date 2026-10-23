
[Command]
name = "venonweb"
command = ~D, DB, B,x+a
time = 15

[Command]
name = "venonweb"
command = ~D, DF, F,x+a
time = 15


[Command]
name = "mordida1"
command =~D, DB, B,a
time = 15

[Command]
name = "mordida2"
command =~D, DB, B,b
time = 15

[Command]
name = "mordida3"
command = ~D, DB, B,c
time = 15

[Command]
name = "Death Bite"
command =~D, DB, B,a+b
time = 15

[Command]
name = "Death Bite"
command = ~D, DF, F,a+b
time = 15

[Command]
name = "defensatotal"
command = a+b
time = 1

[Command]
name = "comboair"
command = ~D, DF, F,a+c
time = 15

[Command]
name = "comboair"
command = ~D, DB, B,a+c
time = 15

[Command]
name = "web1"
command = ~D, DB,B,x
time = 10

[Command]
name = "web2"
command = ~D, DB,B,y
time = 10

[Command]
name = "web3"
command = ~D, DB,B,z
time = 15

[Command]
name = "Venom Rush1"
command = ~D,DF,F,a
time = 15

[Command]
name = "Venom Rush2"
command =~D,DF,F,b
time = 15


[Command]
name = "Venom Rush3"
command =~D,DF,F,c
time = 15



[Command]
name = "Venom Fang1"
command =~D, DF, F,x
time = 15


[Command]
name = "Venom Fang2"
command =~D, DF, F,y
time = 15


[Command]
name = "Venom Fang3"
command =~D, DF, F,z
time = 15


[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "FFa"
command = x+z


[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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
name = "holda"                
command = /a                   
time = 1
[Command]                       
name = "holdb"                  
command = /b                    
time = 1

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
name = "3kicks"
command = a+b+c
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1]
type = ChangeState
value = 6000
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = Time = 1

[State -1]
type = ChangeState
value = 6001
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = Time = 1

[State -1]
type = ChangeState
value = 4300
trigger1 = command = "FF"
trigger1 = stateno = (50)

[State -1]
type = ChangeState
value = 1300
triggerall = statetype!=A
triggerall = statetype= S
triggerall = command = "defensatotal"
triggerall = ctrl = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 130


[State -1]
type = ChangeState
value = 3800
triggerall = p2stateno!=5120
triggerall = p2stateno!=5110
triggerall = power>=1000
triggerall = command = "Death Bite"
triggerall = p2statetype!=A
triggerall = NumExplod(3703)=0
triggerall = NumExplod(3704)=0
triggerall = NumExplod(3705)=0
triggerall = NumHelper(100)=0
triggerall = NumHelper(101)=0
triggerall = NumExplod(102)=0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 710
triggerall = command = "3kicks"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3900
triggerall!=stateno= 240
triggerall = anim !=240
triggerall = power >= 1000
triggerall = p2statetype != A
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = NumExplod(3202)=0
triggerall = NumExplod(1026)=0
triggerall = command = "venonweb"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 860
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


[State -1, Kung Fu Throw]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 40
triggerall = power >=2000
triggerall = command = "comboair"
triggerall = statetype = S
trigger1 = ctrl
triggerall = stateno != 100




[State -1, Kung Fu Throw]
type = ChangeState
value = 4800
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 35
trigger2 = p2statetype = A
trigger2 = p2movetype != H

[State -1]
type = ChangeState
value = 2224
triggerall = PalNo = [7,12]
triggerall = p2statetype !=L
triggerall = command = "Venom Fang3"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3520
triggerall = PalNo = [1,6]
triggerall = p2statetype !=L
triggerall = command = "Venom Fang3"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3510
triggerall = PalNo = [1,6]
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "Venom Fang2"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 2223
triggerall = PalNo = [7,12]
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "Venom Fang2"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
triggerall = PalNo = [1,6]
value = 3500
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "Venom Fang1"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
triggerall = PalNo = [7,12]
value = 2222
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "Venom Fang1"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
triggerall = PalNo = [1,6]
value = 2222
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "mordida1"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
triggerall = PalNo = [1,6]
value = 2223
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "mordida2"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
triggerall = PalNo = [1,6]
value = 2224
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = command = "mordida3"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 4500
triggerall = PalNo = [1,6]
triggerall = p2statetype!=L
trigerall = stateno != 700
trigerall = stateno != 710
triggerall = statetype != S
triggerall = command = "Venom Fang1"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 4600
triggerall = PalNo = [1,6]
trigerall = stateno != 700
trigerall = stateno != 710
triggerall = statetype != S
triggerall = command = "Venom Fang2"
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 4700
triggerall = PalNo = [1,6]
trigerall = stateno != 700
trigerall = stateno != 710
triggerall = statetype != S
triggerall = command = "Venom Fang3"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 800
triggerall = p2statetype!=L
triggerall = statetype!= A
triggerall = command = "web1"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 1960
triggerall = p2statetype!=L
triggerall = statetype!= A
triggerall = command = "web2"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 1970
triggerall = p2statetype!=L
triggerall = statetype!= A
triggerall = command = "web3"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 3300
triggerall = PalNo = [1,6]
triggerall = command = "Venom Rush3"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 242
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = PalNo = [7,12]
triggerall = command = "Venom Rush3"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 242
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = PalNo = [7,12]
triggerall = command = "Venom Rush2"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 242
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = PalNo = [7,12]
triggerall = command = "Venom Rush1"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 3200
triggerall = PalNo = [1,6]
triggerall = NumHelper(1)= 0
triggerall = command = "Venom Rush2"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3000
triggerall = PalNo = [1,6]
triggerall = command = "Venom Rush1"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 5210
triggerall = canrecover = 1
triggerall = Var(9) = 1
triggerall = random < 999
triggerall = life > 0
trigger1 = time > 30
trigger1 = stateno = 5050

[State -1]
type = ChangeState
value = 5201
triggerall = canrecover = 1
triggerall = Var(9) = 1
triggerall = random < 999
triggerall = life > 0
trigger1 = stateno = 5100
trigger1 = Pos Y < -20
persistent = 0


[State -1]
type = ChangeState
value = 130
triggerall = Var(39) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype != C
trigger1 = ctrl
trigger2 = stateno = 52

[State -1]
type = ChangeState
value = 131
triggerall = Var(39) = 1
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype = C
trigger1 = ctrl
trigger2 = stateno = 52


[State -1]
type = ChangeState
value = 132
triggerall = Var(39) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 5210

[State -1]
type = ChangeState
value = 152
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1]
type = ChangeState
value = 150
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 152
trigger2 = stateno = 153

[State -1]
type = ChangeState
value = 150
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155

[State -1]
type = ChangeState
value = 152
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155






;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = (stateno = 200) && time > 12
trigger3 = (stateno = 230) && time > 12
;---------------------------------------------------------------------------
;Stand Strong Punch


[State -1, Stand Strong Punch]
type = ChangeState
value = 212
triggerall = PalNo = [7,12]
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = PalNo = [1,6]
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = PalNo = [1,6]
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = PalNo = [7,12]
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = PalNo = [1,6]
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = (stateno = 230) && time > 10


[State -1, Stand Light Kick]
type = ChangeState
value = 232
triggerall = PalNo = [7,12]
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = (stateno = 230) && time > 10




;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック

[State -1, Standing Strong Kick]
type = ChangeState
value =240
triggerall = PalNo = [1,6]
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Standing Strong Kick]
type = ChangeState
value =252
triggerall = PalNo = [7,12]
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = PalNo = [1,6]
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Strong Kick]
type = ChangeState
value = 202
triggerall = PalNo = [7,12]
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------




;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = PalNo = [1,6]
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = PalNo = [7,12]
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 6) || (movecontact && time > 3)




;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)



[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 10

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = PalNo = [1,6]
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a


[State -1, Jump Strong Punch]
type = ChangeState
value = 612
triggerall = var(48)=0
triggerall = PalNo = [7,12]
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = PalNo = [1,6]
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a


[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = PalNo = [7,12]
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a



;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = PalNo = [1,6]
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl



[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = PalNo = [7,12]
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl



;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = PalNo = [1,6]
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Strong Kick]
type = ChangeState
value = 642
triggerall = PalNo = [7,12]
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

