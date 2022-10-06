import Foundation

class FacilityViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var list: [LocationModel] = [
        .init(
            id: 0,
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 1,
            name: "우리집 식당",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .restaurant,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 2,
            name: "우리집 놀이공원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .playground,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 3,
            name: "우리집 키즈카페",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .playground,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 4,
            name: "우리집 옆식당",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .restaurant,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 5,
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 2,
            heartCount: 3
        )
    ]
    @Published var locationList: [LocationModel] = []

    func fetchAppear() {
        locationList = list
    }

    func fetchFilterHospital() {
        locationList = list.filter { $0.category == .hospital }
    }

    func fetchFilterRestraunt() {
        locationList = list.filter { $0.category == .restaurant }
    }

    func fetchFilterPlayground() {
        locationList = list.filter { $0.category == .playground }
    }
}
