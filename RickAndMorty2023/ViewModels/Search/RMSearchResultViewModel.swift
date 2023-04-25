//
//  RMSearchResultViewModel.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 25.04.2023.
//

import Foundation

enum RMSearchResultViewModel {
	case characters([RMCharacterCollectionViewCellViewModel])
	case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
	case locations([RMLocationTableViewCellViewModel])
}
