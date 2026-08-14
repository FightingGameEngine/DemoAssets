;-| 超必殺技 |--------------------------------------------------------
;特大エネルギー弾
[Command]
name = "energy2"
command = ~D, B, D, F, y
time = 30

[Command]
name = "energy2"
command = ~D, B, D, F, x
time = 30

;超爆発破
[Command]
name = "superbomb"
command = ~D, F, D, F, b
time = 30

[Command]
name = "superbomb"
command = ~D, F, D, F, a
time = 30

;スローイングブラスター
[Command]
name = "energy"
command = ~D, B, F, y
time = 30

[Command]
name = "energy"
command = ~D, B, F, x
time = 30

;イレイザーキャノン
[Command]
name = "eraser"
command = ~D, F, D, F, y
time = 30

[Command]
name = "eraser"
command = ~D, F, D, F, x
time = 30

;ブラスターシェル
[Command]
name = "shell"
command = ~B, F, y
time = 30

[Command]
name = "shell"
command = ~B, F, x
time = 30

;ストロングコンビネーション
[Command]
name = "strong"
command = ~D, B, F, b
time = 30

;バッシュストーム
[Command]
name = "bash"
command = ~D, B, F, a
time = 30

;-| 必殺技 |------------------------------------------------------
;サマーソルト
[Command]
name = "somer"
command = B, b
time = 20

[Command]
name = "somer"
command = B, a
time = 20

;ジャンピングヘッド
[Command]
name = "head"
command = ~D, U, b
time = 30

[Command]
name = "head"
command = ~D, F, U, b
time = 30

[Command]
name = "head"
command = ~D, U, F, b
time = 30

[Command]
name = "head"
command = ~D, U, a
time = 30

[Command]
name = "head"
command = ~D, F, U, a
time = 30

[Command]
name = "head"
command = ~D, U, F, a
time = 30

[Command]
name = "upper"
command = F, x
time = 30

;エネルギーボム
[Command]
name = "bomb"
command = ~D, U, y
time = 30

[Command]
name = "bomb"
command = ~D, F, U, y
time = 30

[Command]
name = "bomb"
command = ~D, U, F, y
time = 30

[Command]
name = "bomb"
command = ~D, U, x
time = 30

[Command]
name = "bomb"
command = ~D, F, U, x
time = 30

[Command]
name = "bomb"
command = ~D, U, F, x
time = 30

;強連続エネルギー弾
[Command]
name = "ki2"
command = ~B, D, DF, F, y
time = 20

;連続エネルギー弾
[Command]
name = "ki"
command = ~B, D, DF, F, x
time = 20

;エネルギー弾
[Command]
name = "hadouken"
command = ~D, DF, F, y
time = 15

[Command]
name = "hadouken"
command = ~D, DF, F, x
time = 15

;バリア
[Command]
name = "Jigoku"
command = ~D, DB, B, b
time = 15

[Command]
name = "Jigoku"
command = ~D, DB, B, a
time = 15

;バリア
[Command]
name = "bbb"
command = ~D, DB, B, y
time = 15

[Command]
name = "bbb"
command = ~D, DB, B, x
time = 15

