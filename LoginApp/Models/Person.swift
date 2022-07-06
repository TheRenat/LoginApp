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
            infoAboutPerson:
            """
            Имя: Ренат
            Фамилия: Ибрагимов
            Возраст: 30 лет
            
            Текущее место работы: АО "Агентство ВТН"
            Должность: Импорт/экспорт специалист
            
            Предыдущие места работы:
            - ЗАО "Контроль качества"
            - АО "KNAUF Rus"
            """,
            image: ""
        )
    }
}
