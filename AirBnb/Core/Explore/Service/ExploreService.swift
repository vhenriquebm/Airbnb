//
//  ExploreService.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 19/06/24.
//

import Foundation

class ExploreService {
    func getListing() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
