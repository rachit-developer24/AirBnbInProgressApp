//
//  DestinationSubView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI

struct DestinationSubView: View {
    let title : String
    let subtitle : String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(subtitle)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}

#Preview {
    DestinationSubView(title: "when", subtitle: "Add dates")
}
