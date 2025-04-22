//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by apat on 4/17/25.
//

import SwiftUI


struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency Icons
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Pennyv")
                // Text
                Text("Select the currency you would like to convert to: ")
                    .fontWeight(.bold)
                    
                // Currency Icons
                
                // Done Button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with:.black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
            
            
        
            }
           
        }
        
        
    }
      
#Preview {
    SelectCurrency()
}
