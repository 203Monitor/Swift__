//: Playground - noun: a place where people can play

//1 导入框架
//#import <UIKit/UIKit.h>
import UIKit

//2 定义标识符
// int a = 20;
/*常量*/let a : Int = 20
/*变量*/var b : Double = 20

//3 语句结束 不需要分号

//4 打印内容
print(a)

//5 创建对象
//UIView *view = [[UIView alloc] init];
let view : UIView = UIView()
view.backgroundColor = UIColor.red
view.frame = CGRect.init(x: 0, y: 0, width: 0, height: 0)
view.isHidden = true
view.isHidden = false

// 类型推导，根据数据类型推导对象的类型 (按住option鼠标放在对象上可查看对象类型)
let a1 : Int = 20
let a2 = 20
let view2 = UIButton()

let a3 = Int(12.5)
let a4 = Double(12)
