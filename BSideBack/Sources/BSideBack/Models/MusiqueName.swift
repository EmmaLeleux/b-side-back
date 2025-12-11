//
//  MusiqueName.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor

final class MusiqueName: Model, @unchecked Sendable, Content {
    static let schema = "musiqueName"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Parent(key: "musique_id")
    var musique: Musique
    
    init() {}
    
    init(id: UUID? = nil, name: String, musiqueId: UUID) {
            self.id = id
            self.name = name
            self.$musique.id = musiqueId
        }
    
    func toDTO() -> MusiqueNameResponseDTO {
        return MusiqueNameResponseDTO(
            id: id ?? UUID(),
            name: name
        )
    }
    
}
