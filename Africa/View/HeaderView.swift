//
//  HeaderView.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import SwiftUI

struct HeaderView: View {
    
    var headerImage: String
    var headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: headerImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headerText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headerImage: "photo.on.rectangle.angled", headerText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
    }
}
