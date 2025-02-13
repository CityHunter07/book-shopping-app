//
//  ProductCard.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180, height: 250, alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("Rs.\(product.price)")
                }
                .font(.caption)
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
            }
            .frame(width: 180.0, height: 250.0)
        .shadow(radius: 3)
            
            Button {
                print("Added to cart")
                cartManager.addToCart(product: product)
                //print a toast too
            } label: {
                Image(systemName: "plus")
            }
            .padding(10)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(50)
            .padding()
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
            .environmentObject(CartManager())
    }
}
