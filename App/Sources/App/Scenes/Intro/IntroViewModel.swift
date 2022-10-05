import Combine
import Foundation

final class IntroViewModel: ObservableObject {
    @Published var nonce = ""
    
    func appleSigninCompleted(cred: Data) {
        guard let idToken = String(data: cred, encoding: .utf8) else { return }
        
        Task {
            do {
                let isInitialSignin = try await AuthService.shared.signin(idToken: idToken, nonce:nonce)
            }
        }
    }
}
