//
//  Animal.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class Animal: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func prettyAnimalName() -> String {
        return "Animal's Name: " + self.name
    }
}

class cats: Animal {
    var age: Int
    
    init(age: Int, name: String){
        self.age = age
        super.init(name: name)
    }
    
    override func prettyAnimalName() -> String{
        return " My cat \(name) is \(age) year(s) old!"
    }
    
    
}

