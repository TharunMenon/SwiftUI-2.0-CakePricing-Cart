//
//  ProductModel.swift
//  CakeShop
//
//  Created by Tharun Menon on 28/04/22.
//

import Foundation

struct Product:Identifiable {
    var id = UUID()
    var name:String
    var image: String
    var price:Int
    var quantity:String
    
}

var productList = [Product(name: "Red Velvet", image: "Cake1", price: 20, quantity: "1Kg"),
                   Product(name: "Butter Scoth", image: "Cake2", price: 25, quantity: "1Kg"),
                   Product(name: "Cups", image: "Cake3", price: 15, quantity: "1Kg"),
                   Product(name: "Blackcurrent", image: "Cake4", price: 30, quantity: "1Kg"),
                   Product(name: "Strawberry", image: "Cake5", price: 10, quantity: "0.5Kg"),
                   Product(name: "Choclate", image: "Cake6", price: 20, quantity: "1Kg"),
                   Product(name: "Vancho", image: "Cake7", price: 15, quantity: "0.5Kg"),
                   Product(name: "Vanila Berry", image: "Cake8", price: 25, quantity: "1Kg")]
