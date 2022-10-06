//
//  FacilityDetailView.swift
//  DodamDodam
//
//  Created by 김상금 on 2022/10/06.
//  Copyright © 2022 org.Moddle. All rights reserved.
//

import SwiftUI

struct FacilityDetailView: View {
    let data: LocationModel
    let image: [String] = [
        "map",
        "map1",
        "map2",
        "map3",
        "map4",
    ]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack {
                ZStack{
                    AsyncImage(
                        url: URL(string: data.imageUrlString)) { image in
                            image
                                .resizable()
                                .frame(maxWidth: .infinity)
                                .scaledToFit()
                        } placeholder: {
                            Color.gray
                        }
                        .overlay {
                            Rectangle()
                                .foregroundColor(Color.black.opacity(0.5))
                        }
                }
                HStack{
                    Text(data.name)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    Spacer()
                    HStack {
                        Image(systemName: "message")
                            .foregroundColor(.gray)
                        Text("\(data.commentCount)")
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                        Text("\(data.heartCount)")
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                HStack {
                    VStack(alignment: .leading, spacing: 3) {
                        Text("전화번호")
                            .font(.system(size: 13))
                            .fontWeight(.regular)
                            .foregroundColor(.gray)
                        Text("위치")
                            .font(.system(size: 13))
                            .fontWeight(.regular)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.trailing, 4)
                    VStack(alignment: .leading, spacing: 3) {
                        Text("010-\(String(Int.random(in: 1000...9999)).replacingOccurrences(of: ",", with: ""))-\(String(Int.random(in: 1000...9999)).replacingOccurrences(of: ",", with: ""))")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                        Text(data.address)
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.leading, 20)
                HStack{
                    RoundedRectangle(cornerRadius: 17)
                        .frame(width: 46, height: 25)
                        .foregroundColor(Color("A4B3DA"))
                        .overlay {
                            Text(data.category.rawValue)
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    Spacer()
                }
                .padding(.leading, 20)
                
                HStack {
                    Rectangle()
                        .frame(width: 50, height: 1)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.top, 15)
                .padding(.leading, 20)
                
                HStack {
                    Text("오시는 길")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                    Spacer()
                }
                .padding(.top, 3)
                .padding(.leading, 20)
                
                Image(image.randomElement() ?? "")
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                            Text("시설")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            
        }
    }
}

struct FacilityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FacilityDetailView(data: .init(
            id: 0,
            name: "안녕",
            address: "서울특별시 강남구",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            commentCount: 1,
            heartCount: 1
        ))
    }
}
