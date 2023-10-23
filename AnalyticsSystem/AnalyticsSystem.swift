//
//  AnalyticsSystem.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

class AnalyticsSystem<T: ReportGenerator> {
    
    public let engines: [AnalyticsEngine]
    public var reportGenerator: T
    
    init(engines: [AnalyticsEngine], reportGenerator: T) {
        
        self.engines = engines
        self.reportGenerator = reportGenerator
    }
    
    public func send(event: any AnalyticsEvent) {
        
        for engine in engines {
            engine.addEvent(event: event)
        }
        
        reportGenerator.eventsArray.append(event)
    }
    
    public func obtainReport(reportLanguage: language) -> T.reportType {
        
        return reportGenerator.makeReport(reportLanguage: .en)
    }
}
