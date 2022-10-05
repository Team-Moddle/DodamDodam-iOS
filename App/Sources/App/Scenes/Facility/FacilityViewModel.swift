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
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 2,
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 3,
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 2,
            heartCount: 3
        ),
        .init(
            id: 4,
            name: "우리집 병원",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
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
}
