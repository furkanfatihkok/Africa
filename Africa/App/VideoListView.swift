//
//  VideoListView.swift
//  Africa
//
//  Created by FFK on 26.10.2023.
//

import SwiftUI

struct VideoListView: View {
    
    
    @State private var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink (destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
