//
//  AuthenticationEvent.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

enum AuthenticationEvent: AnalyticsEvent {
    
    case logIn
    case logOut
    
    var name: String {
        
        String(describing: self)
    }
    
    var metadata: String { name }
    
}

