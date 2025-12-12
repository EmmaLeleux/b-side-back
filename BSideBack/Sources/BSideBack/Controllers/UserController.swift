//
//  UserController.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//
import Fluent
import Vapor
import JWT


struct UserController: RouteCollection {
    
    
    func boot(routes: any RoutesBuilder) throws {
        let user = routes.grouped("user")
        
        
        //routes  public
        user.post(use: createUser)
        user.post("login", use: login)
      
        
        
        //routes privées`
        let protectedRoutes = user.grouped(JWTMiddleware())
        protectedRoutes.patch(use: self.updateUser)
        protectedRoutes.delete(use: deleteUser)
        protectedRoutes.get("me", use: getMyUser)
        protectedRoutes.post("badge", use: addBadgeToUser)
    
        
        
      
        
        
        
        
    }
    
    
    @Sendable
    func getMyUser(req: Request) async throws -> UserResponseDTO {
        let payload = try req.auth.require(UserPayload.self)
        
        guard let user = try await User.query(on: req.db).filter(\.$id == payload.id).first() else {
            throw Abort(.notFound, reason: "User not found")
        }
        
        try await user.$playlists.load(on: req.db)
            try await user.$badges.load(on: req.db)
            
            
            for playlist in user.playlists {
                try await playlist.$musiques.load(on: req.db)
                
                
                for musique in playlist.musiques {
                    try await musique.$names.load(on: req.db)
                    try await musique.$artists.load(on: req.db)
                    
                  
                    for artiste in musique.artists {
                        try await artiste.$names.load(on: req.db)
                    }
                }
            }
        return user.toDTO()
    }
    
    @Sendable
    func addBadgeToUser(_ req: Request) async throws -> UserResponseDTO{
        let payload = try req.auth.require(UserPayload.self)
        
        let dto = try req.content.decode(CreateUserBadgeDTO.self)
            
            let playlistToAdd = UserBadge()
            playlistToAdd.$user.id = payload.id
        playlistToAdd.$badge.id = dto.badgeId
            
            try await playlistToAdd.save(on: req.db)
        
        guard let user = try await User.find(payload.id, on: req.db) else {
            throw Abort(.notFound, reason: "User not found")
        }
        
        try await user.$playlists.load(on: req.db)
           try await user.$badges.load(on: req.db)
           
           for playlist in user.playlists {
               try await playlist.$musiques.load(on: req.db)
               
               for musique in playlist.musiques {
                   try await musique.$names.load(on: req.db)
                   try await musique.$artists.load(on: req.db)
                   
                   for artiste in musique.artists {
                       try await artiste.$names.load(on: req.db)
                   }
               }
           }
        
        return user.toDTO()
    }
    
    
    
    @Sendable
    func createUser(req: Request) async throws -> LoginResponse {
        let user = try req.content.decode(CreateUserDTO.self).toModel()
        
        user.password = try Bcrypt.hash(user.password)
        
        let existing = try await User.query(on: req.db)
            .filter(\.$username == user.username)
            .first()
        if existing != nil {
            throw Abort(.badRequest, reason: "Username already taken")
        }
        
        try await user.save(on: req.db)
        
        // Charger les relations (vides pour un nouvel utilisateur)
        try await user.$playlists.load(on: req.db)
        try await user.$badges.load(on: req.db)
        
        let payload = UserPayload(id: user.id!)
        let signer = JWTSigner.hs256(key: "WelcomeToTheB-Siiiiiiiiiiiide")
        let token = try signer.sign(payload)
        
        return LoginResponse(token: token, user: user.toDTO())
    }
    
    @Sendable
    func login(req: Request) async throws -> LoginResponse {
        let userData = try req.content.decode(LoginRequest.self)
        
        guard let user = try await User.query(on: req.db)
            .filter(\.$username == userData.username)
            .first() else {
            throw Abort(.unauthorized, reason: "Unknow User")
        }
        
        guard try Bcrypt.verify(userData.password, created: user.password) else {
            throw Abort(.unauthorized, reason: "Password incorect")
        }
        
        // Charger les relations
        try await user.$playlists.load(on: req.db)
        try await user.$badges.load(on: req.db)
        
        for playlist in user.playlists {
            try await playlist.$musiques.load(on: req.db)
            
            for musique in playlist.musiques {
                try await musique.$names.load(on: req.db)
                try await musique.$artists.load(on: req.db)
                
                for artiste in musique.artists {
                    try await artiste.$names.load(on: req.db)
                }
            }
        }
        
        let payload = UserPayload(id: user.id!)
        let signer = JWTSigner.hs256(key: "WelcomeToTheB-Siiiiiiiiiiiide")
        let token = try signer.sign(payload)
        
        return LoginResponse(token: token, user: user.toDTO())
    }
    
    
    
    @Sendable
    func updateUser(_ req: Request) async throws -> UserResponseDTO {
        let payload = try req.auth.require(UserPayload.self)
        
        guard let user = try await User.query(on: req.db).filter(\.$id == payload.id).first() else {
            throw Abort(.notFound, reason: "User not found")
        }
        
        let updatedUser = try req.content.decode(UpdateUserDTO.self)
        
        if let newMoney = updatedUser.money {
            user.money = newMoney
        }
        
        if let newPicture = updatedUser.picture{
            user.picture = newPicture
        }
        
        try await user.save(on: req.db)
        
        try await user.$playlists.load(on: req.db)
            try await user.$badges.load(on: req.db)
            
            for playlist in user.playlists {
                try await playlist.$musiques.load(on: req.db)
                
                for musique in playlist.musiques {
                    try await musique.$names.load(on: req.db)
                    try await musique.$artists.load(on: req.db)
                    
                    for artiste in musique.artists {
                        try await artiste.$names.load(on: req.db)
                    }
                }
            }
        return user.toDTO()
    }
    
    
    @Sendable
    func deleteUser(_ req: Request) async throws -> HTTPStatus {
        
        let payload = try req.auth.require(UserPayload.self)
        
        guard let user = try await User.query(on: req.db).filter(\.$id == payload.id).first() else {
            throw Abort(.notFound, reason: "User not found")
        }
        
        try await user.delete(on: req.db)
        
        return .noContent
    }
    
    
}
