//
//  main.swift
//  Open House 2015
//
//  Created by Jonathan Lace on 10/3/15.
//  Copyright © 2015 shp. All rights reserved.
//

import Foundation

var inputStr: String
var inputInt: Int

print("Welcome to Seton Hall Prep Open House 2015!\nPlease enter your name to continue.")

inputStr = inputString()

print("Welcome, " + inputStr)

print("Please enter your age:")

inputInt = inputInteger()


if inputInt > 18 && inputInt <= 25 {
    
    print("I see you're probably out of college. 🍻\n")

} else if inputInt <= 62 && inputInt >= 25 {
    
    print("I see you're hard at work. 😁\n")
    
} else if inputInt <= 75 && inputInt >= 62 {
    
    print("I see you're probably enjoying retirement. 😎\n")
    
}

print("Which department would you like to know more about?")
print("1-Theology\n2-English\n3-History")

if inputInteger() == 1 {
    print("Theology is the queen of the sciences.")
}

