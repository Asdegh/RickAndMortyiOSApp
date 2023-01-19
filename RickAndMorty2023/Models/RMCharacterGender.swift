//
//  RMCharacterGender.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 18.01.2023.
//

import Foundation
// 'Female', 'Male', 'Genderless' or 'unknown'
enum RMCharacterGender: String, Codable {
case male = "Male"
    case female = "Female"
    case genderless
}
