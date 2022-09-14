; Shut down the script after 8 hours
SetTimer, ForceExitApp, 32400000 ; 28800000 8 hours (each hour is 3,600,000) 

I_Icon = C:\Program Files\AutoHotkey\Icons\kpVolControl.ico
ICON [I_Icon] 
if I_Icon <>
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

Numpad0::SoundSet, 0
Numpad2::SoundSet, 20
Numpad1::SoundSet, -5
Numpad3::SoundSet, +5

Numpad4::0
Numpad5::4
Numpad6::7

Numpad7::ManualExit()
Numpad8::Return
Numpad9::Return

NumpadMult::Control
NumpadSub::Alt
NumpadDiv::Tab

NumpadDel::Space

ForceExitApp:
SetTimer, ForceExitApp, Off
ExitApp

ManualExit()
{
    SoundPlay, *-1
    ExitApp
}