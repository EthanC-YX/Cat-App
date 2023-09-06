//
//  ContentView.swift
//  Cat App
//
//  Created by Ethan Chow on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                CatFactsView()
                    .tabItem {
                        Label("Get A Fact", systemImage: "lightbulb")
                    }
                CatImagesView()
                    .tabItem {
                        Label("Random Cat", systemImage: "photo")
                    }
                CatBounceView()
                    .tabItem {
                        Label("Bouncy Cat", systemImage: "arrowshape.bounce.right.fill")
                    }
                CatGalleryView()
                    .tabItem {
                        Label("Cat Gallery", systemImage: "photo.stack.fill")
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
