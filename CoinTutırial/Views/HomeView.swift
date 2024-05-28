//
//  HomeView.swift
//  CoinTutırial
//
//  Created by zehra özer on 26.05.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationView {
            ScrollView (.vertical , showsIndicators: false) {
                HStack {
                           Image(systemName: "magnifyingglass")
                               .foregroundColor(.gray)
                               .padding(.leading, 8)
                           
                           TextField("Search...", text: $searchText)
                               .foregroundColor(.primary)
                               .padding(.vertical, 8)
                           
                           if !searchText.isEmpty {
                               Button(action: {
                                   searchText = ""
                               }) {
                                   Image(systemName: "xmark.circle.fill")
                                       .foregroundColor(.gray)
                                       .padding(.trailing, 8)
                               }
                           }
                       }
                       .padding(.horizontal)
                       .background(Color(UIColor.systemGray6))
                       .cornerRadius(10)
                       .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                 
                TopMoversView()
               
                Divider()
                
                AllCoinsView()
                
            }.navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
