//
//  Person.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 05.07.2022.
//

struct Person {
    let name: String
    let infoAboutPerson: String
    let image: String
    
    static func getPerson() -> Person {
        Person(
            name: "Renat Ibragimov",
            infoAboutPerson: "String",
            image: "selfPhoto"
        )
    }
}
