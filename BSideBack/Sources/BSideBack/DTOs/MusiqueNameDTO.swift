//
//  MusiqueNameDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct CreateMusiqueNameDTO: Content{
    var name: String
    var musiqueId: UUID
    
    
    func toModel() -> MusiqueName {
        let model = MusiqueName()
        model.name = name
        model.$musique.id = musiqueId
        return model
    }
}


struct MusiqueNameResponseDTO: Content{
    var id: UUID
    var name: String
}
