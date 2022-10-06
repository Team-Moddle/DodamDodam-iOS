import Foundation

class ChatListViewModel: ObservableObject {
    let list: [ChatListModel] = [
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://avatars.githubusercontent.com/u/81291116?v=4",
            name: "김기영",
            address: "주안동",
            time: "방금전",
            message: "안녕 반가워"
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026841499612225549/1027424962790817802/image_6.png",
            name: "영희맘",
            address: "양산동",
            time: "2시간 전",
            message: "네"
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://avatars.githubusercontent.com/u/78971821?v=4",
            name: "전승원",
            address: "풍암동",
            time: "2시간 전",
            message: "이런 씹덕"
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://avatars.githubusercontent.com/u/81676542?v=4",
            name: "김상은",
            address: "노변동",
            time: "3시간 전",
            message: "정우재 와꾸 ㄹㅈㄷ"
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://avatars.githubusercontent.com/u/74440939?v=4",
            name: "최형우",
            address: "용두동",
            time: "7시간 전",
            message: "으악"
        )
    ]
}
