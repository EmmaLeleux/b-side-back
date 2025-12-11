//
//  ArtisteMigration.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//
import Fluent


struct ArtisteMigration : AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("artiste")
            .id()
            
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema("artiste").delete()
    }
}
