import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 16)
                HStack(spacing: 7) {
                    Spacer()
                        .frame(width: 20)
                    Button {
                        
                    } label: {
                        Text("알레르기")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(.gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Button {
                        
                    } label: {
                        Text("ADHD")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(.gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Button {
                        
                    } label: {
                        Text("코로나")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(.gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Spacer()
                    Button {
                        print("!!!!!")
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 15, height: 15)
                            .padding(8)
                    }
                    Spacer()
                        .frame(width: 20)
                    
                }
                List(viewModel.searchList, id: \.id) { model in
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
                .padding(.top, 16)
                .listStyle(.inset)
                .padding(.horizontal, 20)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    SearchBar(search: $viewModel.serach) {
                        print(viewModel.serach)
                    }
                    .onChange(of: viewModel.serach) { _ in
                        viewModel.filterSearch()
                    }
                }
            }
            .onAppear {
                viewModel.fetchAppear()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
