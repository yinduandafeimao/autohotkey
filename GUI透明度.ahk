#SingleInstance Force
Persistent
G := GUI('+MaxSize600x700 +MinSize100x200 +Resize')
G.AddButton('W80 H30', '点我')
G.BackColor := "0x17f762"
WinSetTransColor("0x17f762", G)
G.Show()

