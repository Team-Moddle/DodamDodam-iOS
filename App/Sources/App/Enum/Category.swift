import Foundation

enum Category: String, CaseIterable {
    case hospital = "병원"
    case restaurant = "식당"
    case playground = "놀이시설"
    case all = "전체"
}

enum FeatureCategory: String, CaseIterable {
    case adhd = "ADHD"
    case allergy = "알레르기"
    case autism = "자폐"
    case atopy = "아토피"
    case etc = "기타"
    case all = "전체"
}
