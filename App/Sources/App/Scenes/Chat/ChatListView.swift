import SwiftUI

struct ChatListView: View {
    @StateObject var viewModel = ChatListViewModel()
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 16)
                List(viewModel.list, id: \.id) { model in
                    NavigationLink {
                        ChatDetailView(chatData: model)
                    } label: {
                        ChatCell(chatData: model)
                            .listRowInsets(EdgeInsets())
                            .listRowSeparator(.hidden)
                    }

                }
                .listStyle(.inset)
                .padding(.horizontal, 20)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
