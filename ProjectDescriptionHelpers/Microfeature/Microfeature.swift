import ProjectDescription

public func Microfeature(@TargetBuilder content: () -> [Target]) -> [Target] {
    return content()
}
