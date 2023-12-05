import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new sources target",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Sources/Sources.swift",
            templatePath: "Sources.stencil"
        )
    ]
)
