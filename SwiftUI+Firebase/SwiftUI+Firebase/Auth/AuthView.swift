//
//  AuthView.swift
//  SwiftUI+Firebase
//
//  Created by 김민 on 2023/07/16.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack {
            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
            }

            Spacer()

        }
        .padding()
        .navigationTitle("Sign In")
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AuthView()
        }
    }
}
