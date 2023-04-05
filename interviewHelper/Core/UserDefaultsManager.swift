//
//  UserDefaultsManager.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 3.04.23.
//

import Foundation


class UserDefaultsManager {
    
    private let userDefaultsManager = UserDefaults()
    
    static let shared = UserDefaultsManager()
    
    enum Data: String {
        case onboarding
    }
    
    func save(value: Bool, data: Data) {
        userDefaultsManager.setValue(value, forKey: data.rawValue)
    }
    
    func get(data: Data) -> Bool{
        return userDefaultsManager.bool(forKey: data.rawValue)
    }
}
