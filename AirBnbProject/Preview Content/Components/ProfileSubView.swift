//
//  ProfileSubView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import SwiftUI

struct ProfileSubView: View {
    let imagename: String
    let name: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                Text(name)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
        }
    }
}

#Preview {
    ProfileSubView(imagename: "gear", name: "Settings")
}
