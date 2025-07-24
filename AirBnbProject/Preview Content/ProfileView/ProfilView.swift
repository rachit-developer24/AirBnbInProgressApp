//
//  ProfilView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        VStack (alignment:.leading , spacing: 30){
            VStack(alignment: .leading){
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("log in to start planning your next trip")
                    .fontWeight(.semibold)
            }  .padding(.horizontal)
            VStack(alignment:.leading , spacing: 30){
                Button {
                    
                } label: {
                    Text("LOG IN")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(width: 360, height: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
                HStack{
                    Text("dont have an account? ")
                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
                .font(.caption)

                VStack{
                    ProfileSubView(imagename: "gear", name: "Settings")
                    Divider()
                    ProfileSubView(imagename: "gear", name: "Accesebility")
                    Divider()
                    ProfileSubView(imagename: "questionmark.circle", name: "Visit the help Center")
                }
            }
        }
    }
}

#Preview {
    ProfilView()
}
