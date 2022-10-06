import Combine
import UIKit

final class EditProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: "", name: "김기영", address: "인천광역시 미추홀구")
    @Published var image: UIImage?
    @Published var name: String = ""
    @Published var address: String = ""
}
