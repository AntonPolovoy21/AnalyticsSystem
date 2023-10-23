//
//  DictionaryReportGenerator.swift
//  AnalyticsSystem
//
//  Created by Admin on 23.10.23.
//

import Foundation

extension [String: String]: Report {}

class DictionaryReportGenerator: ReportGenerator {
    
    typealias reportType = [String: String]
    
    public var eventsArray = [any AnalyticsEvent]()
    
    func makeReport(reportLanguage: language) -> reportType {
        
        var res = [String: String]()
        
        for event in eventsArray {
            
            res.updateValue("\(event.metadata)", forKey: "\(event.name)_\(String(describing: reportLanguage))")
        }
        
        return res
    }
}
