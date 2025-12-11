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
    
    
    func toModel() -> Playlist {
        let model = Playlist()
        model.name = name
        
        return model
    }
}

struct UpdatePlaylistDTO: Content{
    var name: String?
    
}

struct PlaylistResponseDTO: Content{
    var id: UUID
    var name: String
}
