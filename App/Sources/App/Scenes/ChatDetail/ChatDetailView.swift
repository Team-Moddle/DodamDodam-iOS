import SwiftUI

import SwiftyChat

struct ChatDetailView: View {
    let chatData: ChatListModel

    var body: some View {
        VStack {
            
        }
    }
}

struct ChatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChatDetailView(
            chatData: .init(
                id: 0,
                imageUrlString: "",
                name: "김기영",
                address: "인천 미추홀구",
                time: "방금 전",
                message: ""
            ))
    }
}
