Persistent
#SingleInstance Force
CoordMode "Mouse","Screen"
SetTimer fun_a,50 
fun_a(){
     MouseGetPos  &x, &y ;获取鼠标坐标
     color:=PixelGetColor(x,y)
     ToolTip  "X:" x " Y:" y  '`n' color  ;显示坐标   
}
