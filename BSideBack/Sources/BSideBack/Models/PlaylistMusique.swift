//
//  PlaylistMusique.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class PlaylistMusique: Model, @unchecked Sendable, Content {
    static let schema = "playlistMusique"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "playlist_id")
    var playlist: Playlist
    
    @Parent(key: "musique_id")
    var musique: Musique
    
    
    init() {}
    
    func toDTO() -> PlaylistMusiqueResponseDTO {
        return PlaylistMusiqueResponseDTO(
            id: id ?? UUID(),
            playlistId: $playlist.id,
            musiqueId: $musique.id
        )
    }
    
}
