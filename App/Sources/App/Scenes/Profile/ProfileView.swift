import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ProfileInformationView(profile: viewModel.profile)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 21)
                HStack {
                    Text("자녀 정보")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(Color("6B6B6B"))
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
