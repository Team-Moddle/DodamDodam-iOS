import SwiftUI

struct ProfileCell: View {
    let child: ChildModel
    @State var isSelected: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(child.name)
                    .font(.system(size: 16))
                Spacer()
                Button {
                    isSelected.toggle()
                } label: {
                    Image(systemName: isSelected ? "chevron.up" : "chevron.down")
                        .foregroundColor(Color("898989"))
                }
            }
            Text(child.birthDay)
                .font(.system(size: 16))
            Text(child.personality)
                .font(.system(size: 16))
                .foregroundColor(Color("585858"))
            if isSelected {
                Color(.gray)
                    .frame(width: .infinity, height: 1)
                ProfileBungInfoView(isSelected: child.bool1, name: "천식")
                ProfileBungInfoView(isSelected: child.bool2, name: "알레르기성 비염")
                ProfileBungInfoView(isSelected: child.bool3, name: "아토피 피부염")
                ProfileBungInfoView(isSelected: child.bool4, name: "기관지염")
                ProfileBungInfoView(isSelected: child.bool5, name: "기타")
                if child.bool5 {
                    Text(child.guitar)
                        .font(.system(size: 16))
                        .underline()
                        .padding(.leading, 27)
                }
            }
        }
        .padding(12)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("DADADA"), lineWidth: 1)
        )
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell(
            child: .init(
                name: "김기영",
                birthDay: "2005.05.30",
                personality: "까칠함",
                bool1: false,
                bool2: false,
                bool3: false,
                bool4: true,
                bool5: true,
                guitar: "허리 디스크"
            ))
    }
}
