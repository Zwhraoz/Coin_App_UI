//
//  TopMoversView.swift
//  CoinTutırial
//
//  Created by zehra özer on 26.05.2024.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView (.horizontal , showsIndicators: false){
                HStack (spacing:16) {
                    ForEach(0..<5 , id:\.self) { _ in
                       TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}


struct TopMoversItemView: View {
    var body: some View {
        VStack (alignment: .leading ) {
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32 , height: 32)
                .foregroundColor(.orange)
                .padding(.bottom , 8)
            
            HStack (spacing:2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("+1.05%")
                .font(.title2)
                .foregroundColor(.green.opacity(0.8))
            
        }
        .frame(width: 140 , height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4) ,
                    lineWidth: 3)
        )
        
        
    }
}
#Preview {
    TopMoversView()
}
