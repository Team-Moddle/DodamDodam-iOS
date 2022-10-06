import Foundation

final class ProfileUserDefaults {
    static let shared = ProfileUserDefaults()
    let userDefaults = UserDefaults.standard

    func setChildrenInformation(
        name: String,
        birthday: String,
        personality: String,
        bool1: Bool,
        bool2: Bool,
        bool3: Bool,
        bool4: Bool,
        bool5: Bool,
        guitar: String
    ) {
        var list = fetchChildrenInformation()
        list.append(.init(name: name, birthDay: birthday, personality: personality, bool1: bool1, bool2: bool2, bool3: bool3, bool4: bool4, bool5: bool5, guitar: guitar))
        let data = list.map {
            [
                "name": $0.name,
                "birthday": $0.birthDay,
                "personality": $0.personality,
                "bool1": $0.bool1,
                "bool2": $0.bool2,
                "bool3": $0.bool3,
                "bool4": $0.bool4,
                "bool5": $0.bool5,
                "guitar": $0.guitar
            ]
        }
        userDefaults.set(data, forKey: "children")
    }

    func fetchChildrenInformation() -> [ChildModel] {
        var list: [ChildModel] = []
        guard let data = userDefaults.object(forKey: "children") as? [[String: AnyObject]] else {
            return []
        }
        list = data.map { child in
            let name = child["name"] as? String
            let birthday = child["birthday"] as? String
            let personality = child["personality"] as? String
            let bool1 = child["bool1"] as? Bool
            let bool2 = child["bool2"] as? Bool
            let bool3 = child["bool3"] as? Bool
            let bool4 = child["bool4"] as? Bool
            let bool5 = child["bool5"] as? Bool
            let guitar = child["guitar"] as? String
            
            return .init(
                name: name ?? "",
                birthDay: birthday ?? "",
                personality: personality ?? "",
                bool1: bool1 ?? false,
                bool2: bool2 ?? false,
                bool3: bool3 ?? false,
                bool4: bool4 ?? false,
                bool5: bool5 ?? false,
                guitar: guitar ?? ""
            )
        }
        return list
    }

    func setProfile(profile: ProfileModel) {
        userDefaults.set([
            "imageUrlString": profile.imageUrlString,
            "name": profile.name,
            "address": profile.address
        ], forKey: "profile"
        )
    }

    func fetchProfile() -> ProfileModel {
        guard let data = userDefaults.object(forKey: "profile") as? [String: AnyObject] else { return .init(imageUrlString: Data(), name: "",  address: "")}
        return ProfileModel(
            imageUrlString: (data["imageUrlString"]) as? Data ?? Data(),
            name: (data["name"]) as? String ?? "",
            address: ((data["address"]) as? String) ?? ""
        )
    }
}
