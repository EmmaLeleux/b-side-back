//
//  ArtisteName.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class ArtisteName: Model, @unchecked Sendable, Content {
    static let schema = "artisteName"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Parent(key: "artiste_id")
    var artiste: Artiste
    
    init() {}
    
    func toDTO() -> ArtisteNameResponseDTO {
        return ArtisteNameResponseDTO(
            id: id ?? UUID(),
            name: name
        )
    }
    
}
