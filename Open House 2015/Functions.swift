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

func welcomeMessage() {
    
    var inputStr: String
    var inputInt: Int
    
    print("Welcome to Seton Hall Prep Open House 2015!\n\nPlease enter your name to continue:\n")
    
    inputStr = inputString()
    
    print("\nWelcome, " + inputStr)
    
    print("\nPlease enter your age:\n")
    
    inputInt = inputInteger()
    
    
    if inputInt > 0 && inputInt < 18 {
        
        print("\nI hope you're studying hard in school.")
        
    } else if inputInt >= 18 && inputInt <= 22 {
        
        print("\nI see you're probably recently out of college. 🍻\n")
        
    } else if inputInt <= 62 && inputInt >= 22 {
        
        print("\nI see you're probably in your career. 😁\n")
        
    } else if inputInt <= 75 && inputInt >= 62 {
        
        print("\nI see you're probably enjoying retirement. 😎\n")
        
    }
    
    print("Which department would you like to know more about?\n")
    print("1-Theology\n\n2-English\n\n3-History\n\n4-Science\n\n5-Foreign Language\n\n6-Mathematics\n\n7-Physical Education\n\n")
    print("Enter the number of the department you have chosen:\n")
    
    switch inputInteger() {
        
    case 1:
        sleep(2)
        print("\nTheology is the philosophical reflection on the meaning of human experience and the meaning of the Christian tradition.\n")
        sleep(2)
        print("\nIts faculty members are:\n\nJoseph Alexander (chairman)\n\nRalph Dellanno\n\nJim Incardona\n\nKevin McNulty\n\nJanet Kenworthy\n\nJonathan Lace\n\nRobert Dooley\n\nMsgr. Robert Harahan\n\nSharon Rondinella\n\nVincent McMahon\n\nWalter McMahon\n\nWilliam Ward\n\nFr. Jim White\n\nJohn Egan\n\n")
        welcomeMessage()
        
    case 2:
        sleep(2)
        print("\nThe English department teaches students the principles of literary criticism.\n\n")
        welcomeMessage()
        
    default:
        print("\nPlease enter a valid selection.")
     
    }
}
