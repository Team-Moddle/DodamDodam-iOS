import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

final class InformationService {
    static let shared = InformationService()
    private init() {}
    
    func fetchInformationList() async throws -> [InformationModel] {
        let docs = try await Firestore.firestore().collection("/info").getDocuments()
        var res = [InformationModel]()
        for snapshot in docs.documents {
            let dict = snapshot.data()
            
            let info = InformationModel(
                id: snapshot.documentID,
                imageUrlString: dict["imageUrlString"] as! String,
                title: dict["title"] as! String,
                content: dict["content"] as! String,
                likeCount: dict["likeCount"] as! Int
            )
            res.append(info)
        }
        return res
    }
    
    func createInfo(
        title: String,
        content: String,
        imageUrl: String
    ) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let data: [String: Any] = [
            "title": title,
            "content": content,
            "imageUrlString": imageUrl,
            "likeCount": 0,
            "userPK": uid
        ]
        _ = try await Firestore.firestore().collection("/info").addDocument(data: data)
    }
}
