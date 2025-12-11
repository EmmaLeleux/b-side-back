//
//  SeedUsers.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct SeedBadges: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let badge1 = CreateBadgeDTO(name: "Mozart", picture: "https://i.ibb.co/jknjxmx0/badge-Mozart.png", nbMoney: 100).toModel()
        
        try await badge1.save(on: database)
       
    }
    
    func revert(on database: any Database) async throws {
       
        try await Badge.query(on: database)
            .filter(\.$name == "Mozart")
            .delete()
        
    }
}
