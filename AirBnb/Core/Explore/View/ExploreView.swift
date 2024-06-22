//
//  ExploreView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 03/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: ExploreViewModel(service: ExploreService()))
            } else {
                ScrollView {
                    SearchBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationSearchView.toggle()
                        }
                    }
                    
                    LazyVStack(spacing:10) {
                        ForEach(viewModel.listings) { listing in
                            
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .padding()
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
