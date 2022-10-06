import SwiftUI

struct DetailCommunityView: View {
    @StateObject var viewModel: DetailCommunityViewModel
    @Environment(\.dismiss) var dismiss

    init(community: CommunityModel) {
        _viewModel = StateObject(wrappedValue: DetailCommunityViewModel(community: community))
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topTrailing) {
                VStack {
                    AsyncImage(url: URL(string: viewModel.community.imageUrlString)) { image in
                        image
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .scaledToFit()
                    } placeholder: {
                        Color.gray
                            .frame(maxWidth: .infinity)
                    }
                    .offset(y: 30)
                    
                    VStack(alignment: .leading) {
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 50, height: 3)
                            .padding(.top, 15)
                            .cornerRadius(5)
                        HStack {
                            Label("지민맘", systemImage: "person.crop.circle")
                            Spacer()
                        }
                        .padding(.top, 20)
                        
                        Text(viewModel.community.title)
                            .font(.largeTitle)
                        Text(viewModel.community.location)
                            .font(.body)
                            .foregroundColor(.gray)
                        HStack(alignment: .bottom) {
                            Text("5.0")
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("FFEF5C"))
                            }
                            Text("(6)")
                                .foregroundColor(.blue)
                                .font(.caption)
                        }
                        .padding(.top, 2)
                        Text(viewModel.community.content)
                            .padding(.top, 5)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                        Button {
                            
                        } label: {
                            Label("신청하기", systemImage: "airplane")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .background(Color("FFC85C"))
                                .cornerRadius(16)
                        }
                    }
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .offset(y: -30)
                    .cornerRadius(10, corners: [.topLeft, .topRight])
                }
                Label("\(Int.random(in: 1...viewModel.community.humanCount))/\(viewModel.community.humanCount)", systemImage: "person")
                    .offset(y: 50)
                    .padding(.trailing, 6)
                    .foregroundColor(.white)
            }
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

struct DetailCommunityView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCommunityView(community: .init(
            id: UUID().uuidString,
            imageUrlString: "https://avatars.githubusercontent.com/u/74440939?v=4",
            title: "asd",
            content: "Asd",
            location: "asd",
            humanCount: 2
        ))
    }
}
