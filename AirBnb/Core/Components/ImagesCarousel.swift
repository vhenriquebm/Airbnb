//
//  ImagesCarousel.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 04/04/24.
//

import SwiftUI

struct ImagesCarousel: View {
    private let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        TabView{
            
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImagesCarousel()
}
