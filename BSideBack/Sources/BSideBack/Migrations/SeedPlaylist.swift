//
//  SeedPlaylist.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Foundation

struct SeedPlaylist: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let playlist1 = CreatePlaylistDTO(name: "Variété", description: "Une playlist variée pleine de variété !").toModel()
        let playlist2 = CreatePlaylistDTO(name: "Disney", description: "Des meilleurs sons de disney au sons les plus niches, vient redécouvrir tes classiques !").toModel()
        let playlist3 = CreatePlaylistDTO(name: "Rap US", description: "Test ta culture rap américaine entre classiques, bangers et pépites incontournables.").toModel()
        let playlist4 = CreatePlaylistDTO(name: "Rap FR", description: "Le meilleur du rap français, entre punchlines, flows et pépites cachées.").toModel()
        let playlist5 = CreatePlaylistDTO(name: "Films / Séries", description: "Des musiques marquantes issues du cinéma et des séries, ambiance grands écrans.").toModel()
        let playlist6 = CreatePlaylistDTO(name: "Classique", description: "Des œuvres reconnaissables entre mille, du romantique au baroque.").toModel()
        let playlist7 = CreatePlaylistDTO(name: "Rock", description: "Une collection de titres rock iconiques, énergétiques ou intemporels.").toModel()
        let playlist8 = CreatePlaylistDTO(name: "RnB", description: "Des morceaux RnB entre douceur, groove et voix inoubliables.").toModel()
        let playlist9 = CreatePlaylistDTO(name: "Pop", description: "Un mélange de sons pop lumineux, modernes et catchy.").toModel()
        let playlist10 = CreatePlaylistDTO(name: "K-Pop", description: "Un aperçu de la scène K-Pop, Rock, Hip-Hop, RnB et bien d'autres, mais toujours en coréen !").toModel()
        let playlist11 = CreatePlaylistDTO(name: "Metal", description: "Une sélection intense, puissante et pleine de caractère.").toModel()
        let playlist12 = CreatePlaylistDTO(name: "Années 80", description: "Des titres aux sonorités eighties, entre synthés et couleurs rétro.").toModel()
        let playlist13 = CreatePlaylistDTO(name: "Années 2000", description: "Une ambiance 2000's, entre tubes marquants et styles emblématiques.").toModel()
        
        
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
        
        
        let musique1 = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1aUre9slWWpj4x7EGhOqCCSfXb55kl0bN").toModel()
        
        let musique2 = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1IKd9JvDCvuE0jUi77YdAZOg9edUc0Szw").toModel()
        
        try await musique1.save(on: database)
        try await musique2.save(on: database)
        
        let tableInter1 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: musique1.id ?? UUID()).toModel()
        let tableInter2 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: musique2.id ?? UUID()).toModel()
       
        
        try await tableInter1.save(on: database)
        try await tableInter2.save(on: database)
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
