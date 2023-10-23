//
//  ReportGenerator.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

extension String: Report {}

class StringReportGenerator: ReportGenerator {
    
    typealias reportType = String
    
    public var eventsArray = [any AnalyticsEvent]()
    
    func makeReport(reportLanguage: language) -> reportType {
        
        var localizedWordName: String
        var localizedWordMetadata: String
        
        switch reportLanguage {
        
        case .en:
            
            localizedWordName = "Name"
            localizedWordMetadata = "Metadata"
        case .ru:
            
            localizedWordName = "Имя"
            localizedWordMetadata = "Метаданные"
        case .de:
            
            localizedWordName = "Nomen"
            localizedWordMetadata = "Metadata"
        }
        
        var res = ""
        
        for event in eventsArray {
            
            res += "\(localizedWordName): \(event.name), \(localizedWordMetadata): \(event.metadata)\n"
        }
        
        return res
    }
}
