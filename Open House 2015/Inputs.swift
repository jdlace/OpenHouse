//
//  Inputs.swift
//
//
//  Created by Jonathan Lace on 10/3/15.
//  Copyright © 2015 All rights reserved.
//

import Foundation


func inputString() -> String {
    
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    
    return NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
}



func inputInteger() -> Int {
    
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let intData = (NSString(data: inputData, encoding:NSUTF8StringEncoding))
    
    return ((intData)?.integerValue)!
}