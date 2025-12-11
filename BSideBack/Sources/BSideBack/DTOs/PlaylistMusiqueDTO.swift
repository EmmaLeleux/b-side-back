//
//  PlaylistMusiqueDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct CreatePlaylistMusiqueDTO: Content{
    var playlistId: UUID
    var musiqueId: UUID
    
    func toModel() -> PlaylistMusique {
        let model = PlaylistMusique()
        model.$playlist.id = playlistId
        model.$musique.id = musiqueId
        return model
    }
}

struct PlaylistMusiqueResponseDTO: Content{
    var id: UUID
    var playlistId: UUID
    var musiqueId: UUID
}
