//
//  MapAnnotionView.swift
//  Africa
//
//  Created by FFK on 31.10.2023.
//

import SwiftUI

struct MapAnnotionView: View {
    
    let map: MapModel
    @State private var animaton: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animaton))
                .opacity(1 - animaton)
            
            
            Image(map.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear() {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animaton = 1
            }
        }
    }
}

struct MapAnnotionView_Previews: PreviewProvider {
    
    static var mapModel: [MapModel] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotionView(map: mapModel[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
