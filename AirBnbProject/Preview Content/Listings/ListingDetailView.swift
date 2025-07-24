//
//  ListingDetailView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//
import MapKit
import SwiftUI

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    var body: some View {
            ScrollView{
                ZStack(alignment:.topLeading) {
                    ExploreResuableView(listings: listing)
                        .frame( height: 360)
                        
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.compact.left")
                            .foregroundStyle(.black)
                            .background{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 30, height: 30)
                                }
                            .padding(32)
                    }
                }
                VStack(alignment:.leading,spacing: 10){
                    Text(listing.title)
                        .font(.title2)
                        .fontWeight(.bold)
                    VStack(alignment:.leading){
                        HStack{
                            Image(systemName: "star.fill")
                            Text("\(listing.rating)")
                            Text(" 29 reviews")
                                .underline(true, color: .black)
                                .fontWeight(.semibold)
                        }
                        Text(listing.city)
                    }
                    .font(.footnote)
                }.padding(.leading,5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                HStack{
                    VStack(alignment:.leading){
                        Text("Entire villa hosted by ")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text(listing.ownerName)
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("\(listing.numberOfBeds) beds - \(listing.numberOfBathrooms) - bathroom - \(listing.numberOfGuests) guests \(listing.numberOfBedrooms) - bedrooms")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    Image(listing.ownerImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                }
                .padding()
                Divider()
                
                VStack(spacing:15){
                    ForEach(listing.fetures){features in
                        HStack{
                            Image(systemName: features.imageName)
                            VStack(alignment: .leading){
                                Text(features.title)
                                    .fontWeight(.bold)
                                Text(features.subtitle)
                                    .foregroundStyle(.gray)
                            }
                            .font(.footnote)
                            Spacer()
                        }
                    }
                }
                .padding()
                Divider()
                VStack(alignment:.leading){
                    Text("where you'll sleep")
                        .font(.headline)
                    ScrollView(.horizontal){
                        HStack(spacing:16){
                            ForEach(1..<5){bedroom in
                                VStack{
                                    Image(systemName: "bed.double")
                                    Text("bedroom \(bedroom)")
                                }
                                .frame(width: 132, height: 100)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0.5)
                                        .foregroundStyle(.gray)
                                }
                            }
                        }
                    }
                    .scrollTargetBehavior(.paging)
                }
                .padding(.horizontal)
                Divider()
                VStack(alignment:.leading,spacing:16){
                    Text("what the place offer")
                        .font(.headline)
                        .fontWeight(.bold)
                    ForEach(listing.amenities){amenity in
                        HStack{
                            Image(systemName: amenity.imageName)
                            Text(amenity.title)
                                .font(.caption)
                            
                        }
                    }
                }.padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                VStack{
                    Map()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }.toolbarVisibility(.hidden, for: .tabBar)
            .ignoresSafeArea()
            .padding(.bottom , 92)
            .overlay(alignment: .bottom) {
                HStack{
                    VStack(alignment:.leading){
                        Text("500$")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("Total before taxs")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                        Text("oct 15 - 20")
                            .font(.footnote)
                            .underline()
                            .fontWeight(.bold)
                    }
                   
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .frame(width: 120, height: 35)
                            .background(Color.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }

                }
                .padding(.vertical , 15)
                .padding(.horizontal)
                .background(Color.white)
              
              
               
            }
            
         
        }
       
        
        }
    


#Preview {
    ListingDetailView( listing: ListingDataService().listings[0])
}
