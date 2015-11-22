#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F2::Remaining()
F4::GTFO()

Remaining() {
	WinActivate
	BlockInput On
	SendInput, {Enter}
	Sleep, 20
	SendInput, {/}remaining
	SendInput, {Enter}
	BlockInput Off
	
	return
}

GTFO() {
	WinActivate
	BlockInput On
	SendInput, {Esc}
	WinGetPos,,, Width, Height, A
	X := (Width / 2)
	Y := Height * .44
	MouseClick, Left, X, Y, 1, 1
	Sleep, 20
	MouseClick, Left, X, Y, 1, 1
	BlockInput Off

	return
}
