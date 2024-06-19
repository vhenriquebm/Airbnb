//
//  ImagesCarousel.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 04/04/24.
//

import SwiftUI

struct ImagesCarousel: View {
    let listing: Listing
    
    
    var body: some View {
        TabView{
            
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImagesCarousel(listing: DeveloperPreview().listings[0])
}
