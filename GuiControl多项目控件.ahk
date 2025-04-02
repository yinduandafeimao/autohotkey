#Include GBCfuntion.ahk
#Include ini.ahk
G := Gui('+MinSize355x400 +MaxSize355x400 +Resize -MaximizeBox +MinimizeBox SysMenu')
G.SetFont('S9', "MicroSoft YaHei UI")
GBC := G.AddComboBox('XP+10 YP+30', GBCArr) ;添加下拉框
G.AddButton('W45', "保存").OnEvent('Click', Save)
G.AddButton('W45', "加载").OnEvent('Click', Load)
G.AddButton('W45', "删除").OnEvent('Click', Delete)
G.Show("Center")



