//
//  RMEpisode.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 15.01.2023.
//

import Foundation
struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}


