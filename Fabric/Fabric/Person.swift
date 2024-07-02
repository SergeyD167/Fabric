//
//  Person.swift
//  Fabric
//
//  Created by Сергей Дятлов on 02.07.2024.
//

import Foundation

class Person {

    let firstName: String
    var lastName: String
    var age: Int
    var passport: Passport?
    var producedMaterials: [String: Int] = [:]
    
    init(firstName: String, lastName: String, age: Int, passport: Passport?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.passport = passport
        print("Person \(firstName) \(lastName) init")
    }
    
    deinit {
        print("Person \(firstName) \(lastName) deinit")
    }
}

