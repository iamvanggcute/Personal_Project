//
//  UserStatus.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//

enum UserStatus {
    case userNotFound
    case userInactive
    case userActive
    
    var message : String {
        switch self {
        case .userNotFound:
            return "Khong Tim Thay Nguoi Nay "
        case .userInactive:
            return "Nguoi Dung Chua Kich Hoat"
        case .userActive :
            return "Nguoi Dung Hop Le"
        }
    }
}
