
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

