//
//  TotalPriceStatus.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
enum TotalPriceStatus {
    case  priceInvalid
    case  priceOK
    var message : String {
        switch self {
        case .priceInvalid:
            return " Khong Hop Le"
        case .priceOK :
            return "Thanh Cong"
        }
    }
}
