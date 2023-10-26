//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import Foundation

extension Bundle {
    
    func decode <T: Codable> (_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) from bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) from bundle")
        }
        return decodedData
    }
}
