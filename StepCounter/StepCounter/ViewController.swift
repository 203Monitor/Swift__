//
//  ViewController.swift
//  StepCounter
//
//  Created by 武国斌 on 2017/9/29.
//  Copyright © 2017年 武国斌. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    let stepCounterOld : CMStepCounter = CMStepCounter()
    let stepCounterNew : CMPedometer = CMPedometer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let start = NSDate(timeIntervalSinceNow: -24 * 60 * 60)
        let end = NSDate(timeIntervalSinceNow: 0)
        
        //判断计步器是否可以使用
        guard CMStepCounter.isStepCountingAvailable() else {
            print("StepCounting Not Available")
            return
        }
        //开始计步
        stepCounterOld.queryStepCountStarting(from: start as Date, to: end as Date, to: OperationQueue.main) { (count, nil) in
            print("old walk counts is \(String(describing: count))")
        }
        
        //判断计步器是否可以使用
        guard CMPedometer.isStepCountingAvailable() else {
            print("StepCounting Not Available")
            return
        }
        //开始计步
        stepCounterNew.queryPedometerData(from: start as Date, to: end as Date) { (data, error) in
            guard error == nil else {
                print("stepCounter inner error")
                return
            }
            print("new walk distance is\(String(describing: data?.distance))")
            print("new walk counts is\(String(describing: data?.numberOfSteps))")
        }
        
        stepCounterNew.startUpdates(from: end as Date) { (data, error) in
            guard error == nil else {
                print("stepCounter inner error")
                return
            }
            print("had walked count \(String(describing: data?.numberOfSteps))")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

