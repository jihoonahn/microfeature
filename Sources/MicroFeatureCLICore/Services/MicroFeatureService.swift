import Foundation
import Command

/// A service that management MicroFeature Archiecture.
public final class MicroFeatureService {

    @Command(\.tuist) var tuist
    public init() {}

    /// The entry point of the service.
    public func run(path: String, name: String, type: [String]) throws {
        type.forEach {
            tuist.scaffold($0, ["--path", path, "--name", name])
        }
    }
}
