//
//  Badge.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

final class Badge: Model, @unchecked Sendable, Content {
    static let schema = "badge"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "picture")
    var picture: String
    
    @Field(key: "nbMoney")
    var nbMoney: Int
    
    @Siblings(through: UserBadge.self, from: \.$badge, to: \.$user)
    var users: [User]
    
    
    init() {}
    
    func toDTO() -> BadgeResponseDTO {
        return BadgeResponseDTO(
            id: id ?? UUID(),
            name: name,
            picture: picture,
            nbMoney: nbMoney
        )
    }
    
}
