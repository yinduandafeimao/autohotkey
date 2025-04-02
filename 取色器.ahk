Persistent
#SingleInstance Force

; 暂停脚本
F1::Pause -1

; 退出应用程序
F2::ExitApp

; 设置定时器，每50毫秒调用一次GetColor函数
SetTimer GetColor, 50

; 获取鼠标位置的颜色并显示
GetColor() {
    ; 获取鼠标当前位置
    MouseGetPos(&X,&Y)
    
    ; 获取鼠标所在位置的颜色
    color := PixelGetColor(X, Y)
    
    ; 显示颜色值
    ToolTip "Color: " . color
}

