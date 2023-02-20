//
//  RMCharacterGender.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 18.01.2023.
//

import Foundation
//// 'Female', 'Male', 'Genderless' or 'unknown'
enum RMCharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}

/*
 @harolddavidson5598

Just wanted to let you know, you can also add the extra cases to RMCharacterGender and RMCharacterStatus. For example, I added these to RMCharacterGender:

     case Male = "Male"
     case Female = "Female"
     case Genderless = "Genderless"
     case `Unknown` = "Unknown"

 To have this as my total enum:

 enum RMCharacterGender: String, Codable {
     case male = "male"
     case female = "female"
     case genderless = "genderless"
     case `unknown` = "unknown"

     case Male = "Male"
     case Female = "Female"
     case Genderless = "Genderless"
     case `Unknown` = "Unknown"
 }

 As of 1/29/2023, some results are still coming back in different cases. Amish Cyborg is an example where he's coming back as "Male" instead of "male".
 */
