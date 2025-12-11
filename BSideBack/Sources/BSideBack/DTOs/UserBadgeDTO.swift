//
//  UserBadgeDTO.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor


struct CreateUserBadgeDTO: Content{
    var userId: UUID
    var badgeId: UUID
    
    func toModel() -> UserBadge {
        let model = UserBadge()
        model.user.id = userId
        model.badge.id = badgeId
        return model
    }
}

struct UserBadgeResponseDTO: Content{
    var id: UUID
    var userId: UUID
    var badgeId: UUID
}
