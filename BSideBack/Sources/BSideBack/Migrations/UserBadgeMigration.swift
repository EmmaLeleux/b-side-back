//
//  UserBadgeMigration.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct UserBadgeMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("userBadge")
            .id()
            .field("user_id", .uuid, .required)
            .field("badge_id", .uuid, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("userBadge").delete()
    }
}
