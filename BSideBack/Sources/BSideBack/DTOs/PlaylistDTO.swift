//
//  PlaylistDTO.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor


struct CreatePlaylistDTO: Content{
    var name: String
    var description: String
    var picture: String
    
    func toModel() -> Playlist {
        let model = Playlist()
        model.name = name
        model.description = description
        model.picture = picture
        return model
    }
}

struct UpdatePlaylistDTO: Content{
    var name: String?
    
}

struct PlaylistResponseDTO: Content{
    var id: UUID
    var name: String
    var description: String
    var picture: String
    var musiques: [MusiqueResponseDTO]
}
