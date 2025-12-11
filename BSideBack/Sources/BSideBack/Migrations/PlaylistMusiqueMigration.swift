//
//  PlaylistMusiqueMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Fluent

struct PlaylistMusiqueMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("playlistMusique")
            .id()
            .field("playlist_id", .uuid, .required)
            .field("musique_id", .uuid, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("playlistMusique").delete()
    }
}
