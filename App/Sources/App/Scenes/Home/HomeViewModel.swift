import Foundation

class HomeViewModel: ObservableObject {
    @Published var serach: String = ""
    @Published var list: [CommunityModel] = [
        .init(
            id: 0,
            imageUrlString: "https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_1280.jpg",
            title: "우리 아이 이대로 괜찮을까?",
            location: "서울특별시 강남구",
            humanCount: 15
        ),
        .init(
            id: 1,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthinfo/20180820?fileName=adultADHDsymptom.jpg",
            title: "우리 아이 ADHD일까?",
            location: "인천광역시 미추홀구",
            humanCount: 19
        ),
        .init(
            id: 2,
            imageUrlString: "https://d14cvuwsb9oabg.cloudfront.net/c_fill,fl_lossy,w_960/v1637137142/ysyag5w9gzxexp0ikago.jpg",
            title: "말 안듣는 아이 올바르게 혼내는 방법!",
            location: "경기도 수원시",
            humanCount: 18
        ),
        .init(
            id: 3,
            imageUrlString: "https://file.mk.co.kr/meet/yonhap/2020/07/16/image_readtop_2020_727202_0_060111.jpg",
            title: "갑각류 알레르기 아이 엄마의 아이 식단 레시피",
            location: "인천광역시 부평구",
            humanCount: 10
        ),
        .init(
            id: 4,
            imageUrlString: "https://src.hidoc.co.kr/image/lib/2022/2/24/1645689830338_0.jpg",
            title: "알레르기 있는 우리 아이 무엇을 먹여야 할까?",
            location: "서울특별시 종로구",
            humanCount: 13
        ),
        .init(
            id: 5,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027191553749430383/1.png",
            title: "똑똑한 우리 아이, 영재일까? 아닐까?",
            location: "대구광역시 수성구",
            humanCount: 40
        ),
        .init(
            id: 6,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027188668038926416/IMG_0010.jpg",
            title: "행복한 아이로 키우는 절대 방법",
            location: "경상남도 양산시 평산동",
            humanCount: 30
        ),
        .init(
            id: 7,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthstory/20151110?fileName=13923689.jpg",
            title: "우리 아이에게 맞는 알맞은 학습법",
            location: "서울특별시 강남구",
            humanCount: 20
        ),
        .init(
            id: 8,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027193840152625162/Screen_Shot_2022-10-05_at_21.21.24.png",
            title: "또래보다 작은 아이 성장 부진일까?",
            location: "서울특별시 강남구",
            humanCount: 20
        ),

    ]
}
