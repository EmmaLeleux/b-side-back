//
//  File.swift
//  BSideBack
//
//  Created by Lucie Grunenberger  on 11/12/2025.
//

import Fluent
import Vapor
import JWT


struct MusicController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let musics = routes.grouped("music")
        let protected = musics.grouped(JWTMiddleware())
        
        protected.group(":id"){ Music in
            Music.get(use: getMusicById)
        }
    }
    
    //
    //récupérer un artiste par son id
    @Sendable
    func getMusicById(_ req: Request) async throws -> MusiqueResponseDTO{
        try req.auth.require(UserPayload.self)
        guard let music = try await Musique.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        
        try await music.$names.load(on: req.db)
                try await music.$artists.load(on: req.db)
                
                for artiste in music.artists {
                    try await artiste.$names.load(on: req.db)
                }
        return music.toDTO()
    }
    
}
