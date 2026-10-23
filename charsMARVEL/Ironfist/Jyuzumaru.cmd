; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================

;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| AI起動用 |-----------------------------------------------------------------
[Command]
name = "AI1"
command = F, B, B, F, F, B, B, F, F, B, B, F, F, B
time = 1

[Command]
name = "AI2"
command = U, D, D, U, U, D, D, U, U, D, D, U, U, D
time = 1

[Command]
name = "AI3"
command = D, U, U, D, D, U, U, D, D, U, U, D, D, U
time = 1

[Command]
name = "AI4"
command = B, F, F, B, B, F, F, B, B, F, F, B, B, F
time = 1

[Command]
name = "AI5"
command = a, x, x, a, a, x, x, a, a, x, x, a, a, x
time = 1

[Command]
name = "AI6"
command = b, y, y, b, b, y, y, b, b, y, y, b, b, y
time = 1

[Command]
name = "AI7"
command = c, z, z, c, c, z, z, c, c, z, z, c, c, z
time = 1

[Command]
name = "AI8"
command = x, a, a, x, x, a, a, x, x, a, a, x, x, a
time = 1

[Command]
name = "AI9"
command = y, b, b, y, y, b, b, y, y, b, b, y, y, b
time = 1

[Command]
name = "AI10"
command = z, c, c, z, z, c, c, z, z, c, c, z, z, c
time = 1

[Command]
name = "AI11"
command = F, B, F, B, F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI12"
command = U, D, U, D, U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI13"
command = D, U, D, U, D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI14"
command = B, F, B, F, B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI15"
command = a, x, a, x, a, x, a, x, a, x, a, x, a, x
time = 1

[Command]
name = "AI16"
command = b, y, b, y, b, y, b, y, b, y, b, y, b, y
time = 1

[Command]
name = "AI17"
command = c, z, c, z, c, z, c, z, c, z, c, z, c, z
time = 1

[Command]
name = "AI18"
command = x, a, x, a, x, a, x, a, x, a, x, a, x, a
time = 1

[Command]
name = "AI19"
command = y, b, y, b, y, b, y, b, y, b, y, b, y, b
time = 1

[Command]
name = "AI20"
command = z, c, z, c, z, c, z, c, z, c, z, c, z, c
time = 1

[Command]
name = "AI21"
command = F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI22"
command = U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI23"
command = D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI24"
command = B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI25"
command = D, U, B, F, D, U, B, F, D
time = 1

;------------------------------------------------------------------------------
;-| LV3超必殺技 |--------------------------------------------------------------

[Command]
name = "神風"
command = ~D, DB, B, a+b
time = 35

[Command]
name = "EXライクルテクンペ"
command = ~D, DB, B, x+y
time = 35

[Command]
name = "ライクルホシ"
command = ~D, DF, F, a+b
time = 35

[Command]
name = "hyper"
command = ~D, DF, F, x+y
time = 35

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;[Command]
;name = "ライクルテクンペ"
;command = ~D, DF, F, D, DF, F, a
;time = 25

;[Command]
;name = "ライクルテクンペ"
;command = ~D, DF, F, D, DF, F, b
;time = 25





;------------------------------------------------------------------------------
;-| EX必殺技 |-------------------------------------------------------------------

;[Command]
;name = "EXエキシ"
;command = ~F, D, DF, a+b

;[Command]
;name = "EXオキムンペ"
;command = ~F, D, DF, x+y

;[Command]
;name = "EXリムセ"
;command = ~D, DF, F, x+y

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "弱エキシ"
command = ~D, DF, F, a
time = 25
[Command]
name = "強エキシ"
command = ~D, DF, F, b
time = 25
[Command]
name = "強エキシ"
command = ~D, DF, F, c
time = 25

[Command]
name = "弱エキシ2"
command = ~D, DB, B, a
time = 25
[Command]
name = "強エキシ2"
command = ~D, DB, B, b
time = 25
[Command]
name = "強エキシ2"
command = ~D, DB, B, c
time = 25



