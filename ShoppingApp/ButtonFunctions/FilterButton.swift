//
//  FilterButton.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 04/08/23.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "ellipsis")
                .padding(.top, 5)
        }
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton()
    }
}
