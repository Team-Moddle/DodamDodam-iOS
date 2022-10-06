//
//  FacilityDetailModel.swift
//  DodamDodam
//
//  Created by 김상금 on 2022/10/06.
//  Copyright © 2022 org.Moddle. All rights reserved.
//

import Foundation

struct FacilityDetailModel {
    let id: Int
    let imageUrlString: String
    let title: String
    let phoneNum: String
    let location: String
    let tag: Tag
    let latitude: String
    let hardness: String
    let commentCount: Int
    let heartCount: Int
}

enum Tag: String {
    case hospital = "병원"
    case playGround = "놀이시설"
    case restaurant = "식당"
}
