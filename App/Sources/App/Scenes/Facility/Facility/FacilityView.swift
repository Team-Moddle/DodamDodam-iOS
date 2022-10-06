import SwiftUI

struct FacilityView: View {
    @StateObject var viewModel = FacilityViewModel()
    @State var num: Int = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(height: 16)
                    HStack(spacing: 7) {
                        Spacer()
                            .frame(width: 20)
                        Button {
                            num = num == 1 ? 0 : 1
                            num == 1 ? viewModel.fetchFilterHospital() : viewModel.fetchAppear()
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
                            num == 2 ? viewModel.fetchFilterRestraunt() : viewModel.fetchAppear()
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
                            num == 3 ? viewModel.fetchFilterPlayground() : viewModel.fetchAppear()
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
                        Menu {
                            Button("병원") {
                                
                            }
                            Button("놀이시설") {
                                
                            }
                            Button("식당") {
                                
                            }
                        } label: {
                            RoundedRectangle(cornerRadius: 5)
                                .strokeBorder(Color.black)
                                .frame(width: 60, height: 30)
                                .overlay {
                                    HStack {
                                        Text("선택")
                                            .font(.system(size: 14))
                                        Image(systemName: "chevron.down")
                                    }
                                    .foregroundColor(.black)
                                }
                        }
                    }
                    .padding(.horizontal, 14)
                    Spacer()
                        .frame(height: 16)
                    List(viewModel.locationList, id: \.id) { model in
                        ZStack {
                            NavigationLink {
                                FacilityDetailView(data: model)
                            } label: {
                                EmptyView()
                            }
                            .opacity(0)
                            LocationCell(data: model)
                        }
                        .padding(.bottom, 8)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
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
                        NavigationLink {
                            FacilityAddView()
                        } label: {
                            Text("신청하기")
                                .padding(.vertical, 6)
                                .padding(.horizontal, 9)
                                .frame(height: 30)
                                .background(Color.white)
                                .cornerRadius(10)
                                .foregroundColor(Color("737886"))
                                .font(.system(size: 11, weight: .bold))
                        }

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

struct FacilityView_Previews: PreviewProvider {
    static var previews: some View {
        FacilityView()
    }
}
