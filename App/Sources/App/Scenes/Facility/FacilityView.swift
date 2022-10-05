import SwiftUI

struct FacilityView: View {
    @StateObject var viewModel = FacilityViewModel()
    @State var num: Int = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 16)
                HStack(spacing: 7) {
                    Spacer()
                        .frame(width: 20)
                    Button {
                        num = num == 1 ? 0 : 1
                    } label: {
                        Text("병원")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(num == 1 ? Color("FFC85C") : .gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Button {
                        num = num == 2 ? 0 : 2
                    } label: {
                        Text("식당")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(num == 2 ? Color("FFC85C") : .gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Button {
                        num = num == 3 ? 0 : 3
                    } label: {
                        Text("놀이시설")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(num == 3 ? Color("FFC85C") : .gray)
                            .cornerRadius(17)
                            .frame(height: 27)
                    }
                    Spacer()
                }
                Spacer()
                    .frame(height: 16)
                List(viewModel.list, id: \.id) { model in
                    LocationCell(data: model)
                        .padding(.bottom, 8)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                }
                .listStyle(.inset)
                .padding(.horizontal, 20)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    SearchBar(search: $viewModel.search) {
                        print(viewModel.search)
                    }
                }
            }
        }
    }
}

struct FacilityView_Previews: PreviewProvider {
    static var previews: some View {
        FacilityView()
    }
}
