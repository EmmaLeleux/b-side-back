//
//  ArtisteMusiqueDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct ArtisteMusiqueBadgeDTO: Content{
    var artisteId: UUID
    var musiqueId: UUID
    
    func toModel() -> ArtisteMusique {
        let model = ArtisteMusique()
        model.artiste.id = artisteId
        model.musique.id = musiqueId
        return model
    }
}

struct ArtisteMusiqueResponseDTO: Content{
    var id: UUID
    var artisteId: UUID
    var musiqueId: UUID
}
