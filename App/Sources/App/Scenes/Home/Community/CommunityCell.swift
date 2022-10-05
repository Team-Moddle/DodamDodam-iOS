import SwiftUI

struct CommunityCell: View {
    let data: CommunityModel

    var body: some View {
        HStack(alignment: .center) {
            AsyncImage(
                url: URL(string: data.imageUrlString)) { image in
                    image
                        .scaledToFit()
                } placeholder: {
                    Color.gray
                }
                .cornerRadius(5)
                .frame(width: 44, height: 53)
                .padding(.trailing, 19)
                .padding(.leading, 12)
            VStack(
                alignment: .leading,
                spacing: 0
            ) {
                Text(data.title)
                    .font(.system(size: 14, weight: .bold))
                Text(data.location)
                    .font(.system(size: 13))
                    .padding(.top, 12)
            }
            Spacer()
            VStack {
                Spacer()
                    .frame(height: 40)
                HStack {
                    Image(systemName: "person")
                        .frame(width: 10, height: 10)
                    Text("\(data.humanCount)")
                        .font(.system(size: 13, weight: .light))
                }
            }
            .padding(.trailing, 18)
        }
        .frame(height: 73)
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.gray)
        )
    }
}

struct CommunityCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCell(data: .init(
            imageUrlString: "",
            title: "우리 아이 ADHD일까요?",
            location: "서울특별시 강남구",
            humanCount: 15
        ))
    }
}
