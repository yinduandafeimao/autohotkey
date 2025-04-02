#SingleInstance Force
persistent 
G := GUI('+MaxSize600x700 +MinSize100x200 +Resize') ; 创建 GUI
G.Show() ; 显示 GUI
G.marginX := 10 ; 设置边距
G.marginY := 10 ; 设置边距
G.buttonWidth := 80 ; 设置按钮宽度
G.buttonHeight := 30 ; 设置按钮高度
G.buttonMargin := 10 ; 设置按钮之间的间距
G.BackColor := "0x17f762" ; 设置背景颜色
G.SetFont('S10','KaiTi') ; 设置字体
G.AddButton('W80 H30', '点我').OnEvent('Click',but1)  ; 添加按钮
ChkBut1 :=G.AddCheckbox('W80 H30 X110 Y10 +Background8dafff', '选我')  ; 添加复选框
Gid :=G.Hwnd ; 获取 GUI 句柄
but1(*){ ; 按钮事件处理函数
    MsgBox('你点了我'  '.'  ChkBut1.Value) ; 显示消息框
    ChkBut1.Text := '我变了' ; 修改复选框文本
    WinClose(Gid) ; 关闭 GUI
}
