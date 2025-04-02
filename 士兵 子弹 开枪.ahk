#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent

;瑞恩 开枪 子弹
;手枪
msgbox '开始'
gun:={}
gun.bullet := 5
gun.fire := gun_fire
gun.fill := gun_fill 

;怪物
monster:={}
monster.HP := 5
monster.xixue := monster_xixue
monster_xixue(this){
	if this.HP<=0{
		this.HP += 10
		MsgBox('怪物复活大法')
	    MsgBox('怪物吸收血液' '剩余血量' this.HP '`n')
		return
	}else{		
		MsgBox('吸什么血,血满的时候不要吸')
	}
	
}

gun_fire(this){
	if this.bullet>0 && monster.HP>0{
		this.bullet -= 1
		monster.HP -= 1
		MsgBox('开火成功' '剩余子弹数' this.bullet '`n')
		MsgBox('怪物血量剩余' monster.HP '`n')
	}else{
		MsgBox('开火失败' '剩余子弹数' this.bullet '`n')
		MsgBox('怪物已死亡' monster.HP '`n')
	}
}
gun_fill(this){
	this.bullet +=5
	if this.bullet <=10{
		MsgBox('装填子弹成功' '剩余子弹数' this.bullet '`n')
	}else{
		this.bullet := 10
		MsgBox('子弹已满' '剩余子弹数' this.bullet '`n')

	}
}

;瑞恩
rain:={}
rain.gun := gun
rain.fire:= rain_fire
rain.fill:= rain_fill
rain_fire(this){
	this.gun.fire()
}
rain_fill(this){
	this.gun.fill()
}
OutputDebug('....')
1::{
	rain.fire()
}
2::{
	rain.fill()
}
3::{
	monster.xixue()
}
