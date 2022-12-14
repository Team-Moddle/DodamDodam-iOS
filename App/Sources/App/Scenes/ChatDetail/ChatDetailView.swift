import SwiftUI

import SwiftyChat

struct ChatDetailView: View {
    @Environment(\.dismiss) var dismiss
    let chatData: ChatListModel

    var body: some View {
        Image("Chat")
            .resizable()
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .onTapGesture {
                dismiss()
            }
    }
}

struct ChatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChatDetailView(
            chatData: .init(
                id: UUID().uuidString,
                imageUrlString: "",
                name: "김기영",
                address: "인천 미추홀구",
                time: "방금 전",
                message: ""
            ))
    }
}
