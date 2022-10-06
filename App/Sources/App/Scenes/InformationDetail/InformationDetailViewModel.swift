import Combine

final class InformationDetailViewModel: ObservableObject {
    let information: InformationModel
    init (information: InformationModel) {
        self.information = information
    }
}
