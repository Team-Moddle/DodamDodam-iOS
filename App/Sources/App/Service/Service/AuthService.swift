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
        guard let res = try? await Auth.auth().signIn(with: cred) else { throw DodamError.unknown }
        guard let user = try? await Firestore.firestore().collection("User").document(res.user.uid).getDocument() else { throw DodamError.unknown }
        return (user.data()?["isFirst"] as? Bool ?? true) == true
    }
}
