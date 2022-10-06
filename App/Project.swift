import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DodamDodam",
    product: .app,
    packages: [
        .Firebase,
        .SwiftyChat
    ],
    dependencies: [
        .SPM.FirebaseAuth,
        .SPM.FirebaseFirestore,
        .SPM.FirebaseFirestoreSwift,
        .SPM.FirebaseStorage,
        .SPM.SwiftyChat
    ],
    resources: ["Resources/**"],
    entitlements: Path("Support/DodamDodam.entitlements"),
    infoPlist: .file(path: "Support/Info.plist")
)
