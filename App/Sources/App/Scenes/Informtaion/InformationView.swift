import SwiftUI

struct InformationView: View {
    @StateObject var viewModel = InformationViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.infoList, id: \.id) { info in
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
