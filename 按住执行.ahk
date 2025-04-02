#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent
1::{
    loop{
        OutputDebug(A_Index) ;输出调试信息
        Sleep(500) 
        if !GetKeyState('1','P'){ ;判断是否松开1键
            OutputDebug('你松开了1键')
            break
        }
    }
}
