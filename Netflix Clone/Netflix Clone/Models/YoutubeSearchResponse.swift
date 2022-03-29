//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Wei Liang Tan on 12/03/2022.
//

import Foundation

struct YoutubeSearchResults: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId : String
}
