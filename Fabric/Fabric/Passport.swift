//
//  Passport.swift
//  Fabric
//
//  Created by Сергей Дятлов on 02.07.2024.
//

import Foundation

class Passport {
    
    let series: String
    let number: String
    let dateOfIssue: Date
    weak var person: Person?
    
    init(series: String, number: String, dateOfIssue: Date, person: Person?) {
        self.series = series
        self.number = number
        self.dateOfIssue = dateOfIssue
        self.person = person
        print("Passport \(series) \(number) init")
    }
    
    deinit {
        print("Passport \(series) \(number) deinit")
    }
}
