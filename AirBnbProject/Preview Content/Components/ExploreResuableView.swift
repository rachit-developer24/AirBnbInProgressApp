//
//  ExploreResuableView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI

struct ExploreResuableView: View {
    let listings : Listing
    var body: some View {
        TabView{
            ForEach(listings.images,id:\.self){ hotel in
                Image(hotel)
                    .resizable()
                    .clipShape(.rect(cornerRadius: 10))
                   
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ExploreResuableView(listings: ListingDataService().listings[0])
}
