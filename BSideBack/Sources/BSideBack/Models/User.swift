//
//  User.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

final class User: Model, @unchecked Sendable, Content {
    static let schema = "user"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "username")
    var username: String
    
    @Field(key: "password")
    var password: String
    
    @Field(key: "money")
    var money: Int
    
    @Field(key: "picture")
    var picture: String
    
    
    @Siblings(through: UserBadge.self, from: \.$user, to: \.$badge)
    var badges: [Badge]
    
    @Siblings(through: UserPlaylist.self, from: \.$user, to: \.$playlist)
    var playlists: [Playlist]
    
    
    init() {}
    
    func toDTO() -> UserResponseDTO {
        return UserResponseDTO(
            id: id ?? UUID(),
            username: username,
            money: money,
            picture: picture
        )
    }
}
