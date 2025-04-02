
#Requires AutoHotkey =1.1.37.02 ;
#warn 
#SingleInstance force 
SetStoreCapsLockMode 0 ; 保持大小写锁定状态

SendKey(Key) 
{
VK := GetKeyVK(Key),SC := GetKeySC(Key) 
DllCall("keybd_event", "UChar", VK, "UChar", SC, "UInt", 0, "UPtr", 0) 
Sleep 1
DllCall("keybd_event", "UChar", VK, "UChar", SC, "UInt", 2, "UPtr", 0)
}
Return

~x::
if(WinActive("ahk_class 地下城与勇士") or WinActive("ahk_exe DNF.exe"))  ; 游戏窗口
while GetKeyState("x", "P") ; 按住x键 循环发送x键 
{
Sleep 1
Sendkey("x")
Sleep 1
}
Return
~$F9::ExitApp