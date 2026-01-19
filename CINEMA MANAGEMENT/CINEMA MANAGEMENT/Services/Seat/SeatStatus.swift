//
//  SeatStatus.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
enum SeatStatus {
    case  seatUnavailable
    case seatValid
    var message : String {
        switch self {
        case .seatUnavailable :
            return " Khong Co Cho Ngoi"
        case .seatValid:
            return " Dat Thanh Cong"
        }
    }
}
