//
//  ArtisteMusiqueMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent

struct ArtisteMusiqueMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("artisteMusique")
            .id()
            .field("artiste_id", .uuid, .required)
            .field("musique_id", .uuid, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("artisteMusique").delete()
    }
}
