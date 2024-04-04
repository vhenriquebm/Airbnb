//
//  ListingDetailView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 04/04/24.
//

import SwiftUI

struct ListingDetailView: View {
    
    var body: some View {
        ScrollView {
            ImagesCarousel()
                .frame(height:320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            
            
            
            
        }
    }
}

#Preview {
    ListingDetailView()
}
