#SingleInstance Force
;id := WinExist("A")
;windowsname := WinGetActiveTitle(id)
1::{
    if A_PriorHotkey == "1" and A_TimeSincePriorHotkey < 1000
    {
        if WinActive("ahk_id" 66744){
        WinHide "ahk_id" 66744
        }Else{
        WinShow "ahk_id" 66744
        WinActivate("ahk_id" 66744)
        }
    }   
}