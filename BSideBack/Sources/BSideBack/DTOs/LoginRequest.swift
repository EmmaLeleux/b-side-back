//
//  LoginRequest.swift
//  BSideBack
//
//  Created by Emma on 11/12/2025.
//

import Vapor

struct LoginRequest : Content {
    let username : String
    let password : String
}


struct LoginResponse: Content {
    let token: String
    let user: UserResponseDTO
}
