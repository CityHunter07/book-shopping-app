//
//  FilterRow.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 04/08/23.
//

import SwiftUI

struct FilterRow: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.colorScheme) var colorScheme
    
    var filter: Filter
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
                
            Button() {
                print("Adding filter")
                cartManager.addOrRemoveFilter(filter: filter)
            } label: {
//                Image(systemName: "plus")
                Text(filter.name)
//                Color(.systemBlue)
            }
//            .padding(.infinity)
//            .frame(maxWidth: .infinity, minHeight: 70)
//            .border(.blue)
            .foregroundColor(cartManager.filters.contains(filter) ? (colorScheme == .dark ? .white : .black) : .blue)
            
//            .fontWeight(cartManager.filters.contains(filter) ? .bold : .regular)
//            .cornerRadius(50)
//            .padding(.horizontal, -5)
//            .padding(.vertical, 10)
//            if cartManager.filters.contains(filter) {
//
//            }
        }
        
    }
}

struct FilterRow_Previews: PreviewProvider {
    static var previews: some View {
        FilterRow(filter: Filter(name: "Fiction"))
            .environmentObject(CartManager())
    }
}
