//
//  MusiqueDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct CreateMusiqueDTO: Content{
    var son: String
    
    
    func toModel() -> Musique {
        let model = Musique()
        model.son = son
        
        return model
    }
}

struct UpdateMusiqueDTO: Content{
    var son: String?
    
}

struct MusiqueResponseDTO: Content{
    var id: UUID
    var son: String
    var names: [MusiqueNameResponseDTO]
}
