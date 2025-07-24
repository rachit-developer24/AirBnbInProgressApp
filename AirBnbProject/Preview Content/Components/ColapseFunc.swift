//
//  ColapseFunc.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import Foundation
import SwiftUI


struct ColapseViewModifier: ViewModifier {
    func body(content : Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 8)
    }
}
