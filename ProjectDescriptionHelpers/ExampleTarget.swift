import ProjectDescription

public final class Example: TargetSpec {
    public init(name: String) {
        super.init()
        self.targetModifier.name = name + "Example"
        self.targetModifier.product = .app
        self.targetModifier.sources = .example
    }
}

