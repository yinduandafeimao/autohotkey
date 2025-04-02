try {
#Requires AutoHotkey v2.0
#Include C:\Program Files\AutoHotkey\v2\Lib\OCR.ahk
CoordMode "Mouse", "Screen"
Persistent
startX := 0, startY := 0, endX := 0, endY := 0, isSelecting := false


; 鼠标左键按下时记录起始坐标
~LButton:: {
    global startX, startY, endX, endY, isSelecting
    if (!isSelecting) {
        MouseGetPos(&startX, &startY) ; 获取鼠标坐标
        ToolTip("X:" startX " Y:" startY) ; 显示坐标
        isSelecting := true
        
    }
    return
}

; 鼠标左键释放时记录结束坐标并更新选择框
~LButton Up:: {
    global startX, startY, endX, endY, isSelecting
    if (isSelecting) {
        MouseGetPos(&endX, &endY) ; 获取鼠标坐标
        ToolTip("X:" endX " Y:" endY) ; 显示坐标
        isSelecting := false
        UpdateSelectionBox()
    }
    return
}

; 更新选择框
UpdateSelectionBox() {
    global startX, startY, endX, endY
    width := Abs(endX - startX)
    height := Abs(endY - startY)
    x := Min(startX, endX)
    y := Min(startY, endY)

    ; 确保宽度和高度为正数
    if (width <= 0 || height <= 0) {
        return
    }

    ; 更新选择框 GUI
    selectionGui := Gui("+LastFound +AlwaysOnTop +ToolWindow -Caption") ; 创建选择框 GUI
    selectionGui.BackColor := "ff0000" ; 设置选择框颜色为蓝色
    WinSetTransColor("ff0000", selectionGui)
    selectionGui.SetFont("s1") ; 设置极小的字体大小来实现细边框
    selectionGui.Add("Text", "x0 y0 w" width " h" height " Border") ; 添加带边框的文本控件
    selectionGui.Show("x" x " y" y " w" width " h" height " NoActivate")
    Sleep 1000
    selectionGui.Destroy() ; 销毁选择框
    Sleep 1000
    OCRSelectedArea()
}
OCRSelectedArea() {
    ; 计算选中区域的坐标和大小
    global startX, startY, endX, endY
rect := {
    x: Min(startX, endX),
    y: Min(startY, endY),
    w: Abs(endX - startX),
    h: Abs(endY - startY)
}
try {

    ; 调用 OCR 识别
    result := OCR.FromRect(rect)
    if (result) {
        ToolTip("识别结果: " result.Text)
        result.Highlight(result.FindString) ; 高亮显示结果
        MsgBox(result.Text)
    } else {
        ToolTip("未识别到文本")
    }
}
}
}
; 隐藏工具提示
;~LButton:: ToolTip("")
