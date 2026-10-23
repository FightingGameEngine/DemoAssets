; Ultron's CMD file
;-| AI activativators |--------------------------------------------------------

[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
name = "ai4"
command = a,b,x,y
time = 1

[Command]
name = "ai5"
command = U,D,F,B
time = 1

[Command]
name = "ai6"
command = D,F,U,B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai9"
command = F,F,F
time = 1

[Command]
name = "ai10"
command = B,U,U
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F
time = 1

[Command]
name = "ai13"
command = x,y,a,b
time = 1

;------------------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1


[Command]
name = "recovery_roll";Required (do not remove)
command = /$F
time = 1


[Command]
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "guardpush"
command = z+y
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
;---------Hypers-------------------------------------------------------
;Hyper Ultron Crusher
[Command]
name = "h_crusher"
command=~D, DB, B, x+y
time=30


[Command]
name = "h_crusher"
command=~D, DB, B, y+z
time=30

[Command]
name = "h_crusher"
command=~D, DB, B, x+z
time=30
;-----Encephalo Ray
[Command]
name = "enc_ray"
command = ~D, DF, F, x+y
time=15

[Command]
name = "enc_ray"
command = ~D, DF, F, x+z
time=15

[Command]
name = "enc_ray"
command = ~D, DF, F, y+z
time=15

[Command]
name = "h_fury"
command = ~D, DF, F, a+b
time=15
[Command]
name = "h_fury"
command = ~D, DF, F, a+c
time=15

[Command]
name = "h_fury"
command = ~D, DF, F, c+b
time=15


[Command]
name = "h_punch"
command = ~D, DF, F, z+c
time=15

;Vehicle
[Command]
name = "h_vehic1"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "h_vehic1"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "h_vehic1"
command = ~D, DB, B, a+c
time = 15


;Fly
[Command]
name = "flying"
command = ~D, DB, B, x+a
time = 15

[Command]
name = "flying"
command = ~D, DB, B, a+x
time = 15


;-| Specials |-----------------------------------------------------------
;Metalic Dive Stomp
[Command]
name = "d_stomp"
command = D, DB, B, a
time = 15

[Command]
name = "d_stomp"
command = D, DB, B, b
time = 15

[Command]
name = "d_stomp"
command = D, DB, B, c
time = 15

;Stomp
[Command]
name = "stomp"
command = D, DB, B, a
time = 15

[Command]
name = "stomp1"
command = D, DB, B, b
time = 15

[Command]
name = "stomp2"
command = D, DB, B, c
time = 15

;----------------------------
;----------------------------
;Paralazing Beam
[Command]
name = "p_beam1"
command = ~D, DF, F, a
time = 15

[Command]
name = "p_beam2"
command = ~D, DF, F, b
time = 15

[Command]
name = "p_beam3"
command = ~D, DF, F, c
time = 15
;---------------------------
; Absorbing Power Beam
[Command]
name = "a_beam"
command = D, DB, B, a
time = 15

[Command]
name = "a_beam"
command = D, DB, B,  b
time = 15

[Command]
name = "a_beam"
command = D, DB, B,  c
time = 15
;----------------------------
;Counter
[Command]
name = "counter1"
command = ~D, DF, F, a+b
time = 35
[Command]
name = "counter1"
command = ~D, DF, F, b+c
time = 35
[Command]
name = "counter1"
command = ~D, DF, F, a+c
time = 35

;----------------------
;Ultron Crusher
[Command]
name="cbfx"
command=~D, DB, B, x
time=15
[Command]
name="cbfy"
command=~D, DB, B, y
time=15
[Command]
name="cbfz"
command=~D, DB, B, z
time=15
[Command]
name="cbfx"
command=~D, DB, B, x
time=15
[Command]
name="cbfy"
command=~D, DB, B, y
time=15
[Command]
name="cbfz"
command=~D, DB, B, z
time=15

[Command]
name="bfx"
command=~D, DB, B, x
time=15
[Command]
name="bfy"
command=~D, DB, B, y
time=15
[Command]
name="bfz"
command=~D, DB, B, z
time=15
[Command]
name="bfx"
command=~D, DB, B, x
time=15
[Command]
name="bfy"
command=~D, DB, B, y
time=15
[Command]
name="bfz"
command=~D, DB, B, z
time=15
;----------------------
;Teleport
[Command]
name = "teleport1"
command = ~D, DB, B, a
time = 10

[Command]
name = "teleport2"
command = ~D, DB, B, b
time = 10

[Command]
name = "teleport3"
command = ~D, DB, B, c
time = 10

[Command]
name = "teleport4"
command = ~D, DB, B, x
time = 10

[Command]
name = "teleport5"
command = ~D, DB, B, y
time = 10

[Command]
name = "teleport6"
command = ~D, DB, B, z
time = 10

;----------------------



[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z
;---------------------------
[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z
;--------------------------

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;======================================================================
;User Input Attacks
;----------------------------------------------------------------------
; Encephalo ray
;---------------------------------------------------------------------------
[State -1, Hyper3]
type = ChangeState
value = 3000
triggerall = command = "enc_ray"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact
trigger4 = stateno = 410 && MoveContact
trigger5 = stateno = 440 && MoveContact
trigger6 = stateno = 450 && MoveContact

;Ultron Crusher
[State -1, H_crusher]
Type = Changestate
value = 3750
triggerall = command = "h_crusher"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 220 && MoveContact
trigger4 = stateno = 240 && MoveContact
trigger5 = stateno = 250 && MoveContact


;Ultron Vehicle
[State -1, H_crusher]
Type = Changestate
value = 3400
triggerall = command = "h_vehic1"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 220 && MoveContact
trigger4 = stateno = 240 && MoveContact
trigger5 = stateno = 250 && MoveContact

;Ultron Crusher
[State -1, H_crusher]
Type = Changestate
value = 3300
triggerall = command = "h_fury"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 220 && MoveContact
trigger4 = stateno = 240 && MoveContact
trigger5 = stateno = 250 && MoveContact


; Combo Adamantium
[State -1, Hyper3]
type = ChangeState
value = 4500
triggerall = var(8) = 0
triggerall = command = "h_punch"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 250 && MoveContact

; Combo Gold
[State -1, Hyper3]
type = ChangeState
value = 4600
triggerall = var(8)!= 0
triggerall = command = "h_punch"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 250 && MoveContact



;Flymode
[State -1, Fly]
type = ChangeState
value = 9000
triggerall = power!= 3000
triggerall = command = "flying"
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, Fly2]
type = ChangeState
value = 9000
triggerall = power!= 3000
triggerall = command = "flying"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;-----------------------------------------------------------------
;----------------------------------------
; Paralising Beam
[State -1, P_Beam]
type = ChangeState
value = 700
triggerall = var(8)!= 0
triggerall= p2stateno!=71670
triggerall= p2stateno!=7671
triggerall = command = "anti_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 705
triggerall = var(8)!= 0
triggerall= p2stateno!=71670
triggerall= p2stateno!=7671
triggerall = command = "anti_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 706
triggerall = var(8)!= 0
triggerall= p2stateno!=71670
triggerall= p2stateno!=7671
triggerall = command = "anti_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact

;-----------------------------------------------------------------

;Absorbing Beam
[State -1, P_Beam]
type = ChangeState
value = 1710
triggerall = var(8)= 0
triggerall= p2stateno!=17671
triggerall= p2stateno!=17672
triggerall= p2stateno!=17673
triggerall = command = "anti_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 1750
triggerall = var(8)= 0
triggerall= p2stateno!=17671
triggerall= p2stateno!=17672
triggerall= p2stateno!=17673
triggerall = command = "anti_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 1780
triggerall = var(8)= 0
triggerall= p2stateno!=17671
triggerall= p2stateno!=17672
triggerall= p2stateno!=17673
triggerall = command = "anti_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact

;-----------------------------------------------------

;----------------------------------------
; Weapons
[State -1, P_Beam]
type = ChangeState
value = 1000
triggerall = command = "p_beam1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 1010
triggerall = command = "p_beam2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
[State -1, P_Beam]
type = ChangeState
value = 1015
triggerall = command = "p_beam3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact

;-----------------------------------------------------------
; vision
[State -1, crusher]
Type = Changestate
value = 720
triggerall = prevstateno != 720
triggerall = prevstateno != 725
triggerall = prevstateno != 730
triggerall = command = "qcf_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact
trigger5 = stateno = 420 && MoveContact
trigger6 = stateno = 250 && MoveContact
[State -1, crusher]
Type = Changestate
value = 725
triggerall = prevstateno != 720
triggerall = prevstateno != 725
triggerall = prevstateno != 730
triggerall = command = "qcf_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact
trigger5 = stateno = 420 && MoveContact
trigger6 = stateno = 250 && MoveContact
[State -1, crusher]
Type = Changestate
value = 730
triggerall = prevstateno != 720
triggerall = prevstateno != 725
triggerall = prevstateno != 730
triggerall = command = "qcf_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact
trigger5 = stateno = 420 && MoveContact
trigger6 = stateno = 250 && MoveContact

;-----------------------------------------------------
;Ultron Crusher
[State -1, crusher]
Type = Changestate
value = 750
triggerall = var(8)= 0
triggerall =(command="cbfx" || command="cbfy" || command="cbfz") || (command="bfx" || command="bfy" || command="bfz")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 220 && MoveContact
trigger4 = stateno = 240 && MoveContact
trigger5 = stateno = 250 && MoveContact

;-----------------------------------------------------
; Stomp Dive
[State -1, stomp air]
Type = Changestate
value = 770
triggerall = command = "stomp2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact
trigger7 = stateno = 650 && MoveContact
; Stomp Dive 2
[State -1, stomp air]
Type = Changestate
value = 775
triggerall = command = "stomp1"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact
trigger7 = stateno = 650 && MoveContact
; Stomp Dive 1
[State -1, stomp air]
Type = Changestate
value = 777
triggerall = command = "stomp"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact
trigger7 = stateno = 650 && MoveContact
;--------------------------------------------
; Speed+Stomp 1
[State -1]
type = ChangeState
value = 1200
;triggerall = var(8)!= 0
triggerall = statetype = S
triggerall = command = "teleport1"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
[State -1]
type = ChangeState
value = 1210
triggerall = statetype = S
triggerall = command = "teleport2"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
[State -1]
type = ChangeState
value = 1220
triggerall = statetype = S
triggerall = command = "teleport3"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
;-------------------------------------------
; Telehit Gold
[State -1]
type = ChangeState
value = 1230
triggerall = var(8)!= 0
triggerall = prevstateno != 1230 ||  prevstateno != 1235 ||  prevstateno != 1240
triggerall = statetype = S
triggerall = command = "teleport4"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
[State -1]
type = ChangeState
value = 1235
triggerall = var(8)!= 0
triggerall = prevstateno != 1230 ||  prevstateno != 1235 ||  prevstateno != 1240
triggerall = statetype = S
triggerall = command = "teleport5"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
[State -1]
type = ChangeState
value = 1240
triggerall = var(8)!= 0
triggerall = prevstateno != 1230 ||  prevstateno != 1235 ||  prevstateno != 1240
triggerall = statetype = S
triggerall = command = "teleport6"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact


;---------------------------------------------------------------------------
;Running Kick
[State -1]
type = ChangeState
value = 1400
triggerall = var(8)!=0
triggerall = command = "c"
trigger1 = Stateno = 100
trigger1 = ctrl = 1

;
;;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value =8300
trigger1 = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 8200
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;Dash Forward (Air)
[State -1, Dash Fwd Air]
type = ChangeState
value = 107
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 107
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "BB"
trigger2 = command = "3P"

;Dash Back Air
[State -1, Run Back Air]
type = ChangeState
value = 108
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 108
trigger1 = command = "BB"
trigger2 = command = "3P"


;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 11045
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 420 &&  movecontact
trigger3 = command = "holdup" && Var(3) != 1
trigger3 = stateno = 251 &&  movecontact
;trigger2 = movecontact = 1

;Super Jump 2
[State -1, Super Jump2]
type = ChangeState
value = 11045
trigger1 = command = "3K"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
;Throw
[State -1, Throw 1]
type = ChangeState
value = 850
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Throw
[State -1, Throw 1]
type = ChangeState
value = 780
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact && var(8)!=0

;Stand Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Stand Strong Kick (near)
[State -1]
type = ChangeState
value = 251
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact

;Stand Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 430 && MoveContact

;Crouch Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 430 && MoveContact
trigger4 = stateno = 410 && MoveContact
trigger5 = stateno = 440 && MoveContact

;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact && var(8)!=0

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 430 && MoveContact

;Crouch Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 430 && MoveContact
trigger4 = stateno = 410 && MoveContact
trigger5 = stateno = 440 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact

;Jump Strong Punch A
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = prevstateno != 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact && var(8)!=0
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact && var(8)!=0
trigger5 = stateno = 640 && MoveContact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact && var(8)!=0

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact && var(8)!=0
trigger4 = stateno = 630 && MoveContact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact && var(8)!=0
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact && var(8)!=0
trigger6 = stateno = 640 && MoveContact

;======================================================================
;===========================================================================
;---------------------------------------------------------------------------
; AI <Stuff>
;---------------------------------------------------------------------------

;------------------------------------
;AI Guardia (parado)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = var(7) = 1
trigger1 = p2bodydist X = [-150,150]
trigger1 = Ctrl = 1
value = 130


;------------------------------------
;AI Guardia (par-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;------------------------------------
;AI Guardia (Agachado) auto
;------------------------------------
[State -1]
type = ChangeState
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = var(7) = 1
trigger1 = p2bodydist X = [-150,140]
trigger1 = Ctrl = 1
value = 131

;------------------------------------
;AI Guardia (aga-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = StateNo = 152
value = 150

;------------------------------------
;AI Guardia (aereo) auto
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = var(7) = 1
trigger1 = p2bodydist X = [-150,140]
trigger1 = Ctrl = 1
value = 132

;------------------------------------
;AI Guardia (aer-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 152

;------------------------------------
;AI Guardia (aer-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 150



;------------------------------------
;AI Air Recovery
;------------------------------------
[State -1]
type = ChangeState
value = 5210
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y < -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;------------------------------------
;AI Air Recovery (suelo)
;------------------------------------
[State -1]
type = ChangeState
value = 5200
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y >= -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;- | AI Dashes | ----------------------------------------------------------

[State -1]
type = ChangeState
value = 102
triggerall = var(8)!=0
triggerall = var(7)
triggerall = var(28) = [0,1]
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl

[State -1]
type = ChangeState
value = 20
triggerall = var(7)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 29
trigger1 = ctrl

[State -1]
type = ChangeState
value = 430
triggerall = var(7)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 29
trigger1 = ctrl

[State -1]
type = ChangeState
value = 210
triggerall = var(7)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 29
trigger1 = ctrl

[State -1]
type = ChangeState
value = 600
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 29
trigger1 = ctrl

[State -1]
type = ChangeState
value = 195
triggerall = var(7)
triggerall = var(28) = 1
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A)
trigger1 = P2BodyDist X = [100,115]
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = var(7) = 1
trigger1 = prevstateno=150
trigger1 = Ctrl = 1
value = 8200

[State -1]
type = ChangeState
value = 4500
triggerall = var(8)=0
triggerall = var(7)
triggerall= power > 2999
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X = [20,220]
trigger1 = ctrl

[State -1]
type = ChangeState
value = 4600
triggerall = var(8)!=0
triggerall = var(7)
triggerall= power > 2999
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X = [20,220]
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1000
triggerall = var(8)=0
triggerall = var(7)
triggerall = var(28) = [2,3]
triggerall= !NumHelper(2024)
triggerall= !NumHelper(2025)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl

[State -1]
type = ChangeState
value = 750
triggerall = var(8)=0
triggerall = var(7)
triggerall = var(28) = [2,3]
triggerall=  prevstateno!=750
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl

[State -1]
type = ChangeState
value = 720
triggerall = var(8)=0
triggerall = var(7)
triggerall = var(28) = [2,3]
;triggerall= !NumHelper(1102)
triggerall=  prevstateno!=720
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X = [60,100]
trigger2=  prevstateno =220 && movecontact
trigger1 = ctrl


[State -1]
type = ChangeState
value = 1780
triggerall = var(8)=0
triggerall = var(7)
triggerall = var(28) = [0,3]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
triggerall=  prevstateno!=1780
triggerall = p2stateno !=  17673
trigger1 = life <= 300
trigger1 = ctrl


[State -1]
type = ChangeState
value = 706
triggerall = var(8)!=0
triggerall = var(7)
triggerall = var(28) = [0,3]
triggerall=  prevstateno!=706
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
triggerall = p2stateno !=  71670
triggerall = p2stateno !=  7671
trigger1 = P2BodyDist X = [20,220]
trigger1 = ctrl
