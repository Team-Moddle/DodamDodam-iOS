import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 16)
                List(viewModel.list, id: \.id) { model in
                    ZStack {
                        NavigationLink {
                            DetailCommunityView(community: model)
                        } label: {
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(.plain)
                        CommunityCell(data: model)
                    }
                    .padding(.bottom, 8)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
                .listStyle(.inset)
                .padding(.horizontal, 20)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    SearchBar(search: $viewModel.serach) {
                        print(viewModel.serach)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
