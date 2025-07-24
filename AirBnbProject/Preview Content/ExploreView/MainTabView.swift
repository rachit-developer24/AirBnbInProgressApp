//
//  MainTabView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            WhishListView()
                .tabItem {
                    Label("wishlist", systemImage: "heart")
                }
            
            ProfilView()
                .tabItem {
                    Label("profile", systemImage: "person.circle")
                }
            
            
        }
    }
}

#Preview {
    MainTabView()
}
