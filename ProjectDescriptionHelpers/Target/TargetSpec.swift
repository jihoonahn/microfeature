import ProjectDescription

public class TargetSpec: TargetConvertable {
    public let targetModifier = TargetModifier()

    public init() {}
    
    public func build() -> Target {
        targetModifier.build()
    }
}

public extension TargetSpec {
    
    @inlinable
    func platform(_ platform: Platform) -> Self {
        targetModifier.platform = platform
        return self
    }
    
    @inlinable
    func productName(_ productName: String) -> Self {
        targetModifier.productName = productName
        return self
    }
    
    @inlinable
    func bundleId(_ bundleId: String) -> Self {
        targetModifier.bundleId = bundleId
        return self
    }
    
    @inlinable
    func deploymentTarget(_ deploymentTarget: DeploymentTarget?) -> Self {
        targetModifier.deploymentTarget = deploymentTarget
        return self
    }
    
    @inlinable
    func infoPlist(_ infoPlist: InfoPlist?) -> Self {
        targetModifier.infoPlist = infoPlist
        return self
    }
    
    @inlinable
    func sources(_ sources: SourceFilesList?) -> Self {
        targetModifier.sources = sources
        return self
    }
    
    @inlinable
    func resources(_ resources: ResourceFileElements?) -> Self {
        targetModifier.resources = resources
        return self
    }
    
    @inlinable
    func copyFiles(_ copyFiles: [CopyFilesAction]?) -> Self {
        targetModifier.copyFiles = copyFiles
        return self
    }
    
    @inlinable
    func copyFiles(@CopyFilesActionBuilder copyFiles: () -> [CopyFilesAction]?) -> Self {
        targetModifier.copyFiles = copyFiles()
        return self
    }
    
    @inlinable
    func headers(_ headers: Headers?) -> Self {
        targetModifier.headers = headers
        return self
    }
    
    @inlinable
    func entitlements(_ entitlements: Entitlements?) -> Self {
        targetModifier.entitlements = entitlements
        return self
    }
    
    @inlinable
    func scripts(_ scripts: [TargetScript]) -> Self {
        targetModifier.scripts = scripts
        return self
    }
    
    @inlinable
    func scripts(@TargetScriptBuilder scripts: () -> [TargetScript]) -> Self {
        targetModifier.scripts = scripts()
        return self
    }
    
    @inlinable
    func dependencies(_ dependencies: [TargetDependency]) -> Self {
        targetModifier.dependencies = dependencies
        return self
    }
    
    @inlinable
    func dependencies(@TargetDependencyBuilder dependencies: () -> [TargetDependency]) -> Self {
        targetModifier.dependencies = dependencies()
        return self
    }
    
    @inlinable
    func settings(_ settings: Settings?) -> Self {
        targetModifier.settings = settings
        return self
    }
    
    @inlinable
    func coreDataModels(_ coreDataModels: [CoreDataModel]) -> Self {
        targetModifier.coreDataModels = coreDataModels
        return self
    }
    
    @inlinable
    func coreDataModels(@CoreDataModelBuilder coreDataModels: () -> [CoreDataModel]) -> Self {
        targetModifier.coreDataModels = coreDataModels()
        return self
    }
    
    @inlinable
    func environmentVariables(_ environmentVariables: [String: EnvironmentVariable]) -> Self {
        targetModifier.environmentVariables = environmentVariables
        return self
    }
    
    @inlinable
    func launchArguments(_ launchArguments: [LaunchArgument]) -> Self {
        targetModifier.launchArguments = launchArguments
        return self
    }
    
    @inlinable
    func launchArguments(@LaunchArgumentBuilder launchArguments: () -> [LaunchArgument]) -> Self {
        targetModifier.launchArguments = launchArguments()
        return self
    }
    
    @inlinable
    func additionalFiles(_ additionalFiles: [FileElement]) -> Self {
        targetModifier.additionalFiles = additionalFiles
        return self
    }
    
    @inlinable
    func additionalFiles(@FileElementBuilder additionalFiles: () -> [FileElement]) -> Self {
        targetModifier.additionalFiles = additionalFiles()
        return self
    }
    
    @inlinable
    func buildRules(_ buildRules: [BuildRule]) -> Self {
        targetModifier.buildRules = buildRules
        return self
    }

    @inlinable
    func buildRules(@BuildRuleBuilder buildRules: () -> [BuildRule]) -> Self {
        targetModifier.buildRules = buildRules()
        return self
    }

    @inlinable
    func mergedBinaryType(_ mergedBinaryType: MergedBinaryType) -> Self {
        targetModifier.mergedBinaryType = mergedBinaryType
        return self
    }

    @inlinable
    func mergeable(_ mergeable: Bool) -> Self {
        targetModifier.mergeable = mergeable
        return self
    }
}
