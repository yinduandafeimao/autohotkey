GB := GUI('+MaxSize600x700 +MinSize100x200 +Resize') ; 创建 GUI
btn:=GB.AddButton('W45', '置顶') ; 创建按钮
btn.OnEvent('Click', Settop) ; 添加按钮
GB.Show('Center') ; 显示 GUI

Settop(*){
  WinSetAlwaysOnTop(-1,GB.Hwnd) ; 置顶窗口
  static flag := false
     flag := !flag
     if flag{ 
      btn.Text := '取消置顶' 
     }else{
      btn.Text := '置顶'
     }
}