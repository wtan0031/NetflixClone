//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Wei Liang Tan on 12/03/2022.
//

import Foundation

/*
 items =     (
             {
         etag = "lk8409-m28s-u0WqMRhDC0vgfsE";
         id =             {
             kind = "youtube#video";
             videoId = 0Dj2kq5Neus;
         };
         kind = "youtube#searchResult";
     },
 */

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
