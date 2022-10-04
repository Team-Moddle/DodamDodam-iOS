import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DodamDodam",
    product: .app,
    packages: [
    ],
    dependencies: [
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
