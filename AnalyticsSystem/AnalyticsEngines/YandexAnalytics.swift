//
//  AnalyticsEngine.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

class YandexAnalytics: AnalyticsEngine {
    
    func addEvent(event: any AnalyticsEvent) {
        
        print("Event \(event) sent to Yandex...")
    }
}
