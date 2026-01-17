//
//  ViewController.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let products = [
            Product(id: 1, name: "Book", price: 100),
            Product(id: 2, name: "Pen", price: 50)
        ]

        let order = Order(orderId: 1, userId: 1, products : products )

        let orderService = OrderSevices()
        let paymentService = PaymentService()

        print(orderService.validateOrder(order: order).message)

        let total = orderService.totalPrice(products: products)
        print("Total:", total)
        print(paymentService.pay(amount: total).message)
        
    }


}

