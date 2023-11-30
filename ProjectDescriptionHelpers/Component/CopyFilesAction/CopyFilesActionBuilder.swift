import ProjectDescription

@resultBuilder
public struct CopyFilesActionBuilder {
    @inlinable
    public static func buildBlock() -> [CopyFilesAction] {
        []
    }
    @inlinable
    public static func buildBlock(_ copyFiles: CopyFilesAction...) -> [CopyFilesAction] {
        copyFiles
    }
    @inlinable
    public static func buildBlock(_ copyFiles: [CopyFilesAction]) -> [CopyFilesAction] {
        copyFiles
    }
    @inlinable
    public static func buildOptional(_ wrapped: [CopyFilesAction]?) -> [CopyFilesAction]? {
        wrapped
    }
}
