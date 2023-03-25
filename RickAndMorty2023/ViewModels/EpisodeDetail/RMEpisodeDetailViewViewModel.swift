//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 04.03.2023.
//

import UIKit

protocol RMEpisodeDetailViewViewModelDelegate: AnyObject {
	func didFetchEpisodeDetails()
}

final class RMEpisodeDetailViewViewModel {
	private let endpointUrl: URL?
	private var dataTuple: (RMEpisode, [RMCharacter])? {
		didSet {
			delegate?.didFetchEpisodeDetails()
		}
	}
	
	enum SectionType {
		case information(viewModel: [RMEpisodeInfoCollectionViewCellViewModel])
		case characters(viewModel: [RMCharacterCollectionViewCellViewModel])
	}
	
	public weak var delegate: RMEpisodeDetailViewViewModelDelegate?
	
	
	
	// MARK: - Init
	init(endpointUrl: URL?) {
		self.endpointUrl = endpointUrl
		
	}
	
	/// Fetch backing episode mode
	public func fetchEpisodeData() {
		guard let url = endpointUrl, let request = RMRequest(url: url) else { return }
		RMService.shared.execute(request, expecting: RMEpisode.self) { [weak self] result in
			switch result {
			case .success(let model):
				self?.fetchRelatedCharacters(episode: model)
			case .failure:
				break
			}
		}
	}
	private func fetchRelatedCharacters(episode: RMEpisode) {
		let requests: [RMRequest] = episode.characters.compactMap({
			return URL(string: $0)
		}).compactMap ({
			return RMRequest(url: $0)
		})
		
		// 10 of parallel requests
		// Notified once all done
		let group = DispatchGroup()
		var characters: [RMCharacter] = []
		for request in requests {
			group.enter() // +20
			RMService.shared.execute(request, expecting: RMCharacter.self) { result in
				//  This is the last thing that's going to run before the execution of a program exits the scope of this callback, of this closure.
				defer {
					group.leave() // -20
				}
				switch result {
				case .success(let model):
					characters.append(model)
				case .failure:
					break
				}
			}
		}
		
		group.notify(queue: .main) {
			self.dataTuple = (episode, characters)
		}
	}
}
