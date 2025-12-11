//
//  BadgesMigration.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct BadgesMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("badge")
            .id()
            .field("name", .string, .required)
            .field("picture", .string, .required)
            .field("nbMoney", .int, .required)
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("badge").delete()
    }
}
