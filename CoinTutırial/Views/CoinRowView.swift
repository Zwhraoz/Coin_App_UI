//
//  CoinRowView.swift
//  CoinTutırial
//
//  Created by zehra özer on 26.05.2024.
//

import SwiftUI

struct CoinRowView: View {
    
    
    
    var body: some View {
            VStack {
                ForEach(coins) { coin in
                    coinTasarim(number: coin.number, coinimage: coin.coinimage, coinname: coin.coinname, coinname2: coin.coinname2, coinprize: coin.coinprize, coinyuzde: coin.coinyuzde)
                }
            }
        }
    }



struct coinTasarim: View {
    var number: String
    var coinimage: String
    var coinname: String
    var coinname2: String
    var coinprize: String
    var coinyuzde: String

    // Computed property to determine the color of the percentage change text
    var yuzderenk: Color {
        return coinyuzde.contains("%-") ? .red : .green
    }
    
    var body: some View {
        HStack {
            Text(number)
                .font(.caption)
                .foregroundColor(.gray)
            
            Image(systemName: coinimage)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coinname)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coinname2)
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(coinprize)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coinyuzde)
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(yuzderenk)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    CoinRowView()
}
