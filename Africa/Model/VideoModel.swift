//
//  VideoListView.swift
//  Africa
//
//  Created by FFK on 27.10.2023.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    var thumbnail: String {
        "video-\(id)"
    }
}
