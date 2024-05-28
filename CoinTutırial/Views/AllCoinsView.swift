//
//  AllCoinsView.swift
//  CoinTutırial
//
//  Created by zehra özer on 26.05.2024.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("All Coins")
                .italic()
                .font(.headline)
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach (0..<10 , id:\.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinsView()
}
