//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Rumeysa Ay on 8.11.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // Alive, Dead or unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
