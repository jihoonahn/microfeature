import ProjectDescription

/// Target Convertable Protocol
public protocol TargetConvertable {
    func build() -> Target
}
