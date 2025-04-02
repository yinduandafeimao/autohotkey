Hotkey('q','off') ; 禁用q键
Hotkey('q','on') ; 启用q键

r::{
    hotkey('q','on') ; 启用q键
    Sleep(3000) ; 等待3秒
    hotkey('q','off') ; 禁用q键
} 
q::{
    OutputDebug('111') ; 输出调试信息
}