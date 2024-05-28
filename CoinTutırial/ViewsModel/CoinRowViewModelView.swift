//
//  CoinRowViewModelView.swift
//  CoinTutırial
//
//  Created by zehra özer on 26.05.2024.
//

import Foundation

struct Coin: Identifiable {
    var id = UUID()
    var number: String
    var coinimage: String
    var coinname: String
    var coinname2: String
    var coinprize: String
    var coinyuzde: String
 
}

let coins = [
      Coin(number: "1", coinimage: "bitcoinsign.circle.fill", coinname: "Bitcoin", coinname2: "BTC", coinprize: "43,234.00", coinyuzde: "%-2.45"),
      Coin(number: "2", coinimage: "bitcoinsign.circle.fill", coinname: "Ethereum", coinname2: "ETH", coinprize: "3,234.00", coinyuzde: "%1.25"),
      Coin(number: "3", coinimage: "bitcoinsign.circle.fill", coinname: "Litecoin", coinname2: "LTC", coinprize: "234.00", coinyuzde: "%0.95"),
      Coin(number: "4", coinimage: "bitcoinsign.circle.fill", coinname: "Ripple", coinname2: "XRP", coinprize: "0.65", coinyuzde: "%-1.20"),
      Coin(number: "5", coinimage: "bitcoinsign.circle.fill", coinname: "Cardano", coinname2: "ADA", coinprize: "1.20", coinyuzde: "%3.50"),
      Coin(number: "6", coinimage: "bitcoinsign.circle.fill", coinname: "Polkadot", coinname2: "DOT", coinprize: "35.00", coinyuzde: "%2.00"),
      Coin(number: "7", coinimage: "bitcoinsign.circle.fill", coinname: "Dogecoin", coinname2: "DOGE", coinprize: "0.25", coinyuzde: "%-5.00"),
      Coin(number: "8", coinimage: "bitcoinsign.circle.fill", coinname: "Chainlink", coinname2: "LINK", coinprize: "25.00", coinyuzde: "%1.75"),
      Coin(number: "9", coinimage: "bitcoinsign.circle.fill", coinname: "Stellar", coinname2: "XLM", coinprize: "0.30", coinyuzde: "%0.50"),
      Coin(number: "10", coinimage: "bitcoinsign.circle.fill", coinname: "Uniswap", coinname2: "UNI", coinprize: "15.00", coinyuzde: "%2.25")
  ]
