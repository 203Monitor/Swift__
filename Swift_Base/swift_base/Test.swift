//
//  Base.swift
//  swift_base
//
//  Created by 武国斌 on 2017/7/28.
//  Copyright © 2017年 武国斌. All rights reserved.
//

import Foundation

class Test {
    func excu() {
        print("hello world");
        
        var name = "Yuri";
        print("hey," + name);
        
        var task = "first set task";
        task = "second set task";
        print(task);
        
        let love = "i love ";
        let juice = "orange juice";
        print(love + juice + "!");
        
        let myString = "10";
        let myNumber = 10;
        print(myString);
        print(myNumber);
        
        var myIntNumber = 4;
        var myDoubleNumber = 4.0;
        myIntNumber = 3;
        myDoubleNumber = 3.0;
        print(myIntNumber);
        print(myDoubleNumber);
        
        let term1 = 18;
        let term2 = 3;
        let result = term1 * term2;
        print(result);
        
        var myStringDeclaration : String = "string";
        var myIntegerDeclaration : Int = 0;
        var myDoubleDeclaration : Double = 0.1;
        print(myStringDeclaration)
        print(myIntegerDeclaration)
        print(myDoubleDeclaration)
        
        let output = "hello world";
        print(output, terminator: " | ");
        print(output);
        
    }
}
