import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects/")
private let layerAttribute = Template.Attribute.required("layer")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new interface target",
    attributes: [
        pathAttribute,
        layerAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(layerAttribute)/\(nameAttribute)/Interface/Interface.swift",
            templatePath: "Interface.stencil"
        )
    ]
)
