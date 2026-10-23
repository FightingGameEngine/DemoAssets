Credit to skhsato123 for creating Rocket, with thanks to Mammalman for the ai & update

---

Thank you so much for downloading.

This file is the edit patch includes rebuilt AI system for Rocket Raccoon.

To entry the character in AI mode, 
firstly, please put the Folder "M_AI" and "rocket_M.def" into 
the original character folder.

then enter the filename below in [Characters] section in Mugen's "Select.def"

rocket/rocket_M.def



To keep AI activate all time, please open Confing.st in M_AI folder and change the setting.
There's also other options that give him more advantages you can choose.

---------------------------------------------------------------------------------------------
* WHAT'S CHANGED

- added recovery rolls
- added pushblock
- added 1 charging special move
- running animation is changed
- Handgun Hyper now needs 2000 power to use
- In viper beam special, now rocket jumps up before shooting to cover more wider range.
- now mines can be set more distant points corresponded by pushing different buttons.
- Now Proton cannon is the hyper move and converted to shoot below from air. There are invinclble
   frames in jumpng move.
- Hyper viper beam now has wider range than before.
- cannot call Groot more than one at the same time anymore
- rapid pulser cannon is converted to aim upper-air. If enemy get hit by near the wall, he moves to 
   bounce-of-wall action and you can get a chance to start combo.
- Plasma Launcher (D,F,C) doesn't shoot missiles anymore. Also vector of energy balls are 
   changed to go up higher and cover to mid range to be effective for longer time.
- Stand hard punch is the launcher of air combo now.
- Crouch Hard Kick can trip enemy now.
- revised damage balance
- and other minor changes


---------------------------------------------------------------------------------------------
* New Command List

;-| Hyper Motions |------------------------------------------------------
[command]
name = "6000"
command = D,DF,F,a+b

[command]
name = "3344"
command = D,DB,B,a+b

[command]
name = "3000"
command = D,DB,B,x+y

[command]
name = "3100"
command = D,DF,F,x+y


;-| Special Motions |------------------------------------------------------
[command]
name = "10599"
command = D,F,x

[command]
name = "1364"
command = D,DF,F,y

[command]
name = "1040"
command = D,DF,F,z

[command]
name = "1120"
command = D,B,x

[command]
name = "1450"
command = D,DB,B,y


[command]
name = "1060"
command = D,DF,F,a

[command]
name = "1710"
command = D,DF,F,b

[command]
name = "4200"
command = D,DF,F,c

[command]
name = "1012"
command = D,DB,B,a

[command]
name = "1013"
command = D,DB,B,b

[command]
name = "1014"
command = D,DB,B,c
---------------------------------------------------------------------------------------------