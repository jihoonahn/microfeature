import Foundation
import Command

/// A service that management MicroFeature Archiecture.
public final class MicroFeatureService {

    @Command(\.tuist) var tuist

    public init() {}

    /// The entry point of the service.
    public func run(path: String, name: String, type: [String]) throws {
        type.forEach {
            tuist.scaffold(at: path, $0, ["--path", path, "--name", name])
            let result = tuist.scaffold(at: path, $0, ["--path", path, "--name", name]).response
            print("type: \($0) -> \(name), path: \(path) : \(result)")
        }
    }
}
