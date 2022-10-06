import Combine
import Foundation
import SwiftUI
import FirebaseAuth

final class IntroViewModel: ObservableObject {
    @AppStorage("scene") var scene: SceneState = .intro
    @Published var nonce = ""
    
    init() {
//        scene = AuthService.shared.checkIsLoggedIn() ? .main : .intro
    }
    
    func appleSigninCompleted(cred: Data) {
        guard let idToken = String(data: cred, encoding: .utf8) else { return }
        
        Task {
            do {
                _ = try await AuthService.shared.signin(idToken: idToken, nonce:nonce)
                DispatchQueue.main.async {
                    self.scene = .main
                }
            }
        }
    }
}
