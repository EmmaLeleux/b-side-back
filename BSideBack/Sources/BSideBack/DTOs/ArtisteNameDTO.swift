//
//  ArtisteNameDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct CreateArtisteNameDTO: Content{
    var name: String
    
    
    func toModel() -> ArtisteName {
        let model = ArtisteName()
        model.name = name
        
        return model
    }
}


struct ArtisteNameResponseDTO: Content{
    var id: UUID
    var name: String
}
