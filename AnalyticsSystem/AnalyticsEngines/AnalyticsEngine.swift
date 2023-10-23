//
//  AnalyticsEngine.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

protocol AnalyticsEngine {
    
    func addEvent(event: any AnalyticsEvent)
}
