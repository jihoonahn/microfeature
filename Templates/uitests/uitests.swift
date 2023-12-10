import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "UITests target template",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/UITests/\(nameAttribute)UITests.swift",
            templatePath: "UITests.stensil"
        ),
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/UITests/\(nameAttribute)UITestsLaunchTests.swift",
            templatePath: "UITestsLaunchTests.stensil"
        )
    ]
)
