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
    
    
    func toModel() -> MusiqueName {
        let model = MusiqueName()
        model.name = name
        
        return model
    }
}


struct MusiqueNameResponseDTO: Content{
    var id: UUID
    var name: String
}
