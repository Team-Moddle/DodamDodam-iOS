import Foundation

class FacilityViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var list: [LocationModel] = [
        .init(
            id: 0,
            name: "우리집 병원",
            address: "경상남도 양산시 평산회야로 167",
            imageUrlString: "https://www.kyuh.ac.kr/images/main/sub04/sub040202_img01.jpg",
            category: .hospital,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
        ),
        .init(
            id: 1,
            name: "우리집 식당",
            address: "대구광역시 수성구 노변로 89",
            imageUrlString: "https://www.qplace.kr/data/portfolio/1282/a03ee24698ff1a37c17127f368468b8a_w800.jpg",
            category: .restaurant,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
        ),
        .init(
            id: 2,
            name: "우리집 놀이공원",
            address: "광주광역시 북구 인방울래로 1041번길 15",
            imageUrlString: "https://cdn.aitimes.com/news/photo/202205/144590_150861_334.jpg",
            category: .playground,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
        ),
        .init(
            id: 3,
            name: "우리집 키즈카페",
            address: "인천광역시 미추홀구 동주길67번길 54",
            imageUrlString: "https://cdn.news2day.co.kr/data2/content/image/2021/08/06/.cache/512/20210806500342.jpg",
            category: .playground,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
        ),
        .init(
            id: 4,
            name: "우리집 옆식당",
            address: "대전광역시 유성구 진잠로 149번길 30",
            imageUrlString: "https://media-cdn.tripadvisor.com/media/photo-s/15/28/f3/14/caption.jpg",
            category: .restaurant,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
        ),
        .init(
            id: 5,
            name: "우리집 병원",
            address: "제주특별자치도 제주시 첨단로 242 (우)63309",
            imageUrlString: "https://sev.severance.healthcare/_res/yuhs/sev/img/about/intro/img-medical1.jpg",
            category: .hospital,
            commentCount: Int.random(in: 0...60),
            heartCount: Int.random(in: 0...60)
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

    func fetchFilterSearch() {
        if search.isEmpty {
            fetchAppear()
        } else {
            locationList = list.filter { $0.name.contains(search) }
        }
    }
}
