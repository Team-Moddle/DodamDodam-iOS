import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 19)
                ProfileInformationView(profile: viewModel.profile)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 21)
                HStack {
                    Text("자녀 정보")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(Color("6B6B6B"))
                    Spacer()
                    NavigationLink {
                        AddChildrenView()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal, 20)
                Spacer()
                    .frame(height: 13)
                List(viewModel.child, id: \.name) {
                    ProfileCell(child: $0)
                        .padding(.bottom, 13)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                }
                .padding(.horizontal, 20)
                .listStyle(.inset)
            }
            .navigationTitle("내정보")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
