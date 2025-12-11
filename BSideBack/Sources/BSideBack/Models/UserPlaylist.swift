//
//  UserPlaylist.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

final class UserPlaylist: Model, @unchecked Sendable, Content {
    static let schema = "userPlaylist"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "user_id")
    var user: User
    
    @Parent(key: "playlist_id")
    var playlist: Playlist
    
    
    init() {}
    
    func toDTO() -> UserPlaylistResponseDTO {
        return UserPlaylistResponseDTO(
            id: id ?? UUID(),
            userId: $user.id,
            playlistId: $playlist.id
        )
    }
    
}
