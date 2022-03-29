//
//  Title.swift
//  Netflix Clone
//
//  Created by Wei Liang Tan on 12/03/2022.
//

// Make models to get the data from the JSON

import Foundation
// Codable is a typealias for the encoder and decoder protocol
// using this is easier to avoid exposing to every error
struct TrendingTitleResponse: Codable {
    let results: [Title]
}

// Model
struct Title: Codable {
    let id: Int
    let media_type: String? 
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
}
