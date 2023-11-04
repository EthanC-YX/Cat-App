//
//  CatImagesView.swift
//  Cat App
//
//  Created by Ethan Chow on 6/9/23.
//

import SwiftUI

struct CatImagesView: View {
    
    @State var catURL = "https://cataas.com/cat?q="
    
    var body: some View {
        VStack {
            
            Spacer()
            
            AsyncImage(url: URL(string: catURL)!) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
            Button("Give me new cat") {
                catURL += "1"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct CatImagesView_Previews: PreviewProvider {
    static var previews: some View {
        CatImagesView()
    }
}
