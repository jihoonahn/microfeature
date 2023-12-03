import ProjectDescription

public final class Sources: TargetSpec {
    public init(name: String, product: Product = .staticLibrary) {
        super.init()
        self.targetModifier.name = name
        self.targetModifier.product = product
        self.targetModifier.sources = .sources
    }
}
