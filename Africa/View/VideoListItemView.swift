//
//  VideoListItemView.swift
//  Africa
//
//  Created by FFK on 27.10.2023.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: VideoModel
    
    var body: some View {
        HStack (spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    
    static var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
