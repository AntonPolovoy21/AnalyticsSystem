//
//  ExamplesMethods.swift
//  AnalyticsSystem
//
//  Created by Admin on 23.10.23.
//

import Foundation

func dictionaryExample() {
    
    let analyticsSystem = AnalyticsSystem(
        engines: [
            GoogleAnalytics(),
            SafariAnalytics(),
            YandexAnalytics()
        ],
        reportGenerator: DictionaryReportGenerator())

    analyticsSystem.send(event: AuthenticationEvent.logIn)
    analyticsSystem.send(event: SettingsEvent<String>.changeLanguage("ru"))
    analyticsSystem.send(event: CustomEvent(date: Date (), name: "purchase", userID: "127"))
    analyticsSystem.send(event: SettingsEvent<String>.changeName("Anton"))
    analyticsSystem.send(event: AuthenticationEvent.logOut)
    print()

    let report: [String: String] = analyticsSystem.obtainReport(reportLanguage: .en)
    print("String report:")
    report.forEach { print("\($0) -> \($1)") }
}

func stringExample() {
    
    let analyticsSystem = AnalyticsSystem(
        engines: [
            GoogleAnalytics(),
            SafariAnalytics(),
            YandexAnalytics()
        ],
        reportGenerator: StringReportGenerator())
    
    analyticsSystem.send(event: AuthenticationEvent.logIn)
    analyticsSystem.send(event: SettingsEvent<String>.changeLanguage("ru"))
    analyticsSystem.send(event: CustomEvent(date: Date (), name: "purchase", userID: "127"))
    analyticsSystem.send(event: SettingsEvent<String>.changeName("Anton"))
    analyticsSystem.send(event: AuthenticationEvent.logOut)
    print()
    
    let report: String = analyticsSystem.obtainReport(reportLanguage: .en)
    print("String report:")
    print(report)
}
