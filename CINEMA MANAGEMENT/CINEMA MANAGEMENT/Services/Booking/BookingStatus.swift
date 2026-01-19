//
//  BookingStatus.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
enum BookingStatus {
    case  bookingEmpty
    case bookingValid
    var message : String {
        switch self {
        case  .bookingEmpty:
            return " Phim Khong Co"
        case .bookingValid :
            return "Phim Hop Le"
        }
    }
}
