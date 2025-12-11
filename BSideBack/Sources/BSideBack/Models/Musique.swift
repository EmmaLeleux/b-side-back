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
    
    init() {}
    
    func toDTO() -> MusiqueResponseDTO {
        return MusiqueResponseDTO(
            id: id ?? UUID(),
            son: son,
            names: names.map{$0.toDTO()}
        )
    }
    
}
