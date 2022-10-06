import Foundation

class HomeViewModel: ObservableObject {
    @Published var serach: String = ""
    @Published var list: [CommunityModel] = [
        .init(
            id: 0,
            imageUrlString: "https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_1280.jpg",
            title: "우리 아이 이대로 괜찮을까?",
            content: """
한글날을 맞아 우리나라 아동·청소년의 문해력 수준을 살펴보고 대응 방안을 모색하기 위한 조사가 실시됐다. 아동옹호대표기관 초록우산어린이재단(회장:이제훈)은 지난 7일, 초등학교 5학년부터 고등학교 2학년까지의 아동과 보호자 총 500명을 대상으로 문해력을 평가한 설문조사 결과를 발표했다.

이번 조사에는 전통적 개념의 국어 문해력과 함께 디지털 문해력 평가도 포함됐다. 국어 문해력은 부모와 아동이 동일한 문제를 푼 후 정답률을 비교했으며, 디지털 문해력은 △정서 △참여 △자기조절 △보안 △비판적 읽기 등의 항목에서 자기 진단 평가를 통해 확인했다.

조사에 따르면 부모와 아동의 국어 문해력의 차이는 크게 나지 않는 것으로 밝혀졌다. 그러나 디지털 문해력에서는 세부 항목에 따라 부모와 아동의 차이가 크게 나타났다. 아동은 부모세대보다 정서적으로 디지털 환경에 친숙하고 적극적으로 참여하는 반면, ‘자기조절’과 ‘보안’, ‘비판적 읽기’ 능력이 부모세대보다 더 낮은 것으로 확인됐다.

특히 아동들은 디지털 공간에서 제시된 정보의 신뢰성과 의도성을 판별하는 ‘비판적 읽기’ 역량이 부모세대보다 크게 떨어지는 것으로 드러났다. 대다수의 부모(86.8%)가 뉴스 기사가 최신 것인지 확인한다고 답했지만, 아동은 45.6%에 불과했다. 또한 ‘나는 뉴스 기사의 내용에 의심이 가는 경우 다른 자료를 찾아서 사실 여부를 확인한다’는 아동도 46.4%로 나타나(부모 76.4%) 스스로 정보의 진위를 판별하는 디지털 문해력 교육의 필요성을 확인할 수 있다.

초록우산어린이재단 아동복지연구소 이필영 소장은 “사회적 관계가 한정되고 정보가 매몰되는 등 코로나19 속 아동의 고립된 생활이 디지털 문해력 저하에 영향을 주고 있다”면서 “아동이 비판적으로 정보를 습득하고 올바르게 활용할 수 있도록 디지털 문해력 교육을 강화해야 한다”고 강조했다.
""",
            location: "서울특별시 강남구",
            humanCount: 15
        ),
        .init(
            id: 1,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthinfo/20180820?fileName=adultADHDsymptom.jpg",
            title: "우리 아이 ADHD일까?",
            content: "",
            location: "인천광역시 미추홀구",
            humanCount: 19
        ),
        .init(
            id: 2,
            imageUrlString: "https://d14cvuwsb9oabg.cloudfront.net/c_fill,fl_lossy,w_960/v1637137142/ysyag5w9gzxexp0ikago.jpg",
            title: "말 안듣는 아이 올바르게 혼내는 방법!",
            content: "",
            location: "경기도 수원시",
            humanCount: 18
        ),
        .init(
            id: 3,
            imageUrlString: "https://file.mk.co.kr/meet/yonhap/2020/07/16/image_readtop_2020_727202_0_060111.jpg",
            title: "갑각류 알레르기 아이 엄마의 아이 식단 레시피",
            content: "",
            location: "인천광역시 부평구",
            humanCount: 10
        ),
        .init(
            id: 4,
            imageUrlString: "https://src.hidoc.co.kr/image/lib/2022/2/24/1645689830338_0.jpg",
            title: "알레르기 있는 우리 아이 무엇을 먹여야 할까?",
            content: "",
            location: "서울특별시 종로구",
            humanCount: 13
        ),
        .init(
            id: 5,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027191553749430383/1.png",
            title: "똑똑한 우리 아이, 영재일까? 아닐까?",
            content: "",
            location: "대구광역시 수성구",
            humanCount: 40
        ),
        .init(
            id: 6,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027188668038926416/IMG_0010.jpg",
            title: "행복한 아이로 키우는 절대 방법",
            content: "",
            location: "경상남도 양산시 평산동",
            humanCount: 30
        ),
        .init(
            id: 7,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthstory/20151110?fileName=13923689.jpg",
            title: "우리 아이에게 맞는 알맞은 학습법",
            content: "",
            location: "서울특별시 강남구",
            humanCount: 20
        ),
        .init(
            id: 8,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027193840152625162/Screen_Shot_2022-10-05_at_21.21.24.png",
            title: "또래보다 작은 아이 성장 부진일까?",
            content: "",
            location: "서울특별시 강남구",
            humanCount: 20
        ),

    ]
}
