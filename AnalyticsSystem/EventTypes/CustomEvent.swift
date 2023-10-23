//
//  CustomEvent.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

let dateFormatter: DateFormatter = {
    
    let df = DateFormatter()
    df.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return df
}()

struct CustomEvent: AnalyticsEvent {
    
    let date: Date
    let name: String
    let userID: String
    
    var metadata: [String: Any] {
        
        [
            "userID" : userID,
            "date" : dateFormatter.string(from: Date(timeIntervalSince1970: Date().timeIntervalSince1970)),
            "name" : name
        ]
    }
    
}
