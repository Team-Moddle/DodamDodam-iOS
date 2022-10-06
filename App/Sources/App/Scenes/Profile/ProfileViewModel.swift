import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: Data(), name: "기무기영", address: "중국 상하이")
    @Published var child: [ChildModel] = []

    func fetchChildren() {
        child = ProfileUserDefaults.shared.fetchChildrenInformation()
    }

    func fetchProfile() {
        profile = ProfileUserDefaults.shared.fetchProfile()
    }
}
