//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by FFK on 31.10.2023.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: AnimalListModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
    static var animals: [AnimalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[3])
    }
}
