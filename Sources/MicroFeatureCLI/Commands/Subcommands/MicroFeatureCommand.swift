import ArgumentParser
import MicroFeatureCLICore

extension MainCommand {
    /// A command to management the microfeature code.
    struct MicroFeatureCommand: ParsableCommand {
        static var configuration = CommandConfiguration(
            commandName: "microfeature",
            abstract: "Management Tuist Plugin."
        )

        enum MicroFeatureType: String, ExpressibleByArgument {
            case example = "Example"
            case interface = "Interface"
            case sources = "Sources"
            case testings = "Testing"
            case tests = "Tests"
            case uitests = "UITests"
        }

        @Option(
            name: .shortAndLong,
            help: "The path to the directory that contains the workspace or project.",
            completion: .directory
        )
        var path: String

        @Argument(help: "Enter the name of the project target you want to create.")
        var name: String
        
        @Option(
            name: .shortAndLong,
            help: "Please enter the MicroFeature types you want to add."
        )
        var type: [MicroFeatureType] = [.sources]

        func run() throws {
            try MicroFeatureService()
                .run(
                    path: path,
                    name: name,
                    type: type.map { $0.rawValue }
                )
        }
    }
}
