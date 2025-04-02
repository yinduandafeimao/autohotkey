#SingleInstance Force

Enter::{
    if WinExist('记事本'){ ;判断是否打开记事本
        MsgBox '已经打开记事本' 
    } else {
        Hotkey "Enter","off" ;关闭Enter热键
        Send '{Enter}' ;模拟按下Enter键
        Hotkey "Enter",'on' ;打开Enter热键
    }
}


