//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 04.03.2023.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
	struct Info: Codable {
		let count: Int
		let pages: Int
		let next: String?
		let prev: String?
	}
	let info: Info
	let results: [RMEpisode]
}
