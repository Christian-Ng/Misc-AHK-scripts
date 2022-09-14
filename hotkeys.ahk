I_Icon = C:\Program Files\AutoHotkey\Icons\hotkeys.ico
ICON [I_Icon]
if I_Icon <>
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%
; ==============================================================================
; Set Audio Default Source ============
^!NumpadDiv::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 2} ; _G533 HEADSET_
ControlClick,&Set Default
ControlClick,OK
return

^!NumpadMult::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 7} ; _EARBUD STEREO RIGHT_
ControlClick,&Set Default
ControlClick,OK
return

^!NumpadSub::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 3} ; _LOGI SPEAKERS_
ControlClick,&Set Default
ControlClick,OK
return

;==============================================================================
; Window Pinning ======================
^!P:: Winset, AlwaysOnTop, , A
; Window Minimizing ===================
^!Space:: WinMinimize, A

; Volume Control - Numpad =============
^!Numpad0::SoundSet,0
^!Numpad1::SoundSet,10
^!Numpad2::SoundSet,20
^!Numpad3::SoundSet,30
^!Numpad4::SoundSet,40
^!Numpad5::SoundSet,50
^!Numpad6::SoundSet,60
^!Numpad7::SoundSet,70
^!Numpad8::SoundSet,80
^!Numpad9::SoundSet,90
; Volume Control - Arrow Keys =========
^!Left::SoundSet,-2
^!Right::SoundSet,+2
^!Down::SoundSet,-5
^!Up::SoundSet,+5
