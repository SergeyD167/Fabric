//
//  Fabric.swift
//  Fabric
//
//  Created by Сергей Дятлов on 02.07.2024.
//

import Foundation

class Fabric {
    
    var employees: [Person] = []
    
    func hireEmployee(firstName: String, lastName: String, age: Int, series: String, number: String, dateOfIssue: Date) -> Person {
        let newEmployee = Person(firstName: firstName, lastName: lastName, age: age, passport: nil)
        let employeePassport = Passport(series: series, number: number, dateOfIssue: dateOfIssue, person: newEmployee)
        newEmployee.passport = employeePassport
        employees.append(newEmployee)
        print("\(firstName) \(lastName) hired")
        return newEmployee
    }
    
    func fireEmployee(employee: Person) {
        if let index = employees.firstIndex(where: { $0 === employee }) {
            employees.remove(at: index)
            print("\(employee.firstName) \(employee.lastName) fired")
        }
    }
    
    func produceMaterial(employee: Person, material: String, quantity: Int) {
        if employees.contains(where: { $0 === employee }) {
            employee.producedMaterials[material, default: 0] += quantity
            print("\(employee.firstName) \(employee.lastName) produced \(quantity) \(material)")
        } else {
            print("Employee \(employee.firstName) \(employee.lastName) not found in the fabric")
        }
    }
}
