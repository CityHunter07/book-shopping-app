//
//  CartManager.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    @Published private(set) var filters: [Filter] = []
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        // remove product using id
        print("Before removing product: [\(String(describing: products))")
//        products = products.filter { $0.id != product.id }                // To pop all instances of the product
        
        for count in 0...(products.count - 1) {
            if product.id == products[count].id {
                products.remove(at: count)
                break
            }
        }
        
        print("After removing product: [\(String(describing: products))")
        total -= product.price
    }
    
    
    func addOrRemoveFilter(filter: Filter) {
        print("Adding or removing new filter in backend: \(filter)")
        filters.contains(filter) ? filters.removeAll { $0 == filter } : filters.append(filter)
    }
    
    func getFilteredProducts() -> [Product] {
        devPrint("cartManager.getFilteredProducts")
        if filters.count > 0 {
            print("filters are not nil")
            var filteredProducts: [Product] = []
            for filter in filters {
                print("Current filter: \(filter.name)")
                filteredProducts.append(contentsOf: (productList.compactMap({
                    if $0.filter == filter {
                        return $0
                    }
                    return nil
                })))
                devPrint("\(filteredProducts.compactMap({$0.name}))")
            }
            return filteredProducts
        }
        return productList
    }
}
