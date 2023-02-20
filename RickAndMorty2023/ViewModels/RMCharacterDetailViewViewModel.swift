//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 28.01.2023.
//

import Foundation
final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    init(character: RMCharacter) {
        self.character = character
    }
    public var title: String {
        character.name.uppercased()
    }
}
