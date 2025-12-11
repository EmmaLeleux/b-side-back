//
//  UserMigration.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent

struct UserMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("user")
            .id()
            .field("username", .string, .required)
            .field("password", .string, .required)
            .field("money", .int, .required)
            .field("picture", .string, .required)
            .unique(on: "username")
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("user").delete()
    }
}
