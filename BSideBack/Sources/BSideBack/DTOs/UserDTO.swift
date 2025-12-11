//
//  UserDTO.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

struct CreateUserDTO: Content{
    var username: String
    var password: String
    var picture: String
    
    func toModel() -> User {
        let model = User()
        model.username = username
        model.password = password
        model.money = 0
        model.picture = picture
        return model
    }
}

struct UpdateUserDTO: Content{
    var money: Int?
    var picture: String?
}

struct UserResponseDTO: Content{
    var id: UUID
    var username: String
    var money: Int
    var picture: String
    var playlists : [PlaylistResponseDTO]
    var badges: [BadgeResponseDTO]
}
