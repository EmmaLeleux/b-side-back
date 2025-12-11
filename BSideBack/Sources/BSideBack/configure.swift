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

    
    let corsConfiguration = CORSMiddleware.Configuration(
//        allowedOrigin: .custom("mettre le bon domaine"),
        allowedOrigin: .all,
        allowedMethods: [.GET, .POST, .PUT, .PATCH, .DELETE, .OPTIONS],
        allowedHeaders: [.accept, .authorization, .contentType, .origin],
        cacheExpiration: 5
    )
    
    let cors = CORSMiddleware(configuration: corsConfiguration)
    app.middleware.use(cors)
    
    
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

    try await app.autoMigrate()
    // register routes
    try routes(app)
}
