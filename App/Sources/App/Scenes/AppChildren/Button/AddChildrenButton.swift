import SwiftUI

struct AddChildrenButton: View {
    @Binding var isSelected: Bool
    let name: String
    var body: some View {
        HStack(alignment: .center, spacing: 13) {
            Button {
                isSelected.toggle()
            } label: {
                Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                    .resizable()
                    .foregroundColor(isSelected ? Color("FFC85C") : Color("D9D9D9"))
                    .frame(width: 11, height: 11)
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 16)) .foregroundColor(isSelected ? .black : Color("D9D9D9"))
            }
        }
        .background(Color.white)
    }
}

struct AddChildrenButton_Previews: PreviewProvider {
    static var previews: some View {
        AddChildrenButton(isSelected: .constant(false), name: "이름")
    }
}
