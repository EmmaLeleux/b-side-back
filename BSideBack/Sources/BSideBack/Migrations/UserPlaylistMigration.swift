//
//  UserPlaylistMigration.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct UserPlaylistMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("userPlaylist")
            .id()
            .field("user_id", .uuid, .required)
            .field("playlist_id", .uuid, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("userPlaylist").delete()
    }
}
