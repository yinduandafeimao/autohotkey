G := GUI('+MaxSize600x700 +MinSize100x200 +Resize') ; 创建 GUI
G.Show('Center') ; 显示 GUI
HK1 := G.AddHotkey('') ; 添加热键
G.AddButton('', '应用').OnEvent('Click', fn) ; 添加按钮
fn(*){
    Hotkey(HK1.Value,opt,"on") ; 注册热键
    OutputDebug('热键已注册')
}

opt(*){
   OutputDebug('这是一个回调函数' '`n') ; 输出调试信息
}  