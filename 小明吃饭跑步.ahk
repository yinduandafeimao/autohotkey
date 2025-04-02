#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent
person:={}
person.name:="小明"
person.weight:=70
person.report:=person_report
person.run:=person_run
person.eat:=person_eat
person_run(this) {
	person.weight-=0.5
    OutputDebug("小明跑步了！")
    this.report()
}
person_eat(this) {
	person.weight+=1
    OutputDebug("小明吃饭了！")
    this.report()
}
person_report(this) {
	OutputDebug( "我叫" person.name "，体重" person.weight "斤" '`n')
}

1::{
    person.run()
}
2::{
    person.eat()
}