//
//  File.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "Renat", password: "Password", person: Person.getPerson())
    }
}
