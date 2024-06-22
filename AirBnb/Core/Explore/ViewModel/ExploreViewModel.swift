//
//  ExploreViewModel.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 19/06/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await getListing() }
    }
    
    func getListing() async {
        do {
            let fetchedListings = try await service.getListing()
            self.listings = fetchedListings
            self.listingsCopy = listings
        } catch {
            print("DEBUG - failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter ({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}


