import ProjectDescription

@resultBuilder
public struct BuildRuleBuilder {
    @inlinable
    public static func buildBlock() -> [BuildRule] {
        []
    }
    @inlinable
    public static func buildBlock(_ buildRules: BuildRule...) -> [BuildRule] {
        buildRules
    }
    @inlinable
    public static func buildBlock(_ buildRules: [BuildRule]) -> [BuildRule] {
        buildRules
    }
    @inlinable
    public static func buildOptional(_ wrapped: [BuildRule]?) -> [BuildRule]? {
        wrapped
    }
}
