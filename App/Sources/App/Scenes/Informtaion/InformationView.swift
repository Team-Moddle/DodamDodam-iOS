import SwiftUI

struct InformationView: View {
    @StateObject var viewModel = InformationViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.infoList, id: \.id) { info in
                ZStack {
                    NavigationLink {
                        InformationDetailView(viewModel: .init(information: info))
                    } label: {
                        EmptyView()
                    }
                    .opacity(0)
                    
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
                            .padding(.trailing, 19)
                            .padding(.leading, 12)
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
            .padding(.horizontal, 20)
            .padding(.top, 12)
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
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
