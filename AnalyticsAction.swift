//
//  AnalyticsAction.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

public struct AnalyticsEvent {
    var name: String
    var parameters: [String: Any]
    
    public init(
        name: String,
        parameters: [String: Any] = [:]
    ) {
        self.name = name
        self.parameters = parameters
    }
}

public protocol AnalyticsAction {
    var event: AnalyticsEvent? { get }
}

extension AnalyticsAction {
    // Default implementation for event.
    public var event: AnalyticsEvent? {
        return AnalyticsEvent(
            name: "\(self)",
            parameters: ["class": "\(type(of: self))"])
    }
}

