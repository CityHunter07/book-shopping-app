//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            // 4. Store that LazyVGrid into a scroll view so that we can scroll and view them.
            ScrollView {
                // 3. add that iiterated item to a lazyVGrid to make them into a grid form.
                LazyVGrid(columns: columns, spacing: 20){
                    // 1. Iterate through all available products
                    ForEach(cartManager.getFilteredProducts(), id: \.id) { product in
                        // 2. add each product into a card and each card will take full screen
//                        checkAndAddFilteredProducts()
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                // padding will be used to make distance between grid and screen edge
                .padding()
            }
            .navigationTitle(Text("Shopping Spot"))
            .toolbar {
                NavigationLink {
                    FilterView()
                        .environmentObject(cartManager)
                } label: {
                     OptionsButton()
                }
                NavigationLink {
                    FilterView()
                        .environmentObject(cartManager)
                } label: {
                     FilterButton()
                }
                // go to a different view using NavigationLink
                NavigationLink {
                    // view that you want to go to
                    CartView()
                        .environmentObject(cartManager)
                    
                } label: {
                    // the label that should call that above link
                    // in this case a button
                    CartButton(numberOfItems: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            devPrint("ContentView Appeared")
        }
    }
    
    func checkAndAddFilteredProducts() {
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
