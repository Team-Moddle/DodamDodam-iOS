import SwiftUI

struct ProfileBungInfoView: View {
    let isSelected: Bool
    let name: String

    var body: some View {
        HStack(alignment: .center, spacing: 13) {
            Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                .resizable()
                .foregroundColor(isSelected ? Color("FFC85C") : Color("D9D9D9"))
                .frame(width: 11, height: 11)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 16)) .foregroundColor(isSelected ? .black : Color("D9D9D9"))
            }
        }
        .background(Color.white)
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBungInfoView(isSelected: false, name: "ADGD")
    }
}
