//
//  CatFactsManager.swift
//  Cat App
//
//  Created by Ethan Chow on 6/9/23.
//

import Foundation

class CatFactsManager: ObservableObject {
    
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    
    func getCatFact() {
        
        Task {
            let (data, response) = try await URLSession.shared.data(from: apiURL)
            print("🐱 GOT CAT FACT!!! 🐱")
            print(data)
            print(response)
        }
        
    }
    
}

