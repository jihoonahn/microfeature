import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects/")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new interface target",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Interface/Interface.swift",
            templatePath: "Interface.stencil"
        )
    ]
)
