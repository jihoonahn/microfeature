import ProjectDescription

@resultBuilder
public struct TargetScriptBuilder {
    @inlinable
    public static func buildBlock() -> [TargetScript] {
        []
    }
    @inlinable
    public static func buildBlock(_ targetScripts: TargetScript...) -> [TargetScript] {
        targetScripts
    }
    @inlinable
    public static func buildBlock(_ targetScripts: [TargetScript]) -> [TargetScript] {
        targetScripts
    }
    @inlinable
    public static func buildOptional(_ wrapped: [TargetScript]?) -> [TargetScript]? {
        wrapped
    }
}
