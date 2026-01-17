//
//  OrderSevices.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//
struct OrderSevices {
    func validateOrder(order: Order?) -> OrderStatus {
        guard let order = order else {
            return .orderEmpty
        }
        return order.products.isEmpty ? .orderEmpty : .orderValid
        
    }
    func totalPrice(products: [Product]) -> Double {
        products.map { $0.price} .reduce(0, +)
    }
}
