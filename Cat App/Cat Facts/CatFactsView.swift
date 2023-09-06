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
        Text("Cat Facts")
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
