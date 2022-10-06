import SwiftUI

struct ChatCell: View {
    let chatData: ChatListModel
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: chatData.imageUrlString)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                } placeholder: {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(10)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                .padding(.trailing, 20)
            VStack(
                alignment: .leading,
                spacing: 0
            ) {
                HStack(
                    alignment: .center,
                    spacing: 0
                ) {
                    Text(chatData.name)
                        .font(.system(size: 16, weight: .medium))
                        .padding(.trailing, 4)
                    Text("\(chatData.address) · \(chatData.time)")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color("797979"))
                }
                .padding(.top, 11)
                Spacer()
                    .frame(height: 8)
                Text(chatData.message)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.bottom, 15)
            }
        }
        .frame(height: 84)
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell(chatData: .init(
            id: 0,
            imageUrlString: "",
            name: "김기영",
            address: "주안동",
            time: "방금전",
            message: "안녕 반가워"
        ))
    }
}
