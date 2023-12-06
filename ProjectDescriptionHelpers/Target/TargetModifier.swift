import ProjectDescription
 
/// Target Return Type for target Modifier
public final class TargetModifier: TargetConvertable {
    /// The name of the target. Also, the product name if not specified with ``productName``.
    public var name: String

    /// The platform the target product is built for.
    public var platform: Platform

    /// The type of build product this target will output.
    public var product: Product

    /// The built product name. If nil, it will be equal to ``name``.
    public var productName: String?

    /// The product bundle identifier.
    public var bundleId: String

    /// The minimum deployment target your product will support.
    public var deploymentTarget: DeploymentTarget?

    /// The Info.plist representation.
    public var infoPlist: InfoPlist?

    /// The source files of the target.
    public var sources: SourceFilesList?

    /// The resource files of target.
    public var resources: ResourceFileElements?

    /// The build phase copy files actions for the target.
    public var copyFiles: [CopyFilesAction]?

    /// The headers for the target.
    public var headers: Headers?

    /// The entitlements representation
    public var entitlements: Entitlements?

    /// The build phase scripts actions for the target.
    public var scripts: [TargetScript]

    /// The target's dependencies.
    public var dependencies: [TargetDependency]

    /// The target's settings.
    public var settings: Settings?

    /// The Core Data models.
    public var coreDataModels: [CoreDataModel]

    /// The environment variables. Used by autogenerated schemes for the target.
    public var environmentVariables: [String: EnvironmentVariable]

    /// The launch arguments. Used by autogenerated schemes for the target.
    public var launchArguments: [LaunchArgument]

    /// The additional files for the target. For project's additional files.
    public var additionalFiles: [FileElement]

    /// The build rules used for transformation of source files during compilation.
    public var buildRules: [BuildRule]

    /// Specifies whether if the target can merge or not the dynamic dependencies as part of its binary
    public var mergedBinaryType: MergedBinaryType

    /// Specifies whether if the target can be merged as part of another binary or not
    public var mergeable: Bool
    
    public init(
        name: String = "",
        platform: Platform = .iOS,
        product: Product = .staticLibrary,
        productName: String? = nil,
        bundleId: String = "",
        deploymentTarget: DeploymentTarget? = nil,
        infoPlist: InfoPlist? = .default,
        sources: SourceFilesList? = nil,
        resources: ResourceFileElements? = nil,
        copyFiles: [CopyFilesAction]? = nil,
        headers: Headers? = nil,
        entitlements: Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency] = [],
        settings: Settings? = nil,
        coreDataModels: [CoreDataModel] = [],
        environmentVariables: [String: EnvironmentVariable] = [:],
        launchArguments: [LaunchArgument] = [],
        additionalFiles: [FileElement] = [],
        buildRules: [BuildRule] = [],
        mergedBinaryType: MergedBinaryType = .disabled,
        mergeable: Bool = false
    ) {
        self.name = name
        self.platform = platform
        self.bundleId = bundleId
        self.productName = productName
        self.product = product
        self.infoPlist = infoPlist
        self.entitlements = entitlements
        self.dependencies = dependencies
        self.settings = settings
        self.sources = sources
        self.resources = resources
        self.copyFiles = copyFiles
        self.headers = headers
        self.scripts = scripts
        self.coreDataModels = coreDataModels
        self.environmentVariables = environmentVariables
        self.launchArguments = launchArguments
        self.deploymentTarget = deploymentTarget
        self.additionalFiles = additionalFiles
        self.buildRules = buildRules
        self.mergedBinaryType = mergedBinaryType
        self.mergeable = mergeable
    }

    public func build() -> Target {
        Target(
            name: name,
            platform: platform,
            product: product,
            productName: productName,
            bundleId: bundleId,
            deploymentTarget: deploymentTarget,
            infoPlist: infoPlist,
            sources: sources,
            resources: resources,
            copyFiles: copyFiles,
            headers: headers,
            entitlements: entitlements,
            scripts: scripts,
            dependencies: dependencies,
            settings: settings,
            coreDataModels: coreDataModels,
            environmentVariables: environmentVariables,
            launchArguments: launchArguments,
            additionalFiles: additionalFiles,
            buildRules: buildRules,
            mergedBinaryType: mergedBinaryType,
            mergeable: mergeable
        )
    }
}
