import ProjectDescription

/// A method that can be used as a group of Microfeature.
///
/// Used for Microfeature method.
/// ```swift
/// Microfeature {
///    ...
/// }
/// ```
/// How to use specified targets
/// ```swift
/// Microfeature {
///    Example()
///    Interface()
///    Sources()
/// }
/// ```
public func Microfeature(@TargetBuilder content: () -> [Target]) -> [Target] {
    return content()
}
