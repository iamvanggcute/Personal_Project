//
//  MovieStatus.swift
//  CINEMA MANAGEMENT
//
//  Created by nguyễn văn vang on 19/1/26.
//
enum MovieStatus {
    case movieNotFound
    case movieValid
    var message : String {
        switch self {
        case  .movieNotFound:
            return " Phim Khong Co"
        case .movieValid :
            return "Phim Hop Le"
        }
    }
}
