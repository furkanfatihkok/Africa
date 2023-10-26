//
//  InsetFactView.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: AnimalListModel
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [AnimalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[6])
    }
}
