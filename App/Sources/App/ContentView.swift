import SwiftUI

struct ContentView: View {
    @AppStorage("scene") var scene: SceneState = .intro
    var body: some View {
        MainView()
//        switch scene {
//        case .intro:
//            IntroView()
//        case .main:
//            MainView()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
