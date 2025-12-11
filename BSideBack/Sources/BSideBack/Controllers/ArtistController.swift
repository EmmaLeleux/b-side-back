//
//  File.swift
//  BSideBack
//
//  Created by Lucie Grunenberger  on 11/12/2025.
//

import Fluent
import Vapor
import JWT


struct ArtistController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let artists = routes.grouped("artist")
        let protected = artists.grouped(JWTMiddleware())
        
        protected.group(":id"){ Artist in
            Artist.get(use: getArtistById)
        }
    }
    
    //
    //récupérer un artiste par son id
    @Sendable
    func getArtistById(_ req: Request) async throws -> ArtisteResponseDTO{
        try req.auth.require(UserPayload.self)
        guard let artist = try await Artiste.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        
        return artist.toDTO()
    }
    
}
