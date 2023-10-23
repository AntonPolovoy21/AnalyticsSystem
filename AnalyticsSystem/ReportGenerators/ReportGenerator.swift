//
//  ReportGenerator.swift
//  AnalyticsSystem
//
//  Created by Admin on 23.10.23.
//

import Foundation

protocol ReportGenerator {
    
    associatedtype reportType: Report
    
    var eventsArray: [any AnalyticsEvent] { get set }
    
    func makeReport(reportLanguage: language) -> reportType
}
