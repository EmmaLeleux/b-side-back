//
//  ArtisteNameMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent

struct ArtisteNameMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("artisteName")
            .id()
            .field("name", .string, .required)
            .field("artiste_id", .uuid, .required)
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("artisteName").delete()
    }
}
