//
//  ProfileOptionRowView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 11/06/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "title", title: "Settings")
}
