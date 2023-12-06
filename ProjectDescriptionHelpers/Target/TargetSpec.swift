import ProjectDescription

/// TargetSpec contains parts commonly used by targets.
public class TargetSpec: TargetConvertable {
    public let targetModifier = TargetModifier()

    public init() {}
    
    public func build() -> Target {
        targetModifier.build()
    }
}

public extension TargetSpec {
    /// Setting Platform
    @inlinable
    func platform(_ platform: Platform) -> Self {
        targetModifier.platform = platform
        return self
    }
    /// Setting ProductName
    @inlinable
    func productName(_ productName: String) -> Self {
        targetModifier.productName = productName
        return self
    }
    /// Setting bundleId
    @inlinable
    func bundleId(_ bundleId: String) -> Self {
        targetModifier.bundleId = bundleId
        return self
    }
    /// Setting deploymentTarget
    @inlinable
    func deploymentTarget(_ deploymentTarget: DeploymentTarget?) -> Self {
        targetModifier.deploymentTarget = deploymentTarget
        return self
    }
    /// Setting infoPlist
    @inlinable
    func infoPlist(_ infoPlist: InfoPlist?) -> Self {
        targetModifier.infoPlist = infoPlist
        return self
    }
    /// Setting sources
    @inlinable
    func sources(_ sources: SourceFilesList?) -> Self {
        targetModifier.sources = sources
        return self
    }
    /// Setting Resources
    @inlinable
    func resources(_ resources: ResourceFileElements?) -> Self {
        targetModifier.resources = resources
        return self
    }
    /// Setting copyFiles
    @inlinable
    func copyFiles(_ copyFiles: [CopyFilesAction]?) -> Self {
        targetModifier.copyFiles = copyFiles
        return self
    }
    /// Setting copyFiles with closure
    @inlinable
    func copyFiles(@CopyFilesActionBuilder copyFiles: () -> [CopyFilesAction]?) -> Self {
        targetModifier.copyFiles = copyFiles()
        return self
    }
    /// Setting headers
    @inlinable
    func headers(_ headers: Headers?) -> Self {
        targetModifier.headers = headers
        return self
    }
    /// Setting entitlements
    @inlinable
    func entitlements(_ entitlements: Entitlements?) -> Self {
        targetModifier.entitlements = entitlements
        return self
    }
    /// Setting scripts
    @inlinable
    func scripts(_ scripts: [TargetScript]) -> Self {
        targetModifier.scripts = scripts
        return self
    }
    /// Setting scripts with closure
    @inlinable
    func scripts(@TargetScriptBuilder scripts: () -> [TargetScript]) -> Self {
        targetModifier.scripts = scripts()
        return self
    }
    /// Setting Dependencies
    @inlinable
    func dependencies(_ dependencies: [TargetDependency]) -> Self {
        targetModifier.dependencies = dependencies
        return self
    }
    /// Setting Dependencies with closure
    @inlinable
    func dependencies(@TargetDependencyBuilder dependencies: () -> [TargetDependency]) -> Self {
        targetModifier.dependencies = dependencies()
        return self
    }
    /// Setting settings
    @inlinable
    func settings(_ settings: Settings?) -> Self {
        targetModifier.settings = settings
        return self
    }
    /// Setting coreDataModels
    @inlinable
    func coreDataModels(_ coreDataModels: [CoreDataModel]) -> Self {
        targetModifier.coreDataModels = coreDataModels
        return self
    }
    /// Setting coreDataModels with closure
    @inlinable
    func coreDataModels(@CoreDataModelBuilder coreDataModels: () -> [CoreDataModel]) -> Self {
        targetModifier.coreDataModels = coreDataModels()
        return self
    }
    /// Setting environmentVariables
    @inlinable
    func environmentVariables(_ environmentVariables: [String: EnvironmentVariable]) -> Self {
        targetModifier.environmentVariables = environmentVariables
        return self
    }
    /// Setting launchArguments
    @inlinable
    func launchArguments(_ launchArguments: [LaunchArgument]) -> Self {
        targetModifier.launchArguments = launchArguments
        return self
    }
    /// Setting launchArguments with closure
    @inlinable
    func launchArguments(@LaunchArgumentBuilder launchArguments: () -> [LaunchArgument]) -> Self {
        targetModifier.launchArguments = launchArguments()
        return self
    }
    /// Setting additionalFiles
    @inlinable
    func additionalFiles(_ additionalFiles: [FileElement]) -> Self {
        targetModifier.additionalFiles = additionalFiles
        return self
    }
    /// Setting additionalFiles with closure
    @inlinable
    func additionalFiles(@FileElementBuilder additionalFiles: () -> [FileElement]) -> Self {
        targetModifier.additionalFiles = additionalFiles()
        return self
    }
    /// Setting buildRules
    @inlinable
    func buildRules(_ buildRules: [BuildRule]) -> Self {
        targetModifier.buildRules = buildRules
        return self
    }
    /// Setting buildRules with closure
    @inlinable
    func buildRules(@BuildRuleBuilder buildRules: () -> [BuildRule]) -> Self {
        targetModifier.buildRules = buildRules()
        return self
    }
    /// Setting mergedBinaryType
    @inlinable
    func mergedBinaryType(_ mergedBinaryType: MergedBinaryType) -> Self {
        targetModifier.mergedBinaryType = mergedBinaryType
        return self
    }
    /// Setting mergeable status
    @inlinable
    func mergeable(_ mergeable: Bool) -> Self {
        targetModifier.mergeable = mergeable
        return self
    }
}
