//
//  HomeView.swift
//  Uber
//
//  Created by Alexandre Calcio Gaudino on 13/10/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
