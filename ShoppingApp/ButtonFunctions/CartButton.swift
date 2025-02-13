//
//  CartButton.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfItems: Int
    var body: some View {
        // used to show a view or image on another image
        ZStack(alignment: .topTrailing) {
            // show cart image
            Image(systemName: "cart")
                .padding(.top, 5)
            
            // show a number on cart
            if numberOfItems > 0 {
                Text("\(numberOfItems)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
            
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfItems: 1)
    }
}
