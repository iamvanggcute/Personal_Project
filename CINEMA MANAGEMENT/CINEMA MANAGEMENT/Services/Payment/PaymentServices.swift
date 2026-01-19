//
//  PaymentServices.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
struct PaymentService {
func payment(totalPrice: Double?) -> PaymentStatus {
    guard let totalPrice = totalPrice , totalPrice > 0 else {
        return .paymentInvalid
    }
    return totalPrice <= 500_000 ? .paymentSuccess : .paymentFailed
}
}
