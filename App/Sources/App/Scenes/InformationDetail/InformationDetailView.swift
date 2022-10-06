import SwiftUI

struct InformationDetailView: View {
    @StateObject var viewModel: InformationDetailViewModel
    @Environment(\.dismiss) var dismiss
    
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
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct InformationDetail_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView(viewModel: .init(information: .init(id: UUID().uuidString, imageUrlString: "https://avatars.githubusercontent.com/u/74440939?v=4", title: "asdf", content: "asd", likeCount: 2, category: .etc)))
    }
}
