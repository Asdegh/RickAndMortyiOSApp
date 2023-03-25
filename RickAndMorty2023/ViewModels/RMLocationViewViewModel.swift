//
//  RMLocationViewViewModel.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 25.03.2023.
//

import Foundation

final class RMLocationViewViewModel {

	private var locations: [RMLocation] = []

	// Location response info
	// Will contain next url, if present

	private var cellViewModels: [String] = []

	init() {}

	public func fetchLocations() {
		RMService.shared.execute(.listLocationsRequest, expecting: String.self) { result in
			switch result {
			case .success(let model):
				break
			case .failure(let error):
				break
			}
		}
	}

	private var hasMoreResults: Bool {
		return false
	}
}