;バリア
[Command]
name = "26_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "26_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "longjump"
command = ~D, $U
time = 11

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
; 特大エネルギー弾
[State -1]
type = ChangeState
value = 2050
triggerall = numhelper(2055) = 0
triggerall = command = "energy2"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
;---------------------------------------------------------------------------
; 超爆発破
[State -1]
type = ChangeState
value = 2100
triggerall = numhelper(2100) = 0
triggerall = command = "superbomb"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
;---------------------------------------------------------------------------
; スローイングブラスター
[State -1]
type = ChangeState
value = 2200
triggerall = command = "energy"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
;---------------------------------------------------------------------------
; イレイザーキャノン
[State -1]
type = ChangeState
value = 2150
triggerall = command = "eraser"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1000) && time > 25
trigger12 = (stateno = 1050) && (stateno = 1070) && time > 55
;---------------------------------------------------------------------------
; 強連続エネルギー弾
[State -1]
type = ChangeState
value = 1070
triggerall = command = "ki2"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1000) && time > 25
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; 連続エネルギー弾
[State -1]
type = ChangeState
value = 1050
triggerall = command = "ki"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1000) && time > 25
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; ブラスターシェル
[State -1]
type = ChangeState
value = 2000
triggerall = command = "shell"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1000) && time > 25
trigger12 = (stateno = 1050) && (stateno = 1070) && time > 55
;---------------------------------------------------------------------------
; ストロングコンビネーション
[State -1]
type = ChangeState
value = 3050
triggerall = command = "strong"
triggerall = power >= 2000
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
;---------------------------------------------------------------------------
; バッシュストーム
[State -1]
type = ChangeState
value = 3000
triggerall = command = "bash"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
;---------------------------------------------------------------------------
; 空中エネルギー弾
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hadouken"
triggerall = power >= 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 9
trigger3 = (stateno = 610) && time > 9
trigger4 = (stateno = 640) && time > 10
trigger5 = stateno = 600 && movecontact
trigger6 = stateno = 610 && movecontact
trigger7 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; エネルギーボム
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Jigoku"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; エネルギーボム
[State -1]
type = ChangeState
value = 1150
triggerall = numhelper(1160) = 0
triggerall = command = "bomb"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; エネルギー弾
[State -1]
type = ChangeState
value = 1000
triggerall = command = "hadouken"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; バリア
[State -1]
type = ChangeState
value = 1100
triggerall = numhelper(1110) = 0
triggerall = command = "bbb"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; 空中投げ
[State -1]
Type = ChangeState
Value = 1800
TriggerAll = Command = "26_a" || Command = "26_b"
TriggerAll = Statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 9
trigger3 = (stateno = 610) && time > 9
trigger4 = (stateno = 640) && time > 10
trigger5 = stateno = 600 && movecontact
trigger6 = stateno = 610 && movecontact
trigger7 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
; 投げ
[State -1]
Type = ChangeState
Value = 1600
TriggerAll = Statetype = S
TriggerAll = Command = "26_a" || Command = "26_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; 投げ・追加攻撃・相手を投げる
[State -1,]
type = ChangeState
value = 804
triggerall = stateno = 802
trigger1 = command = "x" 
trigger1 = Time > 0
trigger2 = command = "y" 
trigger2 = Time > 0
;---------------------------------------------------------------------------
; ジャンピングヘッド
[State -1,]
type = ChangeState
value = 1400
triggerall = Statetype = S
triggerall = command = "head"
trigger1 = ctrl
trigger2 = stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 240 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 430 && movecontact = 1
trigger10 = stateno = 440 && movecontact = 1
trigger11 = (stateno = 1050) && (stateno = 1070) && time > 55
trigger12 = (stateno = 215) && time > 12
trigger13 = stateno = 215 && movecontact && time > 15
trigger14 = (stateno = 205) && time > 13
trigger15 = stateno = 205 && movecontact && time > 5
;---------------------------------------------------------------------------
; ヘビーアッパー
[State -1,]
type = ChangeState
value = 920
triggerall = Statetype = S
triggerall = command = "upper"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 400 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 430 && movecontact = 1
trigger9 = stateno = 440 && movecontact = 1
trigger10 = (stateno = 905) && time > 35
trigger11 = (stateno = 910) && time > 15
trigger12 = (stateno = 915) && time > 29
trigger13 = stateno = 205 && movecontact = 1
trigger14 = stateno = 215 && movecontact = 1

; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 305
triggerall = command = "recovery" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

; 投げ
[State -1,]
type = ChangeState
value = 1300
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
; トリプルシューター
[State -1,]
type = ChangeState
value = 915
triggerall = Statetype = S
triggerall = stateno = 101
trigger1 = command = "hold_b"
;---------------------------------------------------------------------------
; クレッセントキック
[State -1,]
type = ChangeState
value = 910
triggerall = Statetype = S
triggerall = stateno = 101
trigger1 = command = "hold_a"
;---------------------------------------------------------------------------
; ショルダータックル
[State -1,]
type = ChangeState
value = 905
triggerall = Statetype = S
;TriggerAll = P2BodyDist X > 30
triggerall = stateno = 101
trigger1 = command = "hold_y"
;---------------------------------------------------------------------------
; ダッシュラリアット
[State -1,]
type = ChangeState
value = 900
triggerall = Statetype = S
;TriggerAll = P2BodyDist X > 30
triggerall = stateno = 101
trigger1 = command = "hold_x"
;---------------------------------------------------------------------------
; 気力溜め
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;接近立ち弱パンチ
[State -1,]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && movecontact
trigger3 = time > 6
trigger4 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && movecontact
trigger3 = time > 9
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;接近立ち強パンチ
[State -1,]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 900 && movecontact
trigger7 = stateno = 230 && movecontact
trigger7 = time > 6

; 強キック (近距離)
[State -1,]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 900 && movecontact
trigger7 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 900 && movecontact
trigger7 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 =  stateno = 400
trigger3 =  time > 6
trigger4 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 200 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 430 && movecontact
trigger3 = time > 4
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 900 && movecontact


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 230 && movecontact
;trigger8 = stateno = 252 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 215 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
trigger4 = stateno = 610 && movecontact = 1
;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; 空中バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 112
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

; 高速移動 (後方)
[State -1]
type = ChangeState
value = 360
triggerall = var(22) = 0
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

; 高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = var(22) = 0
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a"
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"
