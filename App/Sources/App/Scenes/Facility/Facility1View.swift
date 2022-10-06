import SwiftUI

struct Facility1View: View {
    @StateObject var viewModel = FacilityViewModel()
    @State var category: Category = .all
    @State var featureCategory: FeatureCategory = .all
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(height: 16)
                    HStack(spacing: 7) {
                        Spacer()
                            .frame(width: 20)
                        Group {
                            Button {
                                featureCategory = featureCategory == .adhd ? .all : .adhd
                                viewModel.filterCategoryAndFeatureCategory(category: category, featureCategory: featureCategory)
                            } label: {
                                Text("ADHD")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 10)
                                    .background(featureCategory == .adhd ? Color("FFC85C") : .gray)
                                    .cornerRadius(17)
                                    .frame(height: 27)
                            }
                            Button {
                                featureCategory = featureCategory == .allergy ? .all : .allergy
                                viewModel.filterCategoryAndFeatureCategory(category: category, featureCategory: featureCategory)
                            } label: {
                                Text("알레르기")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 10)
                                    .background(featureCategory == .allergy ? Color("FFC85C") : .gray)
                                    .cornerRadius(17)
                                    .frame(height: 27)
                            }
                            Button {
                                featureCategory = featureCategory == .autism ? .all : .autism
                                viewModel.filterCategoryAndFeatureCategory(category: category, featureCategory: featureCategory)
                            } label: {
                                Text("자폐")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 10)
                                    .background(featureCategory == .autism ? Color("FFC85C") : .gray)
                                    .cornerRadius(17)
                                    .frame(height: 27)
                            }
                            Button {
                                featureCategory = featureCategory == .atopy ? .all : .atopy
                                viewModel.filterCategoryAndFeatureCategory(category: category, featureCategory: featureCategory)
                            } label: {
                                Text("아토피")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 10)
                                    .background(featureCategory == .atopy ? Color("FFC85C") : .gray)
                                    .cornerRadius(17)
                                    .frame(height: 27)
                            }
                            Button {
                                featureCategory = featureCategory == .etc ? .all : .etc
                                viewModel.filterCategoryAndFeatureCategory(category: category, featureCategory: featureCategory)
                            } label: {
                                Text("기타")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 10)
                                    .background(featureCategory == .etc ? Color("FFC85C") : .gray)
                                    .cornerRadius(17)
                                    .frame(height: 27)
                            }
                        }
                        Spacer()
                        Button {
                            print("!!!!!")
                        } label: {
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 15, height: 15)
                                .padding(8)
                        }
                        Spacer()
                            .frame(width: 20)
                        
                    }
                    Spacer()
                        .frame(height: 16)
                    List(viewModel.locationList, id: \.id) { model in
                        NavigationLink(
                            destination: FacilityDetailView(data: model)) {
                                LocationCell(data: model)
                                    .padding(.bottom, 8)
                                    .listRowInsets(EdgeInsets())
                                    .listRowSeparator(.hidden)
                            }
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
                        .onChange(of: viewModel.search) { _ in
                            viewModel.fetchFilterSearch()
                        }
                    }
                }
                VStack {
                    Spacer()
                    HStack(alignment: .center) {
                        Spacer()
                            .frame(width: 32)
                        Image("hospital")
                            .resizable()
                            .frame(width: 23, height: 26)
                        Spacer()
                            .frame(width: 12)
                        Text("우리 주위에 없는 시설이 있다면?")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                        Spacer()
                        NavigationLink (
                            destination: FacilityAddView(),
                            label: {
                                Text("신청하기")
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 9)
                                    .frame(height: 30)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .foregroundColor(Color("737886"))
                                    .font(.system(size: 11, weight: .bold))
                            })
                        Spacer()
                            .frame(width: 20)
                    }
                    .frame(width: .infinity, height: 60)
                    .background(Color("737886"))
                    Spacer()
                        .frame(height: 45)
                }
            }
            .onAppear {
                viewModel.fetchAppear()
            }
        }
    }
}

struct Facility1View_Previews: PreviewProvider {
    static var previews: some View {
        Facility1View()
    }
}
