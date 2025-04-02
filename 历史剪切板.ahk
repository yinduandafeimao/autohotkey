#SingleInstance Force
OnClipboardChange saveClipHis ;剪贴板变化时保存历史
MsgBox '使用说明：`n该程序会在同目录下生成ClipHis.txt文件，记录剪贴板历史。'
ClipHis :=A_ScriptDir . '\ClipHis.txt' ;历史记录文件
FileAppend '',ClipHis ;创建文件
saveClipHis(DataType) {  ;保存历史记录
   if(FileGetSize(ClipHis) = "K")>30 { ;文件大于30KB时清空
      FileDelete ClipHis ;删除文件
   }
   if (DataType = 1) { ;剪贴板内容为文本时
      if(StrLen(A_Clipboard) < 1000) { ;内容小于1000字节时保存
         FileAppend A_Clipboard "`n", ClipHis ;保存剪贴板内容
      }
   }
}
   