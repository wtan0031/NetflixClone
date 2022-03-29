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
    let media_type: String? // let it be optional , if the db did not provide us , it will not crash
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
}

/*
 adult = 0;
 "backdrop_path" = "/2rNt11UPFYpz0MXMephmO0uyM5h.jpg";
 "genre_ids" =             (
     878,
     12,
     35
 );
 id = 696806;
 "media_type" = movie;
 "original_language" = en;
 "original_title" = "The Adam Project";
 overview = "After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.";
 popularity = "283.934";
 "poster_path" = "/sI3hQMTyrF9F8jU1qA8qPHLKCgG.jpg";
 "release_date" = "2022-03-11";
 title = "The Adam Project";
 video = 0;
 "vote_average" = "7.1";
 "vote_count" = 74;
},
 */
