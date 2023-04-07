//
//  RMSearchViewController.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 04.03.2023.
//

import UIKit

// Dynamic search option view
// Render results
// Render no results zero state
// Searching / API call

/// Configurable controller to search
final class RMSearchViewController: UIViewController {

	/// Configuration for search session
	struct Config {
		enum `Type` {
			case character
			case episode
			case location

			var title: String {
				switch self {
				case .character:
					return "Search Characters"
				case .episode:
					return "Search Episode"
				case .location:
					return "Search Location"
				}
			}
		}
		let type: `Type`
	}
	
	private let config: Config
	
	// MARK: - Init
	init(config: Config) {
		self.config = config
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("Unsupported")
	}

	// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		title = config.type.title
		view.backgroundColor = .systemBackground
    }
}
