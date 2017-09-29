//: Playground - noun: a place where people can play

import UIKit

// swift 2.x
//for var i = 0; i < 10; i++ {
//    print(i)
//}

// swift 3.x
for i in 0..<10 {
    print(i)
}

//特殊 如果下标不需要使用可以使用_来代替，提高效率
for _ in 0..<10 {
    print("Hello, world")
}

/*
 1:while后面的括号可以省略
 2:while也不会非0/nil即真
 */
var a = 10
while a > 0 {
    print(a)
    a -= 1
}

/*
 dowhile要写成repeat while
 */
repeat {
    a += 1
    print(a)
}while a < 10


















