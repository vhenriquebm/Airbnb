//
//  ListingItemView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 03/04/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
   
    var body: some View {
        
        VStack(spacing: 8) {
            
            ImagesCarousel(listing: listing)
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city),\(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 18")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)                        .foregroundStyle(.black)
                        
                        Text("night")
                    }
                    .foregroundStyle(.black)
                    
                }
                Spacer()
                
                HStack(spacing:2) {
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview().listings[0])
}
