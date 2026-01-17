//
//  PaymentSevices.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//
struct PaymentService {
    func pay(amount: Double?) -> PaymentStatus {
        guard let amount = amount , amount > 0 else {
            return .paymentInvalid
        }
        return amount <= 1_000_000 ? .paymentSuccess : .paymentFailed
    }
}
