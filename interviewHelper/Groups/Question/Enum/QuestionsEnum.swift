//
//  QuestionsEnum.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 5.04.23.
//

import Foundation

/*
 case eigt = "Сохранение данных (CoreData, Realm, UserDefault, etc.)"
 case nine = "Запросы и работа с данными которые получаем с сервера (URLSession, Alamofire, Codable)"
 */


enum QuestionsEnum: String, CaseIterable {
    
    case one = "Жизненный цикл ViewController'a"
    case two = "ООП"
    case three = "Разница между класом и структом"
    case four = "Протоколы"
    case five = "Способы передачи данных"
    case six = "Storyboard или xib"
    case seven = "AutoLayout"
    case eigt = "Сохранение данных (CoreData)"
    case nine = "(URLSession, Alamofire, Codable)"
    case ten = "Замыкания (closures)"
    case eleven = "Optionals"
    case twelve = "Extensions"
    case thirteen = "Generics"
    case fourteen = "ARC"
    case fiveteen = "Многопоточность"
    case sixteen = "weak, unowned, private, fileprivate"
    case seventeen = "Разница между frame и bounds"
    case eighteen = "Cocoapods (SwiftPacketManager, carthage)"
    case nineteen = "Git"
    
    var answer: String{
        switch self {
            
        case .one:
            return "https://habr.com/ru/articles/654517/"
        case .two:
            return "https://swiftbook.ru/post/tutorials/tutorial-obektno-orientirovannoe-programmirovanie-v-swift/"
        case .three:
            return "https://habr.com/ru/articles/592341/"
        case .four:
            return "https://habr.com/ru/articles/593797/"
        case .five:
            return "https://swiftbook.ru/post/tutorials/pass-data/"
        case .six:
            return "https://habr.com/ru/articles/271355/"
        case .seven:
            return "https://habr.com/ru/articles/312782/"
        case .eigt:
            return "https://swiftbook.ru/post/tutorials/core-data-chast-1/"
        case .nine:
            return "https://habr.com/ru/articles/330760/"
        case .ten:
            return "https://swiftbook.ru/content/languageguide/closures/"
        case .eleven:
            return "https://habr.com/ru/articles/338766/"
        case .twelve:
            return "https://swiftbook.ru/content/languageguide/extensions/"
        case .thirteen:
            return "https://habr.com/ru/companies/otus/articles/462753/"
        case .fourteen:
            return "https://habr.com/ru/articles/451130/"
        case .fiveteen:
            return "https://habr.com/ru/articles/320152/"
        case .sixteen:
            return "https://sparrowcode.io/ru/tutorials/access-control"
        case .seventeen:
            return "https://vmityuklyaev.medium.com/различие-frame-и-bounds-в-ios-frame-vs-bounds-in-ios-4e5aee5ed477"
        case .eighteen:
            return "https://habr.com/ru/articles/261711/"
        case .nineteen:
            return "https://www.youtube.com/watch?v=R0vhZIOZPzc"
            
        }
    }
}

