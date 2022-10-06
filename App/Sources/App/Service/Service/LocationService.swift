import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

final class LocationService {
    static let shared = LocationService()
    private init() {}
    
    func fetchLocationList() async throws -> [LocationModel] {
        let docs = try await Firestore.firestore().collection("/location").getDocuments()
        var res = [LocationModel]()
        for snapshot in docs.documents {
            let dict = snapshot.data()
            
            let loc = LocationModel(
                id: snapshot.documentID,
                name: dict["name"] as! String,
                address: dict["address"] as! String,
                imageUrlString: dict["imageUrlString"] as! String,
                category: Category(rawValue: dict["category"] as! String) ?? .hospital,
                featureCategory: FeatureCategory(rawValue: dict["featureCategory"] as! String) ?? .adhd,
                commentCount: dict["commentCount"] as! Int,
                heartCount: dict["heartCount"] as! Int
            )
            res.append(loc)
        }
        return res
    }

    func createLocation(
        name: String,
        address: String,
        imageUrl: String,
        category: Category
    ) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let data: [String: Any] = [
            "name": name,
            "address": address,
            "imageUrlString": imageUrl,
            "category": category.rawValue,
            "commentCount": 0,
            "heartCount": 0,
            "userPK": uid
        ]
        _ = try await Firestore.firestore().collection("/location").addDocument(data: data)
    }
}

//struct LocationModel {
//    let id: String
//    let name: String
//    let address: String
//    let imageUrlString: String
//    let category: Category
//    let commentCount: Int
//    let heartCount: Int
//}
