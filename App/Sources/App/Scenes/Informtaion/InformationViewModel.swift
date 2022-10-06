import Combine
import Foundation

final class InformationViewModel: ObservableObject {
    @Published var infoList: [InformationModel] = [
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://en.pimg.jp/001/472/698/1/1472698.jpg",
            title: "갑각류 알레르기가 있는 아이를 위한 레시피",
            content: "",
            likeCount: .random(in: 0...60)
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://en.pimg.jp/081/963/054/1/81963054.jpg",
            title: "편식하는 아이 지도방법",
            content: "",
            likeCount: .random(in: 0...20)
        )
    ]
}
