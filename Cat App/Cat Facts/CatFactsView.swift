//
//  CatFactsView.swift
//  Cat App
//
//  Created by Ethan Chow on 6/9/23.
//

import SwiftUI

struct CatFactsView: View {
    
    @StateObject var catFactsManager = CatFactsManager()
    
    var body: some View {
        VStack {
            // if the optional is not nil, display it
            if let catFact = catFactsManager.catFact {
                Text(catFact.fact)
                    .padding()
            } else { // if it's nil, display a loading indicator
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
            .onAppear {
                catFactsManager.getCatFact()
            }
    }
}

struct CatFactsView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactsView()
    }
}
