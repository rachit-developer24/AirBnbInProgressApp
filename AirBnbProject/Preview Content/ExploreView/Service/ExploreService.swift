//
//  Service.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import Foundation
class ExploreService {
    func getdata() async throws -> [Listing]{
        return ListingDataService().listings
    }
    
    
}
