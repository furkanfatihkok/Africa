//
//  AnimalListModel.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import Foundation

struct AnimalListModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
