//import UIKit

class StringFormatter {
    enum Error: Swift.Error {
        case emptyString
    }

    func format(_ string: String) throws -> String {
        guard !string.isEmpty else {
            throw Error.emptyString
        }
        return string.replacingOccurrences(of: "\n", with: " ")
    }
}

let formatter = StringFormatter()
do {
    let formattedString = try formatter.format("Hello\nWorld")
    print(formattedString)
} catch {
    print("An error occurred: \(error)")
}

class NetworkReatchabilityManager {
    enum NetworkReacheabilityStatus: Equatable {
        case unknown
        case notReachable
        case reachable (ConnectionType)

        enum ConnectionType {
            case ethernetOrWiFi
            case wwan
        }
    }

    var isReachableOnWwan: Bool {
        return status == .reachable(.wwan)
    }
    var isReachableOnEthernetOrWiFi: Bool {
        return status == .reachable(.ethernetOrWiFi)
    }
    var isReachable: Bool {
        return isReachableOnWwan || isReachableOnEthernetOrWiFi
    }
    var status: NetworkReacheabilityStatus {
        return .notReachable
    }
}