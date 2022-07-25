//
//  FirebaseAnalyticsService.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

import FirebaseAnalytics

public final class FirebaseAnalyticsService: AnalyticsServicing {
    
    private var events: [AnalyticsEvent] = []
    public init () {}
    
    public func addAnalyticsEvent(event: AnalyticsEvent) {
        events.append(event)
    }

    public func sendAnalyticsEvent(){
        events.forEach { item in
            print("Event reported: \(item.name)")
            print("Metadata: \(item.parameters)")
            Analytics.logEvent( item.name, parameters: item.parameters)
        }
    }
}
