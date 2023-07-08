//
//  ContentView.swift
//  VideoLister
//
//  Created by Ece Havanci on 4.07.2023.
//

import SwiftUI

struct ContentView: View {
    var video : [Video] = []
    var body: some View {
        NavigationView{
            List(video) { item in
                HStack{
                    Image(item.imageName).resizable().scaledToFit().frame(width: 200).cornerRadius(8)
                    
                    Spacer().frame(width: 20)
                    
                    VStack {
                            Text(item.title)
                                .font(.headline)
                                .multilineTextAlignment(.center).minimumScaleFactor(0.75)
                            Text(item.uploadDate)
                            .font(.subheadline).foregroundColor(.secondary)
                    }
                }
            }.frame( maxWidth: .infinity)
                .edgesIgnoringSafeArea(.horizontal)
            .listStyle(GroupedListStyle())
        }.navigationBarTitle("Sean Allen Videos")
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(video: videoInfo.listOfVideos)
    }
}
