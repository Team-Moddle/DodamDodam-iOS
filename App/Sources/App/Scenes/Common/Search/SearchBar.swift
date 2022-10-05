import SwiftUI

struct SearchBar: View {
    @Binding var search: String
    let action: () -> Void
    var body: some View {
        HStack {
            TextField(
                "원하는 키워드를 입력해주세요.",
                text: $search
            )
            .font(.system(size: 14, weight: .light))
            Button(action: action) {
                Image(systemName: "magnifyingglass")
                    .frame(width: 19, height: 19)
                    .scaledToFit()
                    .foregroundColor(Color.gray)
            }
        }
        .padding(.horizontal, 8)
        .frame(width: 370, height: 46)
        .background(Color("EEEEEE"))
        .cornerRadius(5)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(
            search: .constant(""),
            action: { }
        )
    }
}
