//
//  RMSearchViewViewModel.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 07.04.2023.
//

import Foundation

// Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMSearchViewViewModel {
	let config: RMSearchViewController.Config

	init(config: RMSearchViewController.Config) {
		self.config = config
	}
}
