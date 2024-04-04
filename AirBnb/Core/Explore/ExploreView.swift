//
//  ExploreView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 03/04/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        
        NavigationStack {
            SearchBar()
            
            ScrollView {
                LazyVStack(spacing:10) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400).padding()
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                ImagesCarousel()
            }
        }
    }
}

#Preview {
    ExploreView()
}
