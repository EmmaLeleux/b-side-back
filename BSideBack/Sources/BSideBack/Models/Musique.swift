//
//  Musique.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class Musique: Model, @unchecked Sendable, Content {
    static let schema = "musique"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "son")
    var son: String
    
    @Children(for: \.$musique)
    var names: [MusiqueName]
    
    @Siblings(through: ArtisteMusique.self, from: \.$musique, to: \.$artiste)
    var artists: [Artiste]
    
    @Siblings(through: PlaylistMusique.self, from: \.$musique, to: \.$playlist)
    var playlists: [Playlist]

    init() {}
    
    func toDTO() -> MusiqueResponseDTO {
        return MusiqueResponseDTO(
            id: id ?? UUID(),
            son: son,
            names: names.map{$0.toDTO()},
            artistes: artists.map{$0.toDTO()}
        )
    }
    
}
