//
//  FacilityDetailViewModel.swift
//  DodamDodam
//
//  Created by 김상금 on 2022/10/06.
//  Copyright © 2022 org.Moddle. All rights reserved.
//

import Foundation

class FacilityDetailViewModel: ObservableObject {
    @Published var list: [FacilityDetailModel] = [
        .init(
            id: 0,
            imageUrlString: "",
            title: "양산 백병원",
            phoneNum: "010-9661-7281",
            location: "경상남도 양산시  평산회야로 167",
            tag: .hospital,
            latitude: "35.378104895854",
            hardness: "129.15308798269",
            commentCount: 1,
            heartCount: 1
        ),
    ]
    
}
