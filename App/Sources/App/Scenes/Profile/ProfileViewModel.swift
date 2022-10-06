import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(imageUrlString: "", name: "기무기영", address: "중국 상하이")
    @Published var child: [ChildModel] = [.init(name: "김상은", birthDay: "2022.05.30", personality: "아마도 착해요", bool1: true, bool2: true, bool3: false, bool4: false, bool5: false, guitar: ""), .init(name: "김기영", birthDay: "2022.05.30", personality: "아마도 착해요", bool1: true, bool2: true, bool3: false, bool4: false, bool5: false, guitar: "")]
}
