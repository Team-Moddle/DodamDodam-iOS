import SwiftUI

struct InformationDetailView: View {
    @StateObject var viewModel: InformationDetailViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(viewModel.information.title)
                    .font(.largeTitle)
                HStack(spacing: 12) {
                    Label("지민맘", systemImage: "person.crop.circle")
                    Label {
                        Text("\(viewModel.information.likeCount)")
                    } icon: {
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                    }
                    Spacer()
                    Text("2022.10.06")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.top, 1)
                AsyncImage(url: URL(string: viewModel.information.imageUrlString)) { image in
                    image
                        .resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(maxWidth: .infinity)

                Text(viewModel.information.content)
                    .lineLimit(nil)
                    .foregroundColor(.gray)
                    .padding(.top, 40)
            }
            .padding(.horizontal, 16)
        }
    }
}

struct InformationDetail_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView(viewModel: .init(information: .init(id: 0, imageUrlString: "https://avatars.githubusercontent.com/u/74440939?v=4", title: "asdf", content: "asd", likeCount: 2)))
    }
}
