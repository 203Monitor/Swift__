//: Playground - noun: a place where people can play

import Foundation

/* OC
if () {
    
}
*/
/*swift中
1：if 后的括号可以省略
2：判断语句不再是非0/nil即真，必须有明确的真假
*/
let a = 10
if a > 0 {
    print("真")
} else {
    print("假")
}

if (a > 0) {
    print("真")
} else {
    print("假")
}

// else if 用法与if一致
let score = 92
if score < 0 || score > 100 {
    print("不可能")
} else if score < 60 {
    print("不及格")
} else if score < 80 {
    print("及格")
} else if score < 90 {
    print("良好")
} else if score <= 100 {
    print("优秀")
}

// 三目运算符
let m = 20
let n = 30
let result = m > n ? m : n

/*  guard
 swift2.0中添加 有guard必有else
 return break continue throw
 只能在函数中使用
 */
let age: Int = 20
let takeIDCard: Bool = true
let takeMoney: Bool = false

func online (age : Int) {
    guard age >= 18 else {
        print("go home")
        return
    }
    guard takeIDCard else {
        print("go home takeIDCard")
        return
    }
    guard takeMoney else {
        print("go home takeMoney")
        return
    }
    print("left online")
}

online(age: age)

// switch
let sex = 0
/* 基本用法
 1:switch后面的小括号可以省略
 2:case语句结束后break可以省略
 */
switch sex {
case 0:
    print("male")
default:
    print("female")
}
/* 补充
 1:如果需要产生case穿透，可以在case后跟上 fallthrough
 2:case后面可以判断多个条件
 */
switch sex {
case 0, 1:
    print("common")
default:
    print("同志")
}

/* 特殊
 1:swift中switch可以判断浮点型
 2:swift中switch可以判断字符串
 3:swift中switch可以判断区间
 */
let pi = 3.14
switch pi {
case 3.14:
    print("PI")
default:
    print("not PI")
}

let operation = "plus"
switch operation {
case "plus":
    print(m+n)
case "minus":
    print(m-n)
default:
    print("no operation")
}

/*
 开区间 0..<10  0~9
 闭区间 0...10  0~10
 */
switch score {
case 90...100:
    print("优秀")
case 80..<90:
    print("良好")
case 60..<80:
    print("及格")
case 0..<60:
    print("不及格")
default:
    print("不及格")
}


