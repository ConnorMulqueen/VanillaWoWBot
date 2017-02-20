#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Pixel
attackCount = 0
Loop {
		Send, {Tab down}
		Send, {Tab up}
		PixelGetColor, color, 255, 76
		;MsgBox %color%
		if (color = "0x00C600" && stuck < 2) { ;Enemy Found
			stuck += 1
			PixelGetColor, range, 60, 612
			While(range = "0x1A1AFF") {
				Random, rand, 19, 34
				Send, {w down}
				Sleep, rand
				Send, {w up}
				PixelGetColor, range, 60, 612
			}
			PixelGetColor, color2, 205, 76
			Send, {3 down}
			Send, {3 up}
			attacksSent = 0
			while(color2 = "0x00A100") {
				Random, rand, 300, 1000
				Send, {2 down}
				Sleep, rand
				Send, {2 up}
				attacksSent +=1
				if (attacksSent > 25) {
					Random, rand, 110, 190
					Send, {w down}
					Sleep, rand
					Send, {w up}
					attacksSent = 0
				}
				PixelGetColor, color2, 205, 76
			}
			MouseMove, 408, 364
			PixelGetColor, mana, 97, 86
			if(mana != "0xA50000") {
			Sleep, 50
			Send, {7 down}
			Sleep, 89
			Send, {7 up}
			Sleep, 18000
			}
			PixelGetColor, health, 123, 76
			if (health != "0x00C600") {
			Sleep, 50
			Send, {8 down}
			Sleep, 89
			Send, {8 up}
			Sleep, 18000
			}
			Send, +{RButton}
		} else { ;Continue looking for enemy
			stuck = 0
			Random, rand, 100, 217
			Send, {w down}
			Sleep, rand
			Send, {w up}
			Random, leftRight, 1 , 2
			Random, rand, 50, 112
			if(leftRight == 1) {
				Send, {a down}
				Sleep, rand
				Send, {a up}
			} else {
				Send, {d down}
				Sleep, rand
				Send, {d up}
			}
		Random, rand, 100, 213
		Send, {w down}
		Sleep, rand
		Send, {w up}
		}
}

Escape::
ExitApp
Return

^!z::  ; Control+Alt+Z hotkey.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%.
return
