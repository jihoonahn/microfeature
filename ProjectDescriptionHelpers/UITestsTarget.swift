import ProjectDescription

public final class UITests: TargetSpec {
    public init(name: String) {
        super.init()
        self.targetModifier.name = name + "UITests"
        self.targetModifier.product = .uiTests
        self.targetModifier.sources = .uiTests
    }
}
