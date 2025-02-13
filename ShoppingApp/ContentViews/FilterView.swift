//
//  FilterView.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 04/08/23.
//

import SwiftUI

struct FilterView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            VStack{
                ForEach(filteringTypes, id: \.id) { filter in
//                    print("Adding new FilterRow item")
                    FilterRow(filter: filter)
                    Divider()
                        .padding(.horizontal, 15)

                }
            }
        }
        .navigationTitle(Text("Filters"))
        .padding(.top)
    }
    
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .environmentObject(CartManager())
    }
}
