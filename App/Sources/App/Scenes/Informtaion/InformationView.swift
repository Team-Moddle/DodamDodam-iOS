import SwiftUI
import Foundation

struct InformationView: View {
    @StateObject var viewModel = InformationViewModel()
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    ForEach(FeatureCategory.allCases, id: \.rawValue) { category in
                        tagButton(category: category)
                    }
                }
                .padding(.vertical, 12)
                List(viewModel.searchList, id: \.id) { info in
                    ZStack {
                        NavigationLink {
                            InformationDetailView(viewModel: .init(information: info))
                        } label: {
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(.plain)
                        
                        HStack(alignment: .center) {
                            AsyncImage(
                                url: URL(string: info.imageUrlString)) { image in
                                    image
                                        .resizable()
                                        .frame(width: 44, height: 53)
                                        .scaledToFit()
                                } placeholder: {
                                    Color.gray
                                }
                                .cornerRadius(5)
                                .frame(width: 44, height: 53)
                            VStack(
                                alignment: .leading,
                                spacing: 0
                            ) {
                                Text(info.title)
                                    .font(.system(size: 14, weight: .bold))
                                Text(info.content.prefix(20))
                                    .font(.system(size: 13))
                                    .padding(.top, 12)
                            }
                            Spacer()
                            VStack {
                                Spacer()
                                    .frame(height: 40)
                                HStack {
                                    Image(systemName: "heart")
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.red)
                                    Text("\(info.likeCount)")
                                        .font(.system(size: 13, weight: .light))
                                }
                            }
                            .padding(.trailing, 18)
                        }
                        .frame(height: 73)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color("DADADA"))
                        )
                    }
                    .padding(.bottom, 8)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
                .listStyle(.inset)
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
            }
            .padding(.horizontal, 16)
        }
        .onAppear {
            viewModel.fetchAppear()
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

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
