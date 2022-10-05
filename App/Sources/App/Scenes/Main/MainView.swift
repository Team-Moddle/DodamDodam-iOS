import SwiftUI

struct MainView: View {
    @State private var selectedIndex = 0
    let tabImageNames = ["house.fill", "message", "building.columns.circle", "person"]
    let tabNames = ["홈", "채팅", "시설", "프로필"]

    var body: some View {
        ZStack {
            switch selectedIndex {
            case 0:
                HomeView()
            case 1:
                ChatView()
            case 2:
                LocalPlaceView()
            default:
                ProfileView()
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ForEach(0..<tabImageNames.count) { num in
                        VStack(spacing: 0) {
                            Image(systemName: tabImageNames[num])
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
                .cornerRadius(10)
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