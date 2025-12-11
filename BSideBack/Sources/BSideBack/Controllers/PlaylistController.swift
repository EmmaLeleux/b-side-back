//
//  File.swift
//  BSideBack
//
//  Created by Lucie Grunenberger  on 11/12/2025.
//

import Fluent
import Vapor
import JWT


struct PlaylistController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let playlists = routes.grouped("playlist")
        let protected = playlists.grouped(JWTMiddleware())
        
        protected.get(use: getAllPlaylists)
        protected.group(":id"){ Playlist in
            Playlist.get(use: getPlaylistById)
        }
    }
    
    //récuérer toutes les playlists
    @Sendable
    func getAllPlaylists(_ req: Request) async throws -> [Playlist]{
        try req.auth.require(UserPayload.self)
        return try await Playlist.query(on: req.db).all()
    }

    
    
    //récupérer un artiste par son id
    @Sendable
    func getPlaylistById(_ req: Request) async throws -> PlaylistResponseDTO{
        try req.auth.require(UserPayload.self)
        guard let playlist = try await Playlist.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        
        return playlist.toDTO()
    }
    
}
