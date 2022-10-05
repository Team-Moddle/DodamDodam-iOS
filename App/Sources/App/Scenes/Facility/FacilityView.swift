//
//  FacilityView.swift
//  DodamDodam
//
//  Created by 김상금 on 2022/10/05.
//  Copyright © 2022 org.Moddle. All rights reserved.
//

import SwiftUI

struct FacilityView: View {
    @StateObject var viewModel = FacilityViewModel()
    
    var body: some View {
        NavigationView {
        VStack(spacing: 0) {
            Spacer()
                .frame(height: 16)
            List(viewModel.list, id: \.id) { model in
                CommunityCell(data: model)
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
                SearchBar(search: $viewModel.serach) {
                    print(viewModel.serach)
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
