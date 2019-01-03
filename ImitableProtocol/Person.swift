//
//  Person.swift
//  ImitableProtocol
//
//  Created by Imthath M on 03/01/19.
//  No Copyright.
//

import Foundation

class Person: Imitable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}
