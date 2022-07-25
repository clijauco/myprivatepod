//
//  AnalyticsService.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

public protocol AnalyticsServicing {
    func sendAnalyticsEvent(name: String, metadata: [String: Any])
}


// Sample of a Analytics provider conforming to AnalyticsServicing
public final class LoggingAnalyticsService: AnalyticsServicing {
    
    public init () {}
    
    public func sendAnalyticsEvent(name: String, metadata: [String : Any] = []) {
        print("Event reported: \(name)")
        print("Metadata: \(metadata)")
    }
}
