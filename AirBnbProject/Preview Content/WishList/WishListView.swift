//
//  WhishListView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import SwiftUI

struct WhishListView: View {
    var body: some View {
        VStack (alignment: .leading,spacing: 40){
            VStack(alignment: .leading){
                Text("Wishlists")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            VStack(alignment:.leading){
                Text("Log in to view  your wishlists")
                    .fontWeight(.bold)
                Text("you can create,view and wishlists once you've logeed in ")
                
            }
            .font(.footnote)
            .frame(width:330)
            
            VStack{
                Button {
                    
                } label: {
                    Text("LOG IN")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(width: 360, height: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            Spacer()
        }
    }
}

#Preview {
    WhishListView()
}
