import ProjectDescription

/// TargetSpec for Using Interface Target
public final class Interface: TargetSpec {
    public init(name: String) {
        super.init()
        self.targetModifier.name = name + "Interface"
        self.targetModifier.product = .framework
        self.targetModifier.sources = .interface
    }
}
