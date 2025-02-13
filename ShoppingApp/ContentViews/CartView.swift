//
//  CartView.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            VStack {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Your total is:")
                        Spacer()
                        Text(" Rs.\(cartManager.total)")
                            .bold()
                    }
                    .padding()
                }
                else {
                    Text("Your cart is empty")
                }
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
