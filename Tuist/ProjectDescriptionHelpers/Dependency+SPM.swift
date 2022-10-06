import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let FirebaseAuth = TargetDependency.package(product: "FirebaseAuth")
    static let FirebaseFirestore = TargetDependency.package(product: "FirebaseFirestore")
    static let FirebaseFirestoreSwift = TargetDependency.package(product: "FirebaseFirestoreSwift")
    static let FirebaseStorage = TargetDependency.package(product: "FirebaseStorage")
    static let SwiftyChat = TargetDependency.package(product: "SwiftyChat")
}

public extension Package {
    static let Firebase = Package.remote(
        url: "https://github.com/firebase/firebase-ios-sdk.git",
        requirement: .upToNextMajor(from: "9.4.0")
    )
    static let SwiftyChat = Package.remote(
        url: "https://github.com/EnesKaraosman/SwiftyChat.git",
        requirement: .exact("2.1.0"))
}
