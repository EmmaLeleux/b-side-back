//
//  ArtisteDTO.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent
import Vapor


struct ArtisteResponseDTO: Content{
    var id: UUID
    var names: [ArtisteNameResponseDTO]
    
}
