import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "UnitTests target template",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Tests/\(nameAttribute)Tests.swift",
            templatePath: "Tests.stencil"
        )
    ]
)
