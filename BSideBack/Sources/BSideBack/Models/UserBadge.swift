//
//  UserBadge.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

final class UserBadge: Model, @unchecked Sendable, Content {
    static let schema = "userBadge"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "user_id")
    var user: User
    
    @Parent(key: "badge_id")
    var badge: Badge
    
    
    init() {}
    
    func toDTO() -> UserBadgeResponseDTO {
        return UserBadgeResponseDTO(
            id: id ?? UUID(),
            userId: $user.id,
            badgeId: $badge.id
        )
    }
    
}
