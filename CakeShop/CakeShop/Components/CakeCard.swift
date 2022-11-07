//
//  CakeCard.swift
//  CakeShop
//
//  Created by Tharun Menon on 28/04/22.
//

import SwiftUI

struct CakeCard: View {
    @EnvironmentObject var cartManager:CartManager
    var product:Product
    var body: some View {
        ZStack(alignment:.top) {
            ZStack(alignment:.bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width:180)
                    .scaledToFit()
                if #available(iOS 15.0, *) {
                    VStack(alignment:.leading){
                        Text(product.name)
                            .bold()
                        Text("\(product.price)$  \(product.quantity)")
                            .font(.caption)
                    }
                    .padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                } else {
                    // Fallback on earlier versions
                }
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 5)
            Button {
                cartManager.addToCart(product: product)
            }label: {
                if #available(iOS 15.0, *) {
                    Image(systemName: "plus")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(50)
                        .padding()
                        .frame(width: 180, alignment: .trailing)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

struct CakeCard_Previews: PreviewProvider {
    static var previews: some View {
        CakeCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
