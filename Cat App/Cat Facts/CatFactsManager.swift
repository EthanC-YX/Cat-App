//
//  CatFactsManager.swift
//  Cat App
//
//  Created by Ethan Chow on 6/9/23.
//

import Foundation

class CatFactsManager: ObservableObject {
    
    let apiURL = URL(string: "https://catfact.ninja/fact?q=")!
    @Published var catFact: CatFact?
    
    func getCatFact() {
        
        catFact = nil
        
        Task {
            let (data, _) = try await URLSession.shared.data(from: apiURL)
            print("🐱 GOT CAT FACT!!! 🐱")
            print(data)
            print(String(data: data, encoding: .utf8)!)
            
            // update the UI - go back to the main thread
            try await MainActor.run {
                catFact = try JSONDecoder().decode(CatFact.self, from:data)
            }
        }
        
    }
    
}
