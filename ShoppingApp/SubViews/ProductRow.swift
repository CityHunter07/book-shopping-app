//
//  ProductRow.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .padding(10)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                Text("Rs.\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .shadow(radius: 5)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}
