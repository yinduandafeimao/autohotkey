Persistent
#SingleInstance Force
f1::Reload ;重载脚本
f2::Suspend ;暂停脚本,只能暂停新的线程，无法暂停正在运行的线程
f3::Pause -1 ;暂停脚本，只能暂定正在运行的脚本线程
loop{
    MouseGetPos  &x, &y ;获取鼠标坐标
    ToolTip  "X:" x " Y:" y ;显示坐标
    Sleep 10
}

