//
//  ExploreRowView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI

struct ExploreRowView: View {
    let listing:Listing
    var body: some View {
        VStack{
            ExploreResuableView(listings: listing)
            .frame(width: 360, height: 360)
            .tabViewStyle(.page)
            HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text(listing.state)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                            Text("12 mil away")
                                .foregroundColor(.secondary)
                            Text("Nov 3 - 10")
                                .foregroundColor(.secondary)
                            Text("$\(listing.pricePerNight)")
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                        }
                        .font(.footnote)
                        Spacer()
                                HStack{
                                    Image(systemName: "star.fill")
                                    Text("\(listing.rating)")
                                }
                                .font(.footnote)
                                .foregroundStyle(.black)
                            
                    }
                    .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ExploreRowView( listing: ListingDataService().listings[0] )
}
