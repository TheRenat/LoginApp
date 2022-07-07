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

struct Person {
    let name: String
    let infoAboutPerson: String
    let image: String
    let storyOfLife: String
    
    static func getPerson() -> Person {
        Person(
            name: "Renat Ibragimov",
            infoAboutPerson:
            """
            Имя: Ренат
            Фамилия: Ибрагимов
            Возраст: 30 лет
            
            Образование: Высшее
            
            Текущее место работы: АО "Агентство ВТН"
            Должность: Key Account Manager
            
            Предыдущие места работы:
            - ЗАО "Контроль качества"
            - АО "KNAUF Rus"
            """,
            image: "",
            storyOfLife:
                """
                Родился в небольшом городе Ленинградской области в 1992 году.
                В возрасте семи лет родители решили отдать меня на плавание, где
                и прошли все мое детство и юность. В 19 лет сходил в армию, после
                чего поступил в ИТМО на факультет "Технологического менеджмента",
                в последствии окончил его. На данный момент работаю в сфере логистики.
                
                Хобби - велоспорт, компьютерные игры.
                """
        )
    }
}
