import ProjectDescription

/// Convert Target Type
public protocol TargetConvertable {
    func build() -> ProjectDescription.Target
}
