import Combine

final class DetailCommunityViewModel: ObservableObject {
    let community: CommunityModel
    
    init(community: CommunityModel) {
        self.community = community
    }
}
