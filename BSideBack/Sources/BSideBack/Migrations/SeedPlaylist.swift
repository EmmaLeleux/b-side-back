//
//  SeedPlaylist.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct SeedPlaylist: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let playlist1 = CreatePlaylistDTO(name: "Variété").toModel()
        let playlist2 = CreatePlaylistDTO(name: "Disney").toModel()
        let playlist3 = CreatePlaylistDTO(name: "Rap US").toModel()
        let playlist4 = CreatePlaylistDTO(name: "Rap FR").toModel()
        let playlist5 = CreatePlaylistDTO(name: "Films / Séries").toModel()
        let playlist6 = CreatePlaylistDTO(name: "Classique").toModel()
        let playlist7 = CreatePlaylistDTO(name: "Rock").toModel()
        let playlist8 = CreatePlaylistDTO(name: "RnB").toModel()
        let playlist9 = CreatePlaylistDTO(name: "Pop").toModel()
        let playlist10 = CreatePlaylistDTO(name: "K-Pop").toModel()
        let playlist11 = CreatePlaylistDTO(name: "Metal").toModel()
        let playlist12 = CreatePlaylistDTO(name: "Années 80").toModel()
        let playlist13 = CreatePlaylistDTO(name: "Années 2000").toModel()
        
        
        try await playlist1.save(on: database)
        try await playlist2.save(on: database)
        try await playlist3.save(on: database)
        try await playlist4.save(on: database)
        try await playlist5.save(on: database)
        try await playlist6.save(on: database)
        try await playlist7.save(on: database)
        try await playlist8.save(on: database)
        try await playlist9.save(on: database)
        try await playlist10.save(on: database)
        try await playlist11.save(on: database)
        try await playlist12.save(on: database)
        try await playlist13.save(on: database)
       
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
