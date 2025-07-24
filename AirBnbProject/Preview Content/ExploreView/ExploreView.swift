//
//  ExploreView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI

struct ExploreView: View {
    @State var navigationdestination:Bool = false
    @StateObject var ViewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack {
            if navigationdestination{
                NavigationDestinationView(show: $navigationdestination)
            }else{ ScrollView {
                SearchFilterView()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            navigationdestination.toggle()
                        }
                    }
                LazyVStack(spacing:40){
                    ForEach(ViewModel.listing, id: \.self){hotels in
                        NavigationLink(value: hotels) {
                            ExploreRowView( listing: hotels)
                        }
                        
                    }
                }
                .padding(.vertical,27)
            }
            .navigationDestination(for:Listing.self) { hotels in
                ListingDetailView( listing: hotels)
                    .toolbar(.hidden , for: .navigationBar)
            }
            
        }}
           
        
    }
}

#Preview {
    ExploreView()
}
