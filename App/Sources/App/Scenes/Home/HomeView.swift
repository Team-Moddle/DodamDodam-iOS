import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var num: Int = 0

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 16)
                HStack(spacing: 7) {
                    ForEach(FeatureCategory.allCases, id: \.self) { item in
                        tagButton(category: item)
                    }
                }
                .padding(.horizontal, 16)
                List(viewModel.illnessList, id: \.id) { model in
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
    
    @ViewBuilder
    func tagButton(category: FeatureCategory) -> some View {
        Text(category.rawValue)
            .font(.system(size: 12, weight: .medium))
            .foregroundColor(.white)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(viewModel.selectedCategory == category ? Color("FFC85C") : .gray)
            .cornerRadius(17)
            .frame(height: 27)
            .onTapGesture {
                if viewModel.selectedCategory == category {
                    viewModel.selectedCategory = nil
                } else {
                    viewModel.selectedCategory = category
                }
                viewModel.filterCategory()
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
