//
//  SeedUsers.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct SeedBadges: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let badge1 = CreateBadgeDTO(name: "Mozart", picture: "https://i.ibb.co/jknjxmx0/badge-Mozart.png", nbMoney: 700).toModel()
        
        let badge2 = CreateBadgeDTO(name: "Champion", picture: "https://i.ibb.co/NgtymQf4/Chamion.png", nbMoney: 3000).toModel()
        let badge3 = CreateBadgeDTO(name: "Novice", picture: "https://i.ibb.co/wh9mSR9Z/Novice.png", nbMoney: 100).toModel()
        let badge4 = CreateBadgeDTO(name: "Tigre", picture: "https://i.ibb.co/jknjxmx0/badge-Mozart.png", nbMoney: 4000).toModel()
        
        try await badge1.save(on: database)
        try await badge2.save(on: database)
        try await badge3.save(on: database)
        try await badge4.save(on: database)
       
    }
    
    func revert(on database: any Database) async throws {
       
        try await Badge.query(on: database)
            .filter(\.$name == "Mozart")
            .delete()
        try await Badge.query(on: database)
            .filter(\.$name == "Champion")
            .delete()
        try await Badge.query(on: database)
            .filter(\.$name == "Novice")
            .delete()
        try await Badge.query(on: database)
            .filter(\.$name == "Tigre")
            .delete()
        
    }
}
