import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

final class AuthService {
    static let shared = AuthService()
    private init() {}

    func checkIsLoggedIn() -> Bool {
        Auth.auth().currentUser != nil
    }

    /**
     * 로그인 기능
     * 첫 로그인이면 true 아니면 false
     */
    func signin(idToken: String, nonce: String) async throws -> Bool {
        let cred = OAuthProvider.credential(
            withProviderID: "apple.com",
            idToken: idToken,
            rawNonce: nonce
        )
        do {
            try await Auth.auth().signIn(with: cred)
        } catch {
            print(error.localizedDescription)
            throw DodamError.unknown
        }
        return true
    }
}
