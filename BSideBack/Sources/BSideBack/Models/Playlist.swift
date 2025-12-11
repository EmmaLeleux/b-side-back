//
//  Playlist.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor

final class Playlist: Model, @unchecked Sendable, Content {
    static let schema = "playlist"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Siblings(through: UserPlaylist.self, from: \.$playlist, to: \.$user)
    var users: [User]
    
    
    init() {}
    
    func toDTO() -> PlaylistResponseDTO {
        return PlaylistResponseDTO(
            id: id ?? UUID(),
            name: name
        )
    }
    
}
