import Foundation

class AddChildrenViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var birthday: String = ""
    @Published var personality: String = ""
    @Published var bool1: Bool = false
    @Published var bool2: Bool = false
    @Published var bool3: Bool = false
    @Published var bool4: Bool = false
    @Published var bool5: Bool = false
    @Published var guitar: String = ""
}
