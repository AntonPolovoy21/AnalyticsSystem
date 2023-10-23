//
//  AnalyticsEvent.swift
//  AnalyticsSystem
//
//  Created by Admin on 22.10.23.
//

import Foundation

protocol AnalyticsEvent {
    
    associatedtype metadataType
    
    var name: String { get }
    var metadata: metadataType { get }
}
