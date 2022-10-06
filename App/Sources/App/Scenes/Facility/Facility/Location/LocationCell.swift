import SwiftUI

struct LocationCell: View {
    let data: LocationModel
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: data.imageUrlString)
            ) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 99, height: 83)
                } placeholder: {
                    Image(systemName: "building.2")
                        .resizable()
                        .foregroundColor(Color(uiColor: .lightGray))
                        .background(.gray)
                        .frame(width: 99, height: 83)
                }
            .frame(width: 99, height: 83)
            .cornerRadius(5)
            .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text(data.name)
                    .font(.system(size: 14, weight: .medium))
                Text(data.address)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color("969696"))
                Spacer()
                    .frame(height: 33)
                HStack(spacing: 0) {
                    Text(data.featureCategory.rawValue)
                        .font(.system(size: 8, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .frame(height: 18)
                        .background(Color("A4B3DA"))
                        .cornerRadius(17)
                        .padding(.trailing, 4)
                    Spacer()
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 17, height: 17)
                        .foregroundColor(.gray)
                        .padding(.trailing, 4)
                    Text("\(data.commentCount)")
                        .font(.system(size: 11))
                    Spacer()
                        .frame(width: 6)
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 17, height: 17)
                        .foregroundColor(Color("Main01"))
                        .padding(.trailing, 4)
                    Text("\(data.heartCount)")
                        .font(.system(size: 11))
                }
            }
        }
        .frame(height: 110)
        .padding(.horizontal, 13)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("DADADA"), lineWidth: 1)
        )
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(data: .init(
            id: UUID().uuidString,
            name: "안녕",
            address: "서울특별시 강남구",
            imageUrlString: "https://cdn.discordapp.com/attachments/1026851673001431091/1027230330891010249/unknown.png",
            category: .hospital,
            featureCategory: .adhd,
            commentCount: 1,
            heartCount: 1
        ))
    }
}
