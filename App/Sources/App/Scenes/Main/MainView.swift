import SwiftUI

struct MainView: View {
    @State private var selectedIndex = 0
    let tabImageNames = ["house", "message", "doc.plaintext", "building.columns.circle", "person"]
    let tabFillImageNames = ["house.fill", "message.fill", "doc.plaintext.fill", "building.columns.circle.fill", "person.fill"]
    let tabNames = ["홈", "채팅", "정보글", "시설", "프로필"]

    var body: some View {
        ZStack {
            switch selectedIndex {
            case 0:
                HomeView()
            case 1:
                ChatListView()
            case 2:
                InformationView()
            case 3:
                FacilityView()
            default:
                ProfileView()
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ForEach(0..<tabImageNames.count, id: \.self) { num in
                        VStack(spacing: 0) {
                            Image(systemName: selectedIndex == num ? tabFillImageNames[num] : tabImageNames[num])
                                .frame(width: 35, height: 35)
                                .foregroundColor(selectedIndex == num ? Color("FFC85C") : Color.black)
                            Text(tabNames[num])
                                .font(.system(size: 15))
                                .foregroundColor(selectedIndex == num ? Color("FFC85C") : Color.black)
                        }
                        .onTapGesture {
                            selectedIndex = num
                        }
                        Spacer()
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 25)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("6B6B6B"), lineWidth: 0.2)
                )
            }
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
