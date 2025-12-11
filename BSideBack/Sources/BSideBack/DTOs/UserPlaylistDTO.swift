//
//  UserPlaylistDTO.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor


struct CreateUserPlaylistDTO: Content{
    var userId: UUID
    var playlistId: UUID
    
    func toModel() -> UserPlaylist {
        let model = UserPlaylist()
        model.user.id = userId
        model.playlist.id = playlistId
        return model
    }
}

struct UserPlaylistResponseDTO: Content{
    var id: UUID
    var userId: UUID
    var playlistId: UUID
}
