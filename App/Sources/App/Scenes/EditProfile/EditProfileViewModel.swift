import Combine
import UIKit

final class EditProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: Data(), name: "", address: "")
    @Published var image: UIImage?
    @Published var name: String = ""
    @Published var address: String = ""
    let prevProfile: ProfileModel

    init(prevProfile: ProfileModel) {
        self.prevProfile = prevProfile
        self.image = UIImage(data: prevProfile.imageUrlString)
        self.name = prevProfile.name
        self.address = prevProfile.address
    }

    func setProfile() {
        ProfileUserDefaults.shared.setProfile(
            profile: .init(
                imageUrlString: (image?.pngData())!,
                name: name,
                address: address
            ))
    }
}
