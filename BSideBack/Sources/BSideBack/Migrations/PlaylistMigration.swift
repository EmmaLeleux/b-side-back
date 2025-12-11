//
//  PlaylistMigration.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct PlaylistMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("playlist")
            .id()
            .field("name", .string, .required)
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("playlist").delete()
    }
}
