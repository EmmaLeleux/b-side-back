//
//  BadgeDTO.swift
//  BSideBack
//
//  Created by Emma on 10/12/2025.
//

import Fluent
import Vapor


struct CreateBadgeDTO: Content{
    var name: String
    var picture: String
    var nbMoney: Int
    
    func toModel() -> Badge {
        let model = Badge()
        model.name = name
        model.picture = picture
        model.nbMoney = nbMoney
        return model
    }
}

struct UpdateBadgeDTO: Content{
    var name: String?
    var picture: String?
    var nbMoney: Int?
}

struct BadgeResponseDTO: Content{
    var id: UUID
    var name: String
    var picture: String
    var nbMoney: Int
}
