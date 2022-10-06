import Foundation
import UIKit

class ProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: UIImage(named: "Dod")?.pngData() ?? .init(), name: "김기영", address: "인천광역시 미추홀구")
    @Published var child: [ChildModel] = []

    func fetchChildren() {
        child = ProfileUserDefaults.shared.fetchChildrenInformation()
    }

    func fetchProfile() {
        profile = ProfileUserDefaults.shared.fetchProfile()
    }
}
