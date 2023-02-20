//
//  RMCharacterStatus.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 18.01.2023.
//

import Foundation


/// Written by Afraz
//enum RMCharacterStatus: String, Codable {
//    case alive = "Alive"
//    case dead = "Dead"
//    case `unknown` = "unknown"
//
//    var text: String {
//        switch self {
//        case .alive, .dead:
//            return rawValue
//        case .unknown:
//            return "Unknown"
//        }
//    }
//}

/// Written by @aliamanvermez7506
 enum RMCharacterStatus: String, Codable {
     
     case Alive = "Alive"
     case Dead = "Dead"
     case `unknown` = "unknown"
     
     var text : String {
         switch self {
         case .Alive, .Dead:
             return rawValue
         case .unknown:
             return "Unknown"
         }
     }
     
 }
 
