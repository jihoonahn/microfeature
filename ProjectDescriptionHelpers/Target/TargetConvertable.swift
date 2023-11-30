import ProjectDescription

public protocol TargetConvertable {
    func build() -> ProjectDescription.Target
}
