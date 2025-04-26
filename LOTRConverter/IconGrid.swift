//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by apat on 4/17/25.
//

import SwiftUI


struct IconGrid: View {
    @State var currency: Currency

    var body: some View {
        // Currency Icons
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
            ForEach(Currency.allCases) { currency in
                if self.currency == currency {
                    CurrencyIcon(
                        currencyImage: currency.image,
                        currencyName: currency.name
                    )
                    .shadow(color: .black, radius: 10)
                    .overlay{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                    }
                } else {
                    CurrencyIcon(
                        currencyImage: currency.image,
                        currencyName: currency.name
                    )
                    .onTapGesture {
                        self.currency = currency
                    }
                }
            }
            
        }
        
    }
        
}
      
#Preview {
    IconGrid(currency: .silverPiece)
}
