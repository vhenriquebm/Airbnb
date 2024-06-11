//
//  ProfileView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 11/06/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                    
                    Text("Log in to start planning your next trip")
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Log in")
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                })
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }.padding(.vertical)
        }.padding()
    }
}

#Preview {
    ProfileView()
}
