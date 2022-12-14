import Foundation

class HomeViewModel: ObservableObject {
    @Published var serach: String = ""

    @Published var list: [CommunityModel] = [
        .init(
            id: UUID().uuidString,
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
            humanCount: 15,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthinfo/20180820?fileName=adultADHDsymptom.jpg",
            title: "우리 아이 ADHD일까?",
            content: """
 기본적으로 아이들은 에너지가 넘치고 주의 집중 시간이 짧아 산만해 보이기 쉽다. 뇌의 지적 호기심과 운동신경계 발달이 동시에 진행되는 아이에게 주변은 온통 신기한 것 투성이다. 만지고 싶고 올라가고 싶고 내가 친구보다 먼저 하고 싶은 게 평범한 아이들의 마음이자 발달과정에서 나오는 자연스러운 모습이라고 볼 수 있다.

그러나 어른들의 눈이나 걱정이 많은 부모의 입장에선 이런 행동을 과잉 해석해 이상행동으로 판단, 인터넷으로 폭풍검색을 하고 임의로 진단을 내리기도 한다. 실제로 산만하다고 병원을 찾는 아이 중 일부는 부모가 지나치게 예민한 경우도 있고, 온실 속 화초처럼 귀하게 자란 아이의 경우 환경 적응력이 약하고 산만하며 집중력이 약한 아이가 많다.

비약물 두뇌훈련센터 수인재두뇌과학 이슬기 소장(분당센터소장)은 “산만한 아이를 보는 방향에는 크게 두 가지가 있는데 아이의 발달과정 중 하나라고 생각하고 가볍게 넘기는 경우와 부모가 이를 지나치게 예민하게 받아들이는 경우로, 보다 정확한 진단을 위해서는 전문병원에 내원해 검사를 받아보는 것이 좋습니다”라고 조언했다.

그렇다면 보통 아이들의 산만함과 구분 짓기 어려운 ADHD란 대체 어떤 질환일까?

ADHD란 학령기아동 약 3∼15%에서 발병하는 비교적 흔한 질환으로 대개 남아가 여아에 비해 3배 이상 많고 주의력결핍이 주된 증상이다. 하지만 과잉행동장애가 동시에 나타나는 경우도 있고 둘 중 한 가지만 있거나 증상이 눈에 띄지 않는 조용한 ADHD도 있다.

ADHD 원인에 대해서는 아직까지도 명확하게 밝혀진 바 없으나 주로 유전, 신경전달 물질의 결핍, 전두엽(고차적인 인지기능이 발현되는 두뇌영역으로 사람의 인지능력과 주의력, 집중력, 충동억제능력, 사회성 등을 담당하고 있는 부위) 기능저하 등이 있다.

이중 유전적인 요인은 ADHD가 쉽게 발생하는 체질적인 부분 이외에도 구성원들이 오랜 시간 성격 및 음식과 같은 생활환경을 공유하면서 나타나게 된다. 따라서 ADHD의 원인에 대해서는 특정한 한 가지 요인보다는 유전적, 신경학적, 생화학적 요인과 같은 기질적 요인과 정신사회적 요인이 복합적으로 상호작용하면서 발생한다고 보는 것이 합리적이다.

ADHD의 대표적인 증상으로 알려진 주의력결핍은 오래 집중하기 힘들어하고 외부자극에 쉽게 산만해지며 한 가지 일을 끝까지 수행하기 어렵다. 물건을 잘 잊어버리고 수업시간에 딴 생각에 빠져 있거나 책상 앞에 앉아있어도 공부한 것은 별로 없는 경우 등이다.

과잉행동 증상으로는 손발을 계속 꼼지락거리거나 차분히 앉아있는 것을 괴로워하며 말이 많다. 인내심이 부족해 자신의 차례를 못 기다려 다른 사람의 활동을 방해하고 간섭하며 상황에 맞지 않는 말을 불쑥 꺼내기도 한다. 충동적으로 화를 내고 친구를 때리거나 위험한 행동을 서슴없이 하고 TV나 비디오게임에 지나치게 흥미를 보이기도 한다.
""",
            location: "인천광역시 미추홀구",
            humanCount: 19,
            category: .adhd
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://d14cvuwsb9oabg.cloudfront.net/c_fill,fl_lossy,w_960/v1637137142/ysyag5w9gzxexp0ikago.jpg",
            title: "말 안듣는 아이 올바르게 혼내는 방법!",
            content: """
아이를 키우다 보면 야단을 쳐야 할 때가 있다. 말썽을 부리거나 말을 듣지 않을 때 화가 나기도 한다. 손쉬운 방법으로 혼을 내거나 벌을 세우지만 기분은 좋지 않다. 물론 사랑의 매는 효과가 있다. 그런데 때리다보면 습관이 되고 더 강도 높은 체벌을 해야 한다. 부모 역시 마음이 개운하지 않다. 그래서 아이의 기분을 달랜다고 무리한 요구를 들어주기도 한다.

자녀교육에서 아이를 훈육하는 방법에는 여러 가지가 있다. 말로 타이르거나 회초리를 들기도 한다. 벌로 외출을 못하게 하는 경우도 있다. 침묵으로 벌을 주기도 하고 좋아하는 것을 못하게 할 수도 있다. 모두 아이를 바꿔보려는 부모들의 방식이다. 다양한 부모의 훈육방식은 아이에게 많은 영향을 끼친다.

내 경우에도 아이들을 혼낼 때 체벌을 하거나 기합을 주기도 했다. 일명 군대식 기합이다.

아들에겐 매를 댄 적도 있고 딸에게는 얼차려를 주기도 했다. 일명 ‘엎드려뻗쳐’ 라는 기합이다. 내 딴에는 아이들에게 벌도 주고 체력도 기르기 위한 생각이었다. 그렇지만 가장 현명한 방법은 벌을 주지 않고 아이들을 대화로써 이끄는 것이다.
""",
            location: "경기도 수원시",
            humanCount: 18,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://file.mk.co.kr/meet/yonhap/2020/07/16/image_readtop_2020_727202_0_060111.jpg",
            title: "갑각류 알레르기 아이 엄마의 아이 식단 레시피",
            content: """
(아기반찬) 밀가루 NO! 달걀 NO! 연근 갈아 만든 새우파래연근전
로운이는 이유식 시작전 분유알레르기가 너무 심해 대학병원에서 피검사도 하고 ㅜㅜ
고생했던 적이 있었어요. 그래서 먹는거에 더 많이 신경을 쓰게 되었고 주위에도 밀가루나 달걀 알레르기가 있는 아가들이 많더라구요 ㅜㅜ
그래서 알레르기가 있는 아가들도 걱정없이 건강하게 먹을 수 있도록 연근을 활용해 전을 만들어보았습니다.
** 새우와 연근, 파래는 후기이유식 부터 섭취가능 하나 새우의 경우에는 갑각류 알레르기 반응이 있을수도 있으니 돌 이후 먹이길 권장합니다.
""",
            location: "인천광역시 부평구",
            humanCount: 10,
            category: .allergy
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://src.hidoc.co.kr/image/lib/2022/2/24/1645689830338_0.jpg",
            title: "알레르기 있는 우리 아이 무엇을 먹여야 할까?",
            content: """
우유만 먹으면 설사하는 우리 아이, 알레르기가 있어 외식하기 어려운 우리 아이

이렇게 식품 알레르기가 있는 아이를 위해 모든 걸 다 해주고 싶지만

마음처럼 되지 않는 부모님들.

​

어떻게 하면 우리 아이에게 안심하고 음식을 먹일 수 있을까요?

오늘도 나와 아이를 위한 슬기로운 영양생활, 식품 알레르기 Q&A 함께 보아요!
""",
            location: "서울특별시 종로구",
            humanCount: 13,
            category: .allergy
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027191553749430383/1.png",
            title: "똑똑한 우리 아이, 영재일까? 아닐까?",
            content: """
Q. 아이를 키우는 부모라면 누구나 한번쯤 ‘우리 아이 영재 아니야?’란 생각들 해보셨을 것 같은데요, 임서영 영재교육연구소에서는 어떤 기준으로 영재를 판단하게 되나요?

A. 저희 연구소뿐만 아니라 모든 사람, 전 세계 많은 사람들은 지능검사를 통해 영재 판별을 할 수 있습니다. 그 지능검사에서 5% 내외에 들어가는 아이들을 우리가 영재라고 얘기합니다. 영재 검사 방법이 세계적으로 200종류가 있습니다. 200종류 중에 석사나 박사논문을 쓸 때는 랭킹 1, 2, 3위 안에 들어가는 지능검사를 하게 되는데, 저희 연구소에서는 웩슬러지능검사와 카우프만지능검사가 굉장히 대중적이고 신뢰도가 높거든요, 그 두 가지의 지능검사를 통해서 아이한테 좌뇌와 우뇌가 어떻게 골고루 발달돼있는지 체크하게 되고 그중에서 5% 안에 들어가는 아이들을 우리가 영재라고 이야기합니다.

웩슬러아동지능검사는 전 세계적으로 가장 널리 사용되는 검사 중 하나입니다. 아동의 일반 지적 능력뿐만 아니라 잠재력까지 밝혀내는 검사로 전반적 인지적 기능에 대한 평가가 가능하고 지적 영역의 영재, 인지적 강점과 약점을 확인하기 위한 평가로도 활용됩니다.

한국카우프만아동지능검사는 영재아동 판별 및 좌뇌 IQ, 우뇌 IQ, 인지과정처리 IQ, 습득도 IQ 측정을 하는 검사인데요, 정보처리이론을 바탕으로 개발된 검사로서 기존 내용 중심의 검사와 달리 아이가 왜 그러한 정도의 수행을 하였는지에 대한 설명이 가능합니다. 만 3세부터 할 수 있는 검사로, 하위요인 점수를 기초로 아이의 강약 분석이 가능하며 구체적인 대안을 제시해주는 검사입니다.
""",
            location: "대구광역시 수성구",
            humanCount: 40,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027188668038926416/IMG_0010.jpg",
            title: "행복한 아이로 키우는 절대 방법",
            content: """

행복한 아이로 키우는 방법

1. 일찍자는아이가 부러운가 ? 그아이는 새벽같이 일어 난다. 몇시에 자는가보단 우리아이가 총 몇 시간을 자는가 체크해보자.

2. 안먹는다고 그래 굶어라 배고프면 먹겠지는 잘못된 생각. 어른과 달리 아이는 끼니를 거르면 배 고프단 생각 이 없어진다고 한다 항상위장이 가동 되어지게 간식을 꼭먹여라. (안먹는아이일수록틈 틈히주자)

3. 우리아이도 미적감각이 뛰어나다 예쁜그릇을 챙겨 주자 우리아이들 무시하지말자 예쁜거 좋아 하는거 귀여운게 뭔지 안다.

4. 우리아이는 미식가다. 한번먹은건 다음끼니때 잘안먹는다. 꼭맛있게는 아니더라도 약간씩 바꿔 주는 센스.

5. 흙을밟게 하자. 아이들은 양기가 넘친다 흙이 양기를 흡수한다. 정신이 산만한 아이일수록 흙을밟게 하자.

6. 우리아이 울음이 긴가? 엄마반응이 느린아이 들이 울음이 길다 나를돌아보자.

7. 아기들은 낮잠을 꼭재워야 한다. 안자면 밤에 푹자는게 아니라 오히려 힘들어 한다. 끙끙 대거 나 울거나 깨거나..

8. 밤에 늦게 재우면 다음날 늦게까지 안일어날 거 같지만 일어나는 시간은 거의 동일하다. 그냥 정해진 시간에 재워라.

9. 과일주스엔 섬유질이없다. 채로줘라 갈아서 주던지...

10. 아이가 갑자기 나를 미치도록 힘들게 하는가 ? 사실은 그냥 내가 힘든것이다. 무슨일로힘든지 알아보고 해결책을찾자 항상 나를 돌아보자.

11. 아이에게 길게 설교하는가? 우리아이는 맨끝 밖에 머리에 담지 못한다고 한다. 간략히 핵심만 말하자 특히 남아인 경우 더 그렇다.

12. 우리 아이는 이걸 안먹어 라고 단정짓지마라. 오늘안먹는 음식을 내일먹을수도있다 꾸준히시도하자.

13. 엄마의주도권을 다른사람에게 뺏기지 말자.

14. 내가 행복해야 아이도 행복하다. 엄마가 기분이 좋아야 아이도행복하다. 아이들은 밥먹고 크는 게 아니라 엄마의 기분과 사랑으로 자라난다.

15. 고기를 많이 먹이자 고기엔 철분이 많다 철분이 많 아야 빈혈이 오지않고 빈혈이 생기면 밥을안 먹 는다 빈혈이 심하면 산소공급을하는 혈액이 뇌까지 충분히 전달되지 못해 어지럽고 두뇌가 발달하는 어린 아이 경우 두뇌가 나빠진다

16. 반드시  해야할 일이라면 아이에게 양해를 구할 필요가 없다. 아이가 엄마 머리위에 있으면 휘둘리는 엄마도 아이도 결과적으로 절대 좋지않다. 이렇게 저렇게 해야한다고 바르게 지시해주어라.

17. 아이와 항상 놀아주려 진을 빼며 너무애쓰지 말아라 엄마의 역할 엄마가 하는일을 보여주는 모습도 좋은것 이다.

18. 아이가 잘못한 행동 때문에 미치도록 화가나는가 ?? 근데 한달전이나 일주일전 아이때문에 화난일 기억나는가?? 이순간도 마찬가지다. 화를 누를줄 알자 아이와 잠깐 분리되어있는 것도 좋다. 서로 다른방에서 숨돌리기 눈물그치면 나오기등.

18. 다른 사람들 앞에서 야단치는가? 아이에게도 자존심이있다 남편이 남앞에서 나를 야단 치는것 과 마찬가지 아무도 없는곳에서 잘타이르자.

19. 엉덩이나 등짝이라도 때리기 시작하면 횟수 가 늘어 나고 작은일에도 손이갈수있다 절때 때 리지말자
특히 머리나 얼굴은 절때 안된다. 인간의 보호본 능중에서 가장 중요한 곳으로 맞을시 모멸감과 분노가 생긴다고 한다

20. 손탄다고 안아주지 말라는데 많이 안아주자 그시기 도 금방 끝난다. 애정을 못받은 아이가 더 집착한다.

21. 우리아이(손주) 잘키우고 싶은가? 그러면 남편과 시부모가 아이엄마에게 잘해줘라. 그게 바로 자식(손주)을 위한길이다.

22. 아이가 무서워하고 불안해 하는것이 있으면 엄마가 무시하지말자 방법을 찾아주는것이 좋고 담고있고 떠올릴수있어야 극복도 가능하다 죽음 이나 귀신등등.

23. 감정을 읽어주자 그것이 좋은감정이든 나쁜 감정이든 그래야 감정컨트롤이 된다.

24. 사고를 엄마가 정리해주자 아 이래서 이렇고 이렇게됐구나 같은 .. 아이들은 그게 잘안된다고 한다.
""",
            location: "경상남도 양산시 평산동",
            humanCount: 30,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://www.amc.seoul.kr/asan/imageDown/healthstory/20151110?fileName=13923689.jpg",
            title: "우리 아이에게 맞는 알맞은 학습법",
            content: """
안녕하세요~ 스터디안 영어 수학 전문학원입니다. 이제 아이들이 기말고사에 본격적으로 들어가는 시기가 돌아왔네요.

​

 성적도 물론 중요하지만 아이들이 몸이 자라나기 시작하면서 감수성이 예민해지거나, 욱하거나, 자존감도 쉽게 낮아지면서 학부모님들이 아이들과의 관계에 어려움을 갖는 경우가 많습니다. 고운 말을 해도 시큰둥한 답변으로 돌아오거나, 훈계를 하고 싶어도 아이가 반항을 하거나, 아무 반응없이 무시하는 경우도 많죠.

​

사춘기 아이들은 이런 상황에서 보통 마음의 문을 닫거나, 자기만의 세계에 빠지는 경우도 많기 때문에, 아이와 학부모님 모두가 불안한 시기입니다. 아이와 어머님들 간의 관계가 당연히 안좋아질 수록 상황이 더 악화되기 때문에 아이들이 학습에도 소홀해지고, 친구 관계나 외형을 꾸미는 것 등에 관심을 갖는 일이 많아지는데요.

​

이럴 때일수록 학부모님들께서는 아이들에게 강하게 다그치기보다는 아이가 어떤 부분이 힘든지, 관심있는 것이 무엇인지 더 소통이 중요해지는 시기입니다. 사춘기 시기는 몸도 성장하지만 아이의 정체성, 인격이 본격적으로 형성되는 시기이기 때문에, 이 시간을 잘못 보내게 된다면 학습에도 손을 놓는 것을 넘어서 크게 엇나갈 수 있습니다.

​


물론 학부모님들 입장에서는 지금 같은 시기에 바로 잡지 않으면 아이가 삐뚤어질까 하는 마음에서 하시는 말씀이지만, 사춘기 아이들을 대할 때에 아이가 심기를 건드린다거나 예민한 반응을 보일 때에 강압적인 반응으로 대처하신다면 아이의 반항심을 더 높이거나 상황을 악화시키는 경우가 많습니다. 같은 이유로 흔히 '엄친아'의 예시를 들면서 다른 아이와 본인의 아이를 비교하면서 훈육한다면 아이들에게도 큰 상처가 되는 경우가 많습니다.

​

그렇다면 사춘기 우리아이, 학부모님들과 더 관계가 좋아지고 행복한 기간이 되기 위해서는 어떻게 훈육해야할까요?

​

일단 어떤 행동들이 아이의 심기를 건드리는지 파악한 후에 아이의 심기를 최대한 건들지 않도록 그 행동을 하지 않는게 중요하겠죠. 또한 아이가 화가 나서 난폭한 행동을 하려 할 때에는 결코 강압적으로 나와서는 안되고, 한 발 물러서서 아이가 진정할 수 있도록 화를 가라 앉히는 것이 중요합니다. 아이가 흥분을 가라앉히고 진정이 된다면 부드럽게 잘 타이르는 것이 가장 이상적인 방법입니다.

​

특히 아이들을 타이르실 때에는 아이들을 질책하거나 잘못을 따지는 취지로 말하는 것보다는 아이의 입장에서 화가 나는 것은 이해하지만, 너무 화내지 않았으면 좋겠다는 식의 대화가 진행되어야 합니다. 사춘기의 아이들은 똑같이 화가 나더라도, 더 과격한 경향을 보이기 때문에 여기서 잘못을 더 따지는 경우 아이가 더 과격해지거나 폭력적인 습관이 생길 수도 있습니다.

​

아이가 짜증이 많아지거나, 화를 내는 경우가 많아지는 것도 너무 걱정하지 않으셔도 되는데요, 호르몬 변화를 겪으면서 아이가 일시적으로 그러는 것 뿐이기 때문에  전문가들은 오히려 화를 속으로 삭히는 것보다는 그때그때 터뜨려서 감정 표현을 하는 것이 오히려 다행으로 여기거나 사춘기에 걸맞게 잘 자라고 있다는 증거로 보기도 합니다. 화를 쌓아오다가 어느 날 폭발하게 되면 더 심각한 결과가 많이 돌아오기 때문입니다.
""",
            location: "서울특별시 강남구",
            humanCount: 20,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027193840152625162/Screen_Shot_2022-10-05_at_21.21.24.png",
            title: "또래보다 작은 아이 성장 부진일까?",
            content: """
사람마다 키가 크는 시기는 조금씩 다르기 때문에 또래보다 키가 작다고 지나치게 걱정할 필요는 없다. 다만, 또래보다 과도하게 키가 작아 '저신장증'에 속한다면 주의가 필요하다. 이 경우, 아이의 성장판이 닫히기 전에 성장호르몬 치료 등을 고려해야 하기 때문이다. 저신장증의 진단 기준과 치료법에 관해 알아봤다.
저신장증은 다음과 같은 경우에 의심할 수 있다. ▲연간 성장 속도가 4cm 미만으로 자라거나 ▲또래 평균 키보다 10cm 이상 작거나 ▲지속해서 반에서 키 번호가 1~2번이거나 ▲잘 자라다가 갑자기 성장 속도가 줄어들거나 ▲키가 잘 자라지 않으면서 매우 피곤하거나, 두통, 시력 감소가 있을 때이다. 이 경우 소아청소년과 전문의와 상담하는 게 좋지만, 모든 저신장증 아이들이 치료를 받아야 하는 것은 아니므로 지나친 걱정은 말자.
유전적으로 저신장이거나, 체질적으로 성장 지연이 나타났다면 성장호르몬 치료를 받지 않아도 된다. '성장호르몬 분비'의 문제가 아니기 때문이다. 만약 키에 영향을 주는 질병이 있다면 이를 먼저 치료해야 한다. 갑상선기능저하증, 쿠싱증후군, 성조숙증, 측만증 등이다. 만성 장 질환, 천식, 알레르기, 아토피 등을 치료하지 않으면 성장 장애를 일으키는 원인이 되기도 한다. 앞서 언급한 원인이 아니라면 성장호르몬 치료가 방법이 될 수 있다. 성장호르몬 치료는 성장판이 이미 닫힌 후에는 효과가 없고, 1년 이상 투여해야 효과를 기대할 수 있기 때문에 성장판이 충분히 남아 있는지 확인한 후 치료를 결정해야 한다.
'저신장증' 정도는 아니더라도, 자녀가 또래보다 키가 작아 걱정이라면 자녀의 '숙면'에 신경 써보자. 잠이 오지 않는 아이를 무조건 일찍 재우려고 하기보다, 깊게 잠들 수 있는 환경을 만들어주는 게 좋다. 부모가 늦게까지 TV를 보느라 불을 켜 놓는다거나, 잠들기 전 과도하게 PC나 스마트폰을 사용하지 않도록 지도해야 한다. 낮 시간에 신체 활동량을 늘려주는 것도 방법이다. 운동은 성장판과 골격을 자극해 성장호르몬 분비를 돕는다. 잠들기 3~4시간 전에 운동을 하면 오히려 숙면을 방해할 수 있어 주의한다. 운동은 하루에 30분 이상, 주 5회 이상 규칙적으로 하는 것이 적당하다.
""",
            location: "서울특별시 강남구",
            humanCount: 20,
            category: .etc
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "http://image.dongascience.com/Photo/2018/01/1515739358349[1].jpg",
            title: "말문이 트이지 않는 우리 아이, 자폐 스펙트럼일까? ",
            content: """
“24개월 아이가 이름을 불러도 반응이 없고, 잘 웃지 않으며, 특정 행동을 반복, 집착하는 경향이 있습니다. 우리 아이가 자폐스펙트럼장애일까요?”

자폐스펙트럼장애는 증상과 중증도가 다양하고, 시기나 발달 수준, 환경에 따라 증상이 다를 수 있어 진단이 쉽지 않다. 자폐스펙트럼장애에 대해 순천향대 부천병원 정신건강의학과 이지원 교수와 함께 알아본다.

자폐스펙트럼장애(Autism Spectrum Disorder, ASD)는 사회적 상호작용과 의사소통에 지속적인 결함을 보이면서 제한적이고 반복적인 행동, 흥미, 활동을 보이는 발달 장애를 말한다. 최근에는 유병률이 많이 늘어 대략 50명 중 2명이 ‘자폐스펙트럼장애’일 정도로 흔한 질환이다. 변화를 극도로 싫어하고 시각·청각·촉각과 같은 감각 정보에 대해 과잉·과소 반응을 하는 행동 특징은 모든 사람에게 조금씩 나타날 수 있으나, 일상생활이 어려울 정도로 심하고 사회적 의사소통과 상호작용 결함이 함께 나타날 때 ‘자폐스펙트럼장애’로 진단한다.
""",
            location: "대구광역시 중구",
            humanCount: 20,
            category: .autism
        ),
        .init(
            id: UUID().uuidString,
            imageUrlString: "https://newsimg-hams.hankookilbo.com/2021/12/20/f513ba1d-3bf4-496f-8292-ac474a6b7d6c.jpg",
            title: "우리 자녀의 아토피가 낫지 않는 이유",
            content: """
본 연구에서는 아토피 증상이 있는 영유아기 자녀의 부모가 양육 과정에서 경험하는 어려움과 지원에 대한 요구를 알아보기 위하여 아토피 증상 영유아기 자녀를 양육하는 12인의 부모를 대상으로 면접을 실시하였다. 연구결과 아토피 자녀를 양육하는 부모들은 자녀의 가려움증으로 인해 잠을 자지 못하는 고통, 죄책감이나 염려로 인한 심리적 고통, 신뢰할 수 있는 치료 정보의 부족, 아토피 치료로 인한 장기 결석과 교사의 인식 부족, 아토피 관리를 위한 부탁이 잘 수용되지 않음으로 인한 어려움, 유아교육기관에서 제공하는 음식과 관련된 어려움, 그리고 또래관계에서의 어려움을 경험하고 있었다. 둘째, 아토피 증상이 있는 영유아기 자녀를 양육하는 부모들이 원하는 지원에는 의료비 지원, 아토피 관련 부모교육과 심리치료, 아토피 자녀를 믿고 맡길 수 있는 유아교육기관 운영, 유아교사와 유아들을 위한 아토피 관련 교육, 그리고 자녀의 아토피 관리를 위한 가정과 기관의 협조 체계 강화가 포함되었다.
""",
            location: "대전광역시 중구",
            humanCount: 20,
            category: .atopy
        )

    ]
    @Published var illnessList: [CommunityModel] = []
    @Published var selectedCategory: FeatureCategory?
    
    
    func fetchAppear() {
        illnessList = list
    }
    
    func filterCategory() {
        if let selectedCategory {
            illnessList = list.filter { $0.category == selectedCategory }
        } else {
            illnessList = list
        }
    }

    func fetchFilterAdhd() {
        illnessList = list.filter { $0.category == .adhd }
    }

    func fetchFilterAllergy() {
        illnessList = list.filter { $0.category == .allergy }
    }

    func fetchFilterAutism() {
        illnessList = list.filter { $0.category == .autism }
    }
    
    func fetchFilterAtopy() {
        illnessList = list.filter { $0.category == .atopy }
    }
    
    func fetchFilterEtc() {
        illnessList = list.filter { $0.category == .etc }
    }

    func filterSearch() {
        if serach.isEmpty {
            fetchAppear()
        } else {
            
        }
    }
}
