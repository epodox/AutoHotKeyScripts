#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


!u:: 
Send, username{Enter}
return


!p:: 
Send, password{Enter}
return


!c:: ; circuit basic commands
Send, sh int desc{Enter}
Sleep, 1000
Send, sh ip int bri{Enter}
Sleep, 1000
Send, sh ip bgp sum{Enter}
return


!r:: ; Alt-R to run script for PAM Networking
GoSub !u 
Sleep, 3000
GoSub !p
Sleep, 3000
Send, 0{Enter}
Sleep, 3000
Send, yes{Enter}
Sleep, 3000
GoSub !p
Sleep, 12000
GoSub !c
return