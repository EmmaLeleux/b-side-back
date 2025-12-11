//
//  SeedPlaylist.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Foundation

struct SeedPlaylist: AsyncMigration {
    func prepare(on database: any Database) async throws {
       
        let playlist1 = CreatePlaylistDTO(name: "Variété", description: "Une playlist variée pleine de variété !", picture: "https://i.ibb.co/gZS25TnL/Group-132.png").toModel()
        let playlist2 = CreatePlaylistDTO(name: "Disney", description: "Des meilleurs sons de disney au sons les plus niches, vient redécouvrir tes classiques !", picture: "https://i.ibb.co/CcR2xK5/Group-133.png").toModel()
        let playlist3 = CreatePlaylistDTO(name: "Rap US", description: "Test ta culture rap américaine entre classiques, bangers et pépites incontournables.", picture: "https://i.ibb.co/v6Vq1DWX/Group-134.png").toModel()
        let playlist4 = CreatePlaylistDTO(name: "Rap FR", description: "Le meilleur du rap français, entre punchlines, flows et pépites cachées.", picture: "https://i.ibb.co/CKnrqDTG/Group-135.png").toModel()
        let playlist5 = CreatePlaylistDTO(name: "Films / Séries", description: "Des musiques marquantes issues du cinéma et des séries, ambiance grands écrans.", picture: "https://i.ibb.co/N608SNhQ/Group-136.png").toModel()
        let playlist6 = CreatePlaylistDTO(name: "Classique", description: "Des œuvres reconnaissables entre mille, du romantique au baroque.", picture: "https://i.ibb.co/Z1WDxJVy/Group-137.png").toModel()
        let playlist7 = CreatePlaylistDTO(name: "Rock", description: "Une collection de titres rock iconiques, énergétiques ou intemporels.", picture: "https://i.ibb.co/F4bPGW9x/Group-138.png").toModel()
        let playlist8 = CreatePlaylistDTO(name: "RnB", description: "Des morceaux RnB entre douceur, groove et voix inoubliables.", picture: "https://i.ibb.co/mnX2tgZ/Group-139.png").toModel()
        let playlist9 = CreatePlaylistDTO(name: "Pop", description: "Un mélange de sons pop lumineux, modernes et catchy.", picture: "https://i.ibb.co/Df18gcqZ/Group-140.png").toModel()
        let playlist10 = CreatePlaylistDTO(name: "K-Pop", description: "Un aperçu de la scène K-Pop, Rock, Hip-Hop, RnB et bien d'autres, mais toujours en coréen ! ... Enfin, en anglais aussi parfois, mais que par des artistes coréens !", picture: "https://i.ibb.co/gZzfVkLq/Group-146.png").toModel()
        let playlist11 = CreatePlaylistDTO(name: "Metal", description: "Une sélection intense, puissante et pleine de caractère.", picture: "https://i.ibb.co/Fq4v3Fv2/Group-147.png").toModel()
        let playlist12 = CreatePlaylistDTO(name: "Années 80", description: "Des titres aux sonorités eighties, entre synthés et couleurs rétro.", picture: "https://i.ibb.co/bjcXwmWd/Group-150.png").toModel()
        let playlist13 = CreatePlaylistDTO(name: "Années 2000", description: "Une ambiance 2000's, entre tubes marquants et styles emblématiques.", picture: "https://i.ibb.co/60vS8Psj/Group-148.png").toModel()
        let playlist14 = CreatePlaylistDTO(name: "Aléatoire", description: "tout au hasard, tu ne peux pas tricher en prenant la seule catégorie que tu connais", picture: "https://i.ibb.co/v6YWSCyc/Group-131.png").toModel()
        
        
        try await playlist1.save(on: database)
        try await playlist2.save(on: database)
        try await playlist3.save(on: database)
        try await playlist4.save(on: database)
        try await playlist5.save(on: database)
        try await playlist6.save(on: database)
        try await playlist7.save(on: database)
        try await playlist8.save(on: database)
        try await playlist9.save(on: database)
        try await playlist10.save(on: database)
        try await playlist11.save(on: database)
        try await playlist12.save(on: database)
        try await playlist13.save(on: database)
        try await playlist14.save(on: database)
        
        
        let blackSwan = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1aUre9slWWpj4x7EGhOqCCSfXb55kl0bN").toModel()
        
        let sorry = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1IKd9JvDCvuE0jUi77YdAZOg9edUc0Szw").toModel()
        
        
        let lonely = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1LNWaw8jdWnrYrh8sDz305OFUnPSvPKnF").toModel()
        
        let tomorrow = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1BFXj70GMSWIkmHcGsuuQi3OZM5FWZYzu").toModel()
        
        let loveMeAgain = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1VL3o8bXyqQpIeSixGF_UKJVCr9KaRNPF").toModel()
        
        let hip = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1f7h_NnAneaNotKXOjiSTyqCrtZX79mIh").toModel()
        
        let ropeIt = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=111sNgdJxYS1iomd6k5hcza9Psj3Zzmv0").toModel()
        
        let queTuMaime = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=10xMiing6jpn9VcVuTkfPO8S9q6L_2Kst").toModel()
        
        let deLaSoul = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1xNWQzij_JX9P2HQr-QSXkraR51kzZfin").toModel()
        
        let disiz = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1q6fG6bz9fQYGfVlL3Cej8iDuiYFni_VJ").toModel()
        
        let houdini = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1xIYdGs4UPtQP-oVO3S0E-YKtfEei7TRQ").toModel()
        
        let earthWindFire = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1JXqIEaS2hwu0nUxyOO8yQRceKZ8HDAzB").toModel()
        
        let iniKamoze = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1FW0hbgYIvLK7ZU38qCzfSutjOIiw7ONX").toModel()
        
        let knochKnoch = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1HJJN5R_snIImU0_BqXNaJFguaJtUoaSF").toModel()
        
        let peppa = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1OP9IKqvS-_zvxTss9xBk1jWDkSzvqtU3").toModel()
        
        let smellLikeTeenSpirit = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=182BI800rWF9y7TGie7A48YZN64TEaLau").toModel()
        
        let youAndI = CreateMusiqueDTO(son: "https://drive.google.com/uc?export=download&id=1aIWfmZPpGSc0wBeZuHqVUxvb6MsoqaiR").toModel()
        
        
        try await blackSwan.save(on: database)
        try await sorry.save(on: database)
        try await lonely.save(on: database)
        try await loveMeAgain.save(on: database)
        try await tomorrow.save(on: database)
        try await hip.save(on: database)
        try await ropeIt.save(on: database)
        try await queTuMaime.save(on: database)
        try await deLaSoul.save(on: database)
        try await disiz.save(on: database)
        try await houdini.save(on: database)
        try await earthWindFire.save(on: database)
        try await iniKamoze.save(on: database)
        try await knochKnoch.save(on: database)
        try await peppa.save(on: database)
        try await smellLikeTeenSpirit.save(on: database)
        try await youAndI.save(on: database)
        
        
        let blackSwanName = CreateMusiqueNameDTO(name: "Black Swan", musiqueId: blackSwan.id ?? UUID()).toModel()
        let sorryName = CreateMusiqueNameDTO(name: "Sorry", musiqueId: sorry.id ?? UUID()).toModel()
        let lonelyName = CreateMusiqueNameDTO(name: "Lonely", musiqueId: lonely.id ?? UUID()).toModel()
        let loveMeAgainName = CreateMusiqueNameDTO(name: "Love Me Again", musiqueId: loveMeAgain.id ?? UUID()).toModel()
        let tomorrowName = CreateMusiqueNameDTO(name: "Tomorrow", musiqueId: tomorrow.id ?? UUID()).toModel()
        let hipName = CreateMusiqueNameDTO(name: "Hip", musiqueId: hip.id ?? UUID()).toModel()
        let ropeItName = CreateMusiqueNameDTO(name: "Rope It", musiqueId: ropeIt.id ?? UUID()).toModel()
        let queTuMaimeName = CreateMusiqueNameDTO(name: "Pour que tu m'aimes encore", musiqueId: queTuMaime.id ?? UUID()).toModel()
        let ringRingName = CreateMusiqueNameDTO(name: "Ring Ring Ring Ha Ha Hey", musiqueId: deLaSoul.id ?? UUID()).toModel()
        let melodramaName = CreateMusiqueNameDTO(name: "melodrama", musiqueId: disiz.id ?? UUID()).toModel()
        let houdiniName = CreateMusiqueNameDTO(name: "Houdini", musiqueId: houdini.id ?? UUID()).toModel()
        let earthWindFireName = CreateMusiqueNameDTO(name: "Let's Groove", musiqueId: earthWindFire.id ?? UUID()).toModel()
        let iniKamozeName = CreateMusiqueNameDTO(name: "Here Comes The Hotstepper", musiqueId: iniKamoze.id ?? UUID()).toModel()
        let knochKnochName = CreateMusiqueNameDTO(name: "Knoch Knoch", musiqueId: knochKnoch.id ?? UUID()).toModel()
        let peppaName = CreateMusiqueNameDTO(name: "Peppa", musiqueId: peppa.id ?? UUID()).toModel()
        let peppaName2 = CreateMusiqueNameDTO(name: "Peppa Pot", musiqueId: peppa.id ?? UUID()).toModel()
        let smellLikeTeenSpiritName = CreateMusiqueNameDTO(name: "Smell Like Teen Spirit", musiqueId: smellLikeTeenSpirit.id ?? UUID()).toModel()
        let youAndIName = CreateMusiqueNameDTO(name: "You & I", musiqueId: youAndI.id ?? UUID()).toModel()
        
        try await blackSwanName.save(on: database)
        try await sorryName.save(on: database)
        try await lonelyName.save(on: database)
        try await loveMeAgainName.save(on: database)
        try await tomorrowName.save(on: database)
        try await hipName.save(on: database)
        try await ropeItName.save(on: database)
        try await queTuMaimeName.save(on: database)
        try await ringRingName.save(on: database)
        try await melodramaName.save(on: database)
        try await houdiniName.save(on: database)
        try await earthWindFireName.save(on: database)
        try await iniKamozeName.save(on: database)
        try await knochKnochName.save(on: database)
        try await peppaName.save(on: database)
        try await peppaName2.save(on: database)
        try await smellLikeTeenSpiritName.save(on: database)
        try await youAndIName.save(on: database)

        
        
        let bts = Artiste()
        let therose = Artiste()
        let rm = Artiste()
        let v = Artiste()
        let mamamoo = Artiste()
        let jin = Artiste()
        let celine = Artiste()
        let deLaSoulArtist = Artiste()
        let disizArtist = Artiste()
        let duaLipa = Artiste()
        let earthWindFireArtist = Artiste()
        let iniKamozeArtist = Artiste()
        let macMiller = Artiste()
        let nirvana = Artiste()
        let majorLazer = Artiste()
        let dabeuil = Artiste()
        let theodora = Artiste()
        
        
        try await bts.save(on: database)
        try await therose.save(on: database)
        try await rm.save(on: database)
        try await v.save(on: database)
        try await mamamoo.save(on: database)
        try await jin.save(on: database)
        try await celine.save(on: database)
        try await deLaSoulArtist.save(on: database)
        try await disizArtist.save(on: database)
        try await duaLipa.save(on: database)
        try await earthWindFireArtist.save(on: database)
        try await iniKamozeArtist.save(on: database)
        try await macMiller.save(on: database)
        try await nirvana.save(on: database)
        try await majorLazer.save(on: database)
        try await dabeuil.save(on: database)
        try await theodora.save(on: database)
        
        
        let interMusArt1 = CreateArtisteMusiqueDTO(artisteId: bts.id ?? UUID(), musiqueId: blackSwan.id ?? UUID()).toModel()
        let interMusArt2 = CreateArtisteMusiqueDTO(artisteId: bts.id ?? UUID(), musiqueId: tomorrow.id ?? UUID()).toModel()
        let interMusArt3 = CreateArtisteMusiqueDTO(artisteId: therose.id ?? UUID(), musiqueId: sorry.id ?? UUID()).toModel()
        let interMusArt4 = CreateArtisteMusiqueDTO(artisteId: rm.id ?? UUID(), musiqueId: lonely.id ?? UUID()).toModel()
        let interMusArt5 = CreateArtisteMusiqueDTO(artisteId: v.id ?? UUID(), musiqueId: loveMeAgain.id ?? UUID()).toModel()
        let interMusArt6 = CreateArtisteMusiqueDTO(artisteId: mamamoo.id ?? UUID(), musiqueId: hip.id ?? UUID()).toModel()
        let interMusArt7 = CreateArtisteMusiqueDTO(artisteId: jin.id ?? UUID(), musiqueId: ropeIt.id ?? UUID()).toModel()
        let interMusArt8 = CreateArtisteMusiqueDTO(artisteId: celine.id ?? UUID(), musiqueId: queTuMaime.id ?? UUID()).toModel()
        let interMusArt9 = CreateArtisteMusiqueDTO(artisteId: deLaSoulArtist.id ?? UUID(), musiqueId: deLaSoul.id ?? UUID()).toModel()
        let interMusArt10 = CreateArtisteMusiqueDTO(artisteId: disizArtist.id ?? UUID(), musiqueId: disiz.id ?? UUID()).toModel()
        let interMusArt11 = CreateArtisteMusiqueDTO(artisteId: duaLipa.id ?? UUID(), musiqueId: houdini.id ?? UUID()).toModel()
        let interMusArt12 = CreateArtisteMusiqueDTO(artisteId: earthWindFireArtist.id ?? UUID(), musiqueId: earthWindFire.id ?? UUID()).toModel()
        let interMusArt13 = CreateArtisteMusiqueDTO(artisteId: iniKamozeArtist.id ?? UUID(), musiqueId: iniKamoze.id ?? UUID()).toModel()
        let interMusArt14 = CreateArtisteMusiqueDTO(artisteId: macMiller.id ?? UUID(), musiqueId: knochKnoch.id ?? UUID()).toModel()
        let interMusArt15 = CreateArtisteMusiqueDTO(artisteId: majorLazer.id ?? UUID(), musiqueId: peppa.id ?? UUID()).toModel()
        let interMusArt16 = CreateArtisteMusiqueDTO(artisteId: nirvana.id ?? UUID(), musiqueId: smellLikeTeenSpirit.id ?? UUID()).toModel()
        let interMusArt17 = CreateArtisteMusiqueDTO(artisteId: theodora.id ?? UUID(), musiqueId: youAndI.id ?? UUID()).toModel()
        let interMusArt18 = CreateArtisteMusiqueDTO(artisteId: dabeuil.id ?? UUID(), musiqueId: youAndI.id ?? UUID()).toModel()
        
        
        try await interMusArt1.save(on: database)
        try await interMusArt2.save(on: database)
        try await interMusArt3.save(on: database)
        try await interMusArt4.save(on: database)
        try await interMusArt5.save(on: database)
        try await interMusArt6.save(on: database)
        try await interMusArt7.save(on: database)
        try await interMusArt8.save(on: database)
        try await interMusArt9.save(on: database)
        try await interMusArt10.save(on: database)
        try await interMusArt11.save(on: database)
        try await interMusArt12.save(on: database)
        try await interMusArt13.save(on: database)
        try await interMusArt14.save(on: database)
        try await interMusArt15.save(on: database)
        try await interMusArt16.save(on: database)
        try await interMusArt17.save(on: database)
        try await interMusArt18.save(on: database)
        
        let vname1 = CreateArtisteNameDTO(name: "V", artistId: v.id ?? UUID()).toModel()
        let vname2 = CreateArtisteNameDTO(name: "Taehyung", artistId: v.id ?? UUID()).toModel()
        let vname3 = CreateArtisteNameDTO(name: "Tae", artistId: v.id ?? UUID()).toModel()
        let btsname1 = CreateArtisteNameDTO(name: "BTS", artistId: bts.id ?? UUID()).toModel()
        let btsname2 = CreateArtisteNameDTO(name: "Bangtan Boys", artistId: bts.id ?? UUID()).toModel()
        let btsname3 = CreateArtisteNameDTO(name: "Beyond The Scene", artistId: bts.id ?? UUID()).toModel()
        let btsname4 = CreateArtisteNameDTO(name: "Bangtan", artistId: bts.id ?? UUID()).toModel()
        let therosename1 = CreateArtisteNameDTO(name: "The Rose", artistId: therose.id ?? UUID()).toModel()
        let rmname1 = CreateArtisteNameDTO(name: "RM", artistId: rm.id ?? UUID()).toModel()
        let rmname2 = CreateArtisteNameDTO(name: "Namjoon", artistId: rm.id ?? UUID()).toModel()
        let rmname3 = CreateArtisteNameDTO(name: "Nam", artistId: rm.id ?? UUID()).toModel()
        let rmname4 = CreateArtisteNameDTO(name: "Rap Monster", artistId: rm.id ?? UUID()).toModel()
        let mamamooName = CreateArtisteNameDTO(name: "Mamamoo", artistId: mamamoo.id ?? UUID()).toModel()
        let jinName = CreateArtisteNameDTO(name: "Jin", artistId: jin.id ?? UUID()).toModel()
        let jinName2 = CreateArtisteNameDTO(name: "Seokjin", artistId: jin.id ?? UUID()).toModel()
        let jinName3 = CreateArtisteNameDTO(name: "Kim Seokjin", artistId: jin.id ?? UUID()).toModel()
        let celineName = CreateArtisteNameDTO(name: "Céline Dion", artistId: celine.id ?? UUID()).toModel()
        let deLaSoulArtistName = CreateArtisteNameDTO(name: "De La Soul", artistId: deLaSoulArtist.id ?? UUID()).toModel()
        let disizArtistName = CreateArtisteNameDTO(name: "Disiz", artistId: disizArtist.id ?? UUID()).toModel()
        let duaLipaName = CreateArtisteNameDTO(name: "Dua Lipa", artistId: duaLipa.id ?? UUID()).toModel()
        let earthGangName = CreateArtisteNameDTO(name: "Earth, Wind & Fire", artistId: earthWindFireArtist.id ?? UUID()).toModel()
        let iniKamozArtistName = CreateArtisteNameDTO(name: "Ini Kamoze", artistId: iniKamozeArtist.id ?? UUID()).toModel()
        let macMillerArtistName = CreateArtisteNameDTO(name: "Mac Miller", artistId: macMiller.id ?? UUID()).toModel()
        let nirvanaName = CreateArtisteNameDTO(name: "Nirvana", artistId: nirvana.id ?? UUID()).toModel()
        let majorLazerArtistName = CreateArtisteNameDTO(name: "Major Lazer", artistId: majorLazer.id ?? UUID()).toModel()
        let dabeuilName = CreateArtisteNameDTO(name: "Dabeuil", artistId: dabeuil.id ?? UUID()).toModel()
        let dabeuilName2 = CreateArtisteNameDTO(name: "Dabeull", artistId: dabeuil.id ?? UUID()).toModel()
        let theodoraName = CreateArtisteNameDTO(name: "Theodora", artistId: theodora.id ?? UUID()).toModel()
        
        try await vname1.save(on: database)
        try await vname2.save(on: database)
        try await vname3.save(on: database)

        try await btsname1.save(on: database)
        try await btsname2.save(on: database)
        try await btsname3.save(on: database)
        try await btsname4.save(on: database)

        try await therosename1.save(on: database)

        try await rmname1.save(on: database)
        try await rmname2.save(on: database)
        try await rmname3.save(on: database)
        try await rmname4.save(on: database)

        try await mamamooName.save(on: database)

        try await jinName.save(on: database)
        try await jinName2.save(on: database)
        try await jinName3.save(on: database)

        try await celineName.save(on: database)

        try await deLaSoulArtistName.save(on: database)

        try await disizArtistName.save(on: database)

        try await duaLipaName.save(on: database)

        try await earthGangName.save(on: database)

        try await iniKamozArtistName.save(on: database)

        try await macMillerArtistName.save(on: database)

        try await nirvanaName.save(on: database)

        try await majorLazerArtistName.save(on: database)

        try await dabeuilName.save(on: database)
        try await dabeuilName2.save(on: database)
        try await theodoraName.save(on: database)

        
        
        
        
        
        let tableInter1 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: blackSwan.id ?? UUID()).toModel()
        let tableInter2 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: sorry.id ?? UUID()).toModel()
        let tableInter3 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: lonely.id ?? UUID()).toModel()
        let tableInter4 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: hip.id ?? UUID()).toModel()
        let tableInter5 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: ropeIt.id ?? UUID()).toModel()
        let tableInter6 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: loveMeAgain.id ?? UUID()).toModel()
        let tableInter7 = CreatePlaylistMusiqueDTO(playlistId: playlist10.id ?? UUID(), musiqueId: tomorrow.id ?? UUID()).toModel()
        let tableInter8 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: sorry.id ?? UUID()).toModel()
        let tableInter9 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: queTuMaime.id ?? UUID()).toModel()
        let tableInter10 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: deLaSoul.id ?? UUID()).toModel()
        let tableInter11 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: disiz.id ?? UUID()).toModel()
        let tableInter12 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: houdini.id ?? UUID()).toModel()
        let tableInter13 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: earthWindFire.id ?? UUID()).toModel()
        let tableInter14 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: iniKamoze.id ?? UUID()).toModel()
        let tableInter15 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: knochKnoch.id ?? UUID()).toModel()
        let tableInter16 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: peppa.id ?? UUID()).toModel()
        let tableInter17 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: smellLikeTeenSpirit.id ?? UUID()).toModel()
        let tableInter18 = CreatePlaylistMusiqueDTO(playlistId: playlist14.id ?? UUID(), musiqueId: youAndI.id ?? UUID()).toModel()
       
        
        try await tableInter1.save(on: database)
        try await tableInter2.save(on: database)
        try await tableInter3.save(on: database)
        try await tableInter4.save(on: database)
        try await tableInter5.save(on: database)
        try await tableInter6.save(on: database)
        try await tableInter7.save(on: database)
        try await tableInter8.save(on: database)
        try await tableInter9.save(on: database)
        try await tableInter10.save(on: database)
        try await tableInter11.save(on: database)
        try await tableInter12.save(on: database)
        try await tableInter13.save(on: database)
        try await tableInter14.save(on: database)
        try await tableInter15.save(on: database)
        try await tableInter16.save(on: database)
        try await tableInter17.save(on: database)
        try await tableInter18.save(on: database)
    }
    
    func revert(on database: any Database) async throws {
        // Supprimer les playlists
        try await Playlist.query(on: database)
            .filter(\.$name == "Variété")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Disney")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rap US")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rap FR")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Films / Séries")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Classique")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Rock")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "RnB")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Pop")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "K-Pop")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Metal")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Années 80")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Années 2000")
            .delete()
        try await Playlist.query(on: database)
            .filter(\.$name == "Aléatoire")
            .delete()
        
        // Supprimer toutes les musiques
        try await Musique.query(on: database).delete()
        
        // Supprimer tous les noms de musiques
        try await MusiqueName.query(on: database).delete()
        
        // Supprimer tous les artistes
        try await Artiste.query(on: database).delete()
        
        // Supprimer tous les noms d'artistes
        try await ArtisteName.query(on: database).delete()
        
        // Supprimer toutes les relations ArtisteMusique
        try await ArtisteMusique.query(on: database).delete()
        
        // Supprimer toutes les relations PlaylistMusique
        try await PlaylistMusique.query(on: database).delete()
    }
}
