import ArgumentParser

/// The entry point of the plugin. Main command that must be invoked in `main.swift` file.
struct MainCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "plugin-microfeature",
        abstract: "A plugin that extends Tuist with MicroFeature code.",
        subcommands: [
            MicroFeatureCommand.self,
            VersionCommand.self
        ],
        defaultSubcommand: MicroFeatureCommand.self
    )
}
