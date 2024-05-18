//
//  User.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let phone: String
    let email: String
    let joined: TimeInterval
}
