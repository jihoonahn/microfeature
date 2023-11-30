import ProjectDescription

@resultBuilder
public struct TargetDependencyBuilder {
    @inlinable
    public static func buildBlock() -> [TargetDependency] {
        []
    }
    @inlinable
    public static func buildBlock(_ targetDependencies: TargetDependency...) -> [TargetDependency] {
        targetDependencies
    }
    @inlinable
    public static func buildBlock(_ targetDependencies: [TargetDependency]) -> [TargetDependency] {
        targetDependencies
    }
    @inlinable
    public static func buildOptional(_ wrapped: [TargetDependency]?) -> [TargetDependency]? {
        wrapped
    }
}
