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
        
        return music.toDTO()
    }
    
}
