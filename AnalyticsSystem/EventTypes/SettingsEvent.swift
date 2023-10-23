//
//  SettingsEvent.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

enum SettingsEvent<T>: AnalyticsEvent {
    
    case changeName(T)
    case changeLanguage(T)
    
    var name: String {
        
        switch self {
        case .changeName:
            
            return "changeName"
        case .changeLanguage:
            
            return "changeLanguage"
        }
    }
    
    var metadata: [String: T] {
        
        switch self {
        case .changeName(let name):
            
            return ["name": name]
        case .changeLanguage(let language):
            
            return ["language": language]
        }
    }
    
}
