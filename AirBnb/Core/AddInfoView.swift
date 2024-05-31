//
//  AddInfoView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 31/05/24.
//

import SwiftUI

struct AddInfoView: View {
    let title: String
    let description: String
    
    var body: some View {
        
        VStack {
            VStack  {
                HStack {
                    Text(title)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    Text(description)
                    
                    
                } .fontWeight(.semibold).font(.subheadline)
            }
        }
    }
}

#Preview {
    AddInfoView(title: "When", description: "Add dates")
}
