//
//  ArtisteMusique.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class ArtisteMusique: Model, @unchecked Sendable, Content {
    static let schema = "artisteMusique"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "artiste_id")
    var artiste: Artiste
    
    @Parent(key: "musique_id")
    var musique: Musique
    
    
    init() {}
    
    func toDTO() -> ArtisteMusiqueResponseDTO {
        return ArtisteMusiqueResponseDTO(
            id: id ?? UUID(),
            artisteId: $artiste.id,
            musiqueId: $musique.id
        )
    }
    
}
