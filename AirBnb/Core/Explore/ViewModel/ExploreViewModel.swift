//
//  ExploreViewModel.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 19/06/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await getListing() }
    }
    
    func getListing() async {
        do {
            self.listings = try await service.getListing()
        } catch {
            print ("DEBUG - failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
}
