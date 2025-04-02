;flag全局变量、static局部的静态变量，可只运行一次。
;#HotIf 执行不同的if条件。

;某个按键按下，执行两种不同的操作，切换。
flag := 0
0::{ ;简洁写法
global flag
if(flag =1)
outputDebug('1')
else
outputDebug('2')
flag := !flag

}

;#HotIf执行不同语句，好处是根据不同按键条件，同一个按键执行不同操作。与不同窗口下F1执行不同操作类似。
#HotIf (flag = 1)
0::{ ;简洁写法
global flag
outputDebug('1')
flag := !flag
}

#HotIf (flag = 0)
0::{ ;简洁写法
global flag
outputDebug('2')
flag := !flag
}

;#SetTimer，热键作为自动执行某个操作的开关，如一直点击鼠标左键。
1:: { ;自动反复执行某个程序
static flag := 0 ;静态变量,仅运行一次
static i:= 0
fn(){
outputDebug(i++)
}
flag := !flag
if(flag)
SetTimer(fn,3)
else
SetTimer(fn,0)
}
;应用场景
;1、如大写热键按下，大写状态，热键可执行不同操作。或自定义窗口按钮，设计激活热键的热键。
;2、动态执行某个内容时，热键作为开关。