[Command]
name = "弱オキムンペ"
command = ~D, DB, B, x
time = 25
[Command]
name = "強オキムンペ"
command = ~D, DB, B, y
time = 25
[Command]
name = "強オキムンペ"
command = ~D, DB, B, z
time = 25



[Command]
name = "弱リムセ"
command = ~D, DF, F, x
time = 25
[Command]
name = "強リムセ"
command = ~D, DF, F, y
time = 25
[Command]
name = "強リムセ"
command = ~D, DF, F, z
time = 25


;[Command]
;name = "jump"    
;command = D, $U
;time = 12

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

[Command]
name = "DU"
command = D, U
time = 20

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

[Command]
name = "holda"
command = /$x
time = 1

[Command]
name = "holdb"
command = /$y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$y
time = 1

;------------------------------------------------------------------------------
;-| AI Helper |----------------------------------------------------------------
[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■AI(CPU)はどう動くのか
;MUGENの標準CPUは相手に近づき適当に攻撃を繰り出すだけなので、AIスイッチによる制御が必要なこともあります。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;==============================================================================
;-----------------------------------------------------------------------------
;先行入力
;-----------------------------------------------------------------------------
;先行入力受付時間
[State 1000, 0]
type = varset
triggerall = var(32) = 0
trigger1 = var(31) > 0
var(32) = 12

;先行入力受付時間カウント
[State 1000, 0]
type = varadd
trigger1 = var(32) > 0
var(32) = -1

[State 1000, 0]
type = varset
triggerall = var(31) != 0
trigger1 = var(32) = 0
var(31) = 0

;---------------------------------------------------------------------------
;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "神風"
;var(31) = 4000

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "EXライクルテクンペ"
;var(31) = 3050

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "ライクルテクンペ"
;var(31) = 3000

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "ライクルホシ"
;var(31) = 3100

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "EXエキシ"
;var(31) = 1150

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "EXオキムンペ"
;var(31) = 1250

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "EXリムセ"
;var(31) = 1050

;[State -1, VarSet]
;type = varset
;triggerall = var(31) = 0 && var(32) = 0
;trigger1 = command = "弱エキシ"
;var(31) = 1100

[State -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強エキシ"
var(31) = 1110

[State -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱オキムンペ"
var(31) = 1200

[State -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強オキムンペ"
var(31) = 1210

[State -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱リムセ"
var(31) = 1000

[State -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強リムセ"
var(31) = 1010

;==============================================================================
[State -1, 神風]
type = ChangeState
value = 4000
triggerall = command = "神風"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
[State -1, EXライクルテクンペ]
type = ChangeState
value = 3050
triggerall = command = "EXライクルテクンペ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
;[State -1, ライクルテクンペ]
;type = ChangeState
;value = 3000
;triggerall = var(59) != 1
;triggerall = command = "ライクルテクンペ" || var(31) = 3000
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact = [1,6]
;trigger3 = stateno = 205 && movecontact = [1,6]
;trigger4 = stateno = 215 && movecontact = [1,6]
;trigger5 = stateno = 230 && movecontact = [1,6]
;trigger6 = stateno = 235 && movecontact = [1,6]
;trigger7 = stateno = 400 && movecontact = [1,6]
;trigger8 = stateno = 410 && movecontact = [1,6]
;trigger9 = stateno = 430 && movecontact = [1,6]
;trigger10 = stateno = 440 && movecontact = [1,6]
;trigger11 = stateno = 1100 || stateno = 1110 || stateno = 1150
;trigger11 = movecontact = [1,6]
;trigger12 = stateno = 1200 || stateno = 1210 || stateno = 1250
;trigger12 = movecontact = [1,6]

;------------------------------------------------------------------------------
[State -1, ライクルホシ]
type = ChangeState
value = 3100
triggerall = command = "ライクルホシ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ライクルホシ]
type = ChangeState
value = 1050
triggerall = command = "hyper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
;[State -1, EXエキシ]
;type = ChangeState
;value = 1150
;triggerall = var(59) != 1
;triggerall = command = "EXエキシ" || var(31) = 1150
;triggerall = power >= 500
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact = [1,6]
;trigger3 = stateno = 205 && movecontact = [1,6]
;trigger4 = stateno = 215 && movecontact = [1,6]
;trigger5 = stateno = 230 && movecontact = [1,6]
;trigger6 = stateno = 400 && movecontact = [1,6]
;trigger7 = stateno = 410 && movecontact = [1,6]
;trigger8 = stateno = 430 && movecontact = [1,6]
;trigger9 = stateno = 440 && movecontact = [1,6]

;------------------------------------------------------------------------------
;[State -1, EXオキムンペ]
;type = ChangeState
;value = 1250
;triggerall = var(59) != 1
;triggerall = command = "EXオキムンペ" || var(31) = 1250
;triggerall = power >= 500
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact = [1,6]
;trigger3 = stateno = 205 && movecontact = [1,6]
;trigger4 = stateno = 215 && movecontact = [1,6]
;trigger5 = stateno = 230 && movecontact = [1,6]
;trigger6 = stateno = 400 && movecontact = [1,6]
;trigger7 = stateno = 410 && movecontact = [1,6]
;trigger8 = stateno = 430 && movecontact = [1,6]
;trigger9 = stateno = 440 && movecontact = [1,6]

;------------------------------------------------------------------------------
;[State -1, EXリムセ]
;type = ChangeState
;value = 1050
;triggerall = var(59) != 1
;triggerall = command = "EXリムセ" || var(31) = 1050
;triggerall = power >= 500
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact = [1,6]
;trigger3 = stateno = 205 && movecontact = [1,6]
;trigger4 = stateno = 215 && movecontact = [1,6]
;trigger5 = stateno = 230 && movecontact = [1,6]
;trigger6 = stateno = 400 && movecontact = [1,6]
;trigger7 = stateno = 410 && movecontact = [1,6]
;trigger8 = stateno = 430 && movecontact = [1,6]
;trigger9 = stateno = 440 && movecontact = [1,6]

;==============================================================================
[State -1, 弱エキシ]
type = ChangeState
value = 1100
triggerall = command = "弱エキシ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 弱エキシ]
type = ChangeState
value = 1300
triggerall = command = "弱エキシ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 強エキシ]
type = ChangeState
value = 1110
triggerall = command = "強エキシ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 強エキシ]
type = ChangeState
value = 1310
triggerall = command = "強エキシ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
[State -1, 弱オキムンペ]
type = ChangeState
value = 1200
triggerall = command = "弱オキムンペ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 強オキムンペ]
type = ChangeState
value = 1210
triggerall = command = "強オキムンペ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
[State -1, 弱リムセ]
type = ChangeState
value = 1000
triggerall = command = "弱リムセ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 強リムセ]
type = ChangeState
value = 1010
triggerall = command = "強リムセ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
;受身
[State -1, UKEMI]
type = ChangeState
value = 5200
triggerall = var(59) != 1
triggerall = command = "x" || command = "y"
triggerall = alive = 1
trigger1 = StateNo = 5050 || StateNo = 5071
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20

;------------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "z"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------
;EXセービングアタック
[State -1, EX Focus Attack]
type = ChangeState
value = 710
triggerall = var(59) != 1
triggerall = helper(40000),var(3) = 1
triggerall = command = "y" && command = "b"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno = [200,499]
trigger2 = stateno = [1000,2999]

;---------------------------------------------------------------------------
;セービングアタック
[State -1, Focus Attack]
type = ChangeState
value = 710
triggerall = var(59) != 1
triggerall = helper(40000),var(3) = 1
triggerall = command = "y" && command = "b"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != [700,703]

;------------------------------------------------------------------------------




;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
triggerall = command = "BB"
triggerall = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------



;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100


;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact
trigger4 = stateno = 100

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact 

;------------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact

;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger4 = stateno = 100000







  
;Super Jump
[State -1, super jump ]
type = ChangeState
value = 9996
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these 
;trigger2 = (stateno = yyy) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher

[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 9996 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 9996
trigger1 = stateno = 50
x = -.2
