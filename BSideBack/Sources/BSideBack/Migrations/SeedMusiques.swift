//
//  SeedMusiques.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent

struct SeedMusique: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let musique1 = CreateMusiqueDTO(son: "").toModel()
        
        
        
        try await musique1.save(on: database)
        
        
        
       
    }
    
    func revert(on database: any Database) async throws {
       
        try await Playlist.query(on: database)
            .filter(\.$name == "Disney")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Variété")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rap US")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rap FR")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Films / Séries")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Classique")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rock")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "RnB")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Pop")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "K-Pop")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Années 80")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Années 2000")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Metal")
            .delete()
        
    }
}
