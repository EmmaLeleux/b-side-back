import NIOSSL
import Fluent
import FluentMySQLDriver
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(DatabaseConfigurationFactory.mysql(
        hostname: Environment.get("DATABASE_HOST") ?? "127.0.0.1",
        port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? 3306,
        username: Environment.get("DATABASE_USERNAME") ?? "root",
        password: Environment.get("DATABASE_PASSWORD") ?? "",
        database: Environment.get("DATABASE_NAME") ?? "bSideDB"
    ), as: .mysql)

    app.migrations.add(UserMigration())
    app.migrations.add(PlaylistMigration())
    app.migrations.add(MusiqueMigration())
    app.migrations.add(BadgesMigration())
    app.migrations.add(ArtisteMigration())
    app.migrations.add(ArtisteNameMigration())
    app.migrations.add(UserBadgeMigration())
    app.migrations.add(UserPlaylistMigration())
    app.migrations.add(PlaylistMusiqueMigration())
    app.migrations.add(MusiqueNameMigration())
    app.migrations.add(ArtisteMusiqueMigration())
    app.migrations.add(SeedBadges())
    app.migrations.add(SeedPlaylist())

    
    // register routes
    try routes(app)
}
