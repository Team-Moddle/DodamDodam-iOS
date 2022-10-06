import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

final class CommunityService {
    static let shared = CommunityService()
    private init() {}
    
    func fetchCommunityList() async throws -> [CommunityModel] {
        let docs = try await Firestore.firestore().collection("/comm").getDocuments()
        var res = [CommunityModel]()
        for snapshot in docs.documents {
            let dict = snapshot.data()
            
            let comm = CommunityModel(
                id: snapshot.documentID,
                imageUrlString: dict["imageUrlString"] as! String,
                title: dict["title"] as! String,
                content: dict["content"] as! String,
                location: dict["location"] as! String,
                humanCount: dict["humanCount"] as! Int,
                category: dict["category"] as! FeatureCategory
            )
            res.append(comm)
        }
        return res
    }
    
    func createCommunity(
        title: String,
        content: String,
        imageUrl: String,
        location: String
    ) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let data: [String: Any] = [
            "title": title,
            "content": content,
            "location": location,
            "imageUrlString": imageUrl,
            "humanCount": 0,
            "userPK": uid
        ]
        _ = try await Firestore.firestore().collection("/comm").addDocument(data: data)
    }
}
