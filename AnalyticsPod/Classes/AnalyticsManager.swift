//
//  AnalyticsManager.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

//import FirebaseAnalytics
//
//public final class AnalyticsManager {
//    public static let shared = AnalyticsManager()
//    public init() {}
//
//    public func logEvent(name: String, parameters: [String:Any] = [:]) {
//        Analytics.logEvent(name, parameters: parameters)
//    }
//
//    public func logScreen(name: String, parameters: [String:Any] = [:]) {
//        Analytics.logEvent(AnalyticsEventScreenView, parameters: parameters)
//    }
//}

public protocol AnalyticsManaging {
    func add(services: [AnalyticsServicing])
    func sendLogs()
}

public final class AnalyticsManager : AnalyticsManaging {
    internal private(set) var services = [AnalyticsServicing]()

    public static let shared = AnalyticsManager()
    public init() {}
    
    /// Call this to add analytics service providers.
    /// - Parameters:
    ///   - services: analytics service providers
    public func add(services: [AnalyticsServicing]) {
        self.services = services
    }
    
    public func sendLogs() {
        services.forEach({ service in
            service.sendAnalyticsEvent()
        })
    }
}
