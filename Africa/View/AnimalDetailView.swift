//
//  AnimalDetailView.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: AnimalListModel
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 8)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
                    HeaderView(headerImage: "photo.on.rectangle.angled", headerText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    HeaderView(headerImage: "questionmark.circle", headerText: "Did you know ? ")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    HeaderView(headerImage: "info.circle", headerText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group {
                    HeaderView(headerImage: "map", headerText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                Group {
                    HeaderView(headerImage: "book.vertical", headerText: "Learn About")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Learn About \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [AnimalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[3])
        }
    }
}
