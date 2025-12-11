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
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "picture")
    var picture: String
    
    @Siblings(through: UserPlaylist.self, from: \.$playlist, to: \.$user)
    var users: [User]
    
    @Siblings(through: PlaylistMusique.self, from: \.$playlist, to: \.$musique)
    var musiques: [Musique]
    
    
    init() {}
    
    func toDTO() -> PlaylistResponseDTO {
        return PlaylistResponseDTO(
            id: id ?? UUID(),
            name: name,
            description: description,
            picture : picture,
            musiques : musiques.map{$0.toDTO()}
        )
    }
    
}
