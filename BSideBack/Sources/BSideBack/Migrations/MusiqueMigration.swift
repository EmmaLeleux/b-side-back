//
//  MusiqueMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent

struct MusiqueMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("musique")
            .id()
            .field("son", .string, .required)
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("musique").delete()
    }
}
