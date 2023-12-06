import ProjectDescription

/// TargetSpec for Using Testing Target
public final class Testing: TargetSpec {
    public init(name: String) {
        super.init()
        self.targetModifier.name = name + "Testing"
        self.targetModifier.product = .framework
        self.targetModifier.sources = .testing
    }
}
