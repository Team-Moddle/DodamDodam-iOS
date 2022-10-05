//
//  IntroView.swift
//  DodamDodam
//
//  Created by 김상금 on 2022/10/05.
//  Copyright © 2022 org.Moddle. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct IntroView: View {
    var body: some View {
        VStack{
            Button {
                print("button")
            } label: {
                HStack(alignment: .center) {
                    Image("googleLogoImage")
                    Text("Google로 계속하기")
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .background(.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.black, lineWidth: 1)
            )
            .padding(.horizontal, 16)
            
            SignInWithAppleButton { request in
                request.requestedScopes = [.fullName, .email]
                let nonce = FirebaseAppleUtils.randomNonceString()
                request.nonce = nonce
            } onCompletion: { res in
                switch res {
                case let .success(auth):
                    guard let cred = auth.credential as? ASAuthorizationAppleIDCredential else {
                        return
                    }
                    print("성공")
                case .failure:
                    print("실패")
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .padding(.horizontal, 16)
            .cornerRadius(14)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
