//
//  MusiqueNameMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//


import Fluent

struct MusiqueNameMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("musiqueName")
            .id()
            .field("name", .string, .required)
            .field("musique_id", .uuid, .required)
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("musiqueName").delete()
    }
}
