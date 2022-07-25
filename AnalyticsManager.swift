//
//  AnalyticsManager.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

import FirebaseAnalytics

public final class AnalyticsManager {
    public static let shared = AnalyticsManager()
    public init() {}
    
    public func logEvent(name: String, parameters: [String:Any] = [:]) {
        Analytics.logEvent(name, parameters: parameters)
    }
    
    public func logScreen(name: String, parameters: [String:Any] = [:]) {
        Analytics.logEvent(AnalyticsEventScreenView, parameters: parameters)
    }
}

