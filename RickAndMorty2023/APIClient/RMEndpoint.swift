//
//  RMEndpoint.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 18.01.2023.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RMEndpoint: String, Hashable, CaseIterable {
    /// Endpoint to get character info
    case character // "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
