//
//  AnimalListRowView.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import SwiftUI

struct AnimalListView: View {
    
    let animal: AnimalListModel
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack (alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.vertical, 8)
            }
        }
    }
}

struct AnimalListRowView_Previews: PreviewProvider {
    
    static let animals: [AnimalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
