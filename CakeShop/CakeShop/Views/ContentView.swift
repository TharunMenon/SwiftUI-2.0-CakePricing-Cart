//
//  ContentView.swift
//  CakeShop
//
//  Created by Tharun Menon on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var coloums = [GridItem(.adaptive(minimum: 160),spacing: 20)]
                   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns:coloums,spacing: 20) {
                    ForEach(productList,id: \.id) {Product in
                        CakeCard(product: Product)
                            .environmentObject(cartManager)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Cakes"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfCakes: cartManager.products.count)
                }
               
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
