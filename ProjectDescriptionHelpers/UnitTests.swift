import ProjectDescription

public final class UnitTests: TargetSpec {
    public init(name: String) {
        super.init()
        self.targetModifier.name = name + "Tests"
        self.targetModifier.product = .unitTests
        self.targetModifier.sources = .unitTests
    }
}
