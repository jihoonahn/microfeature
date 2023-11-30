import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects/")
private let layerAttribute = Template.Attribute.required("layer")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new uitest target",
    attributes: [
        pathAttribute,
        layerAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(layerAttribute)/\(nameAttribute)/UITests/\(nameAttribute)UITests.swift",
            templatePath: "UITests.stensil"
        ),
        .file(
            path: "\(pathAttribute)/\(layerAttribute)/\(nameAttribute)/UITests/\(nameAttribute)UITestsLaunchTests.swift",
            templatePath: "UITestsLaunchTests.stensil"
        )
    ]
)
