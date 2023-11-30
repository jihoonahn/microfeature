import ProjectDescription

@resultBuilder
public struct CoreDataModelBuilder {
    @inlinable
    public static func buildBlock() -> [CoreDataModel] {
        []
    }
    @inlinable
    public static func buildBlock(_ launchArguments: CoreDataModel...) -> [CoreDataModel] {
        launchArguments
    }
    @inlinable
    public static func buildBlock(_ launchArguments: [CoreDataModel]) -> [CoreDataModel] {
        launchArguments
    }
    @inlinable
    public static func buildOptional(_ wrapped: [CoreDataModel]?) -> [CoreDataModel]? {
        wrapped
    }
}
