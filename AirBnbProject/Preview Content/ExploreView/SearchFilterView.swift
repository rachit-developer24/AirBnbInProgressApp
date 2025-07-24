//
//  SearchFilterView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI

struct SearchFilterView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .fontWeight(.bold)
                
                VStack(alignment:.leading){
                    Text("where to ?")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Anywhere - Any day - Any Guests")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(.gray)
                    .shadow(color:.black.opacity(0.5) ,     radius: 2)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchFilterView()
}
