//
//  OptionsButton.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 04/08/23.
//

import SwiftUI

struct OptionsButton: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "server.rack")
                .padding(.top, 5)
        }
    }
}

struct OptionsButton_Previews: PreviewProvider {
    static var previews: some View {
        OptionsButton()
    }
}

