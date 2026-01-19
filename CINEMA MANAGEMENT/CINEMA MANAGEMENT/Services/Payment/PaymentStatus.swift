//
//  PaymentStatus.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
enum PaymentStatus {
    case paymentInvalid
    case paymentSuccess
    case paymentFailed
    var message : String {
        switch self {
        case .paymentInvalid:
            return " Thanh Toan Khong Hop Le"
        case .paymentSuccess :
            return "Thanh Toan Thanh Cong"
            
        case .paymentFailed :
            return " Thanh Toan That Bai"
        }
    }
}
