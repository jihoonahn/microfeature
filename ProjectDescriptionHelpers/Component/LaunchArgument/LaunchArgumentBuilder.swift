import ProjectDescription

@resultBuilder
public struct LaunchArgumentBuilder {
    @inlinable
    public static func buildBlock() -> [LaunchArgument] {
        []
    }
    @inlinable
    public static func buildBlock(_ launchArguments: LaunchArgument...) -> [LaunchArgument] {
        launchArguments
    }
    @inlinable
    public static func buildBlock(_ launchArguments: [LaunchArgument]) -> [LaunchArgument] {
        launchArguments
    }
    @inlinable
    public static func buildOptional(_ wrapped: [LaunchArgument]?) -> [LaunchArgument]? {
        wrapped
    }
}
