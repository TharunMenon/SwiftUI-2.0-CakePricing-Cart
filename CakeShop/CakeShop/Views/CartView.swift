//
//  CartView.swift
//  CakeShop
//
//  Created by Tharun Menon on 28/04/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View {
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach (cartManager.products,id:\.id) { product in
                    CartRow(product: product)
                }
                
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                
            } else {
                Text("Your Cart is Empty")
            }
            
            
        }
        .navigationTitle("My Cart")
        .padding(.top)
      
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
