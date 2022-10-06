import SwiftUI

struct ProfileInformationView: View {
    let profile: ProfileModel
    var body: some View {
        HStack {
            Image(uiImage: UIImage(data: profile.imageUrlString) ?? UIImage())
                .resizable()
                .frame(width: 65, height: 65)
                .cornerRadius(32.5)
            Spacer()
                .frame(width: 14)
            VStack(
                alignment: .leading,
                spacing: 0
            ) {
                Text(profile.name)
                    .font(.system(size: 20, weight: .medium))
                Spacer()
                    .frame(height: 11)
                Text(profile.address)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color("797979"))
            }
            Spacer()
            NavigationLink {
                EditProfileView(viewModel: EditProfileViewModel(prevProfile: profile))
            } label: {
                VStack {
                    Spacer()
                        .frame(height: 13)
                    Text("수정")
                        .font(.system(size: 14, weight: .medium))
                        .underline()
                    Spacer()
                }
            }
        }
        .padding(.leading, 12)
        .padding(.trailing, 24)
        .padding(.vertical, 15)
        .frame(height: 96)
        .background(Color("FFF6E1"))
        .cornerRadius(20)
    }
}

struct ProfileInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInformationView(profile: .init(imageUrlString: Data(), name: "기무기영", address: "중국 상하이"))
    }
}
