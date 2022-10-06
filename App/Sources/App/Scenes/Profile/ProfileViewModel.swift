import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: "", name: "기무기영", address: "중국 상하이")
}
