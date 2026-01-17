//
//  UserSevices.swift
//  Synthetic
//
//  Created by nguyễn văn vang on 17/1/26.
//
func checkUserStatus(users: [User], userId: Int) -> UserStatus {
    guard let user = users .first(where: {$0.id == userId}) else {
        return .userNotFound
    }
    return user.isActive ? .userActive : .userInactive
}
