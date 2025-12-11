//
//  Artiste.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class Artiste: Model, @unchecked Sendable, Content {
    static let schema = "artiste"
    
    @ID(key: .id)
    var id: UUID?
    
    @Children(for: \.$artiste)
    var names: [ArtisteName]
    
    @Siblings(through: ArtisteMusique.self, from: \.$artiste, to: \.$musique)
    var musics: [Musique]

    
    
    init() {}
    
    func toDTO() -> ArtisteResponseDTO {
        return ArtisteResponseDTO(
            id: id ?? UUID(),
            names: names.map{ $0.toDTO()}
        )
    }
    
}
