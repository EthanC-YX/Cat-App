import SwiftUI

struct CatFactsView: View {
    
    @StateObject var catFactsManager = CatFactsManager()
    
    var body: some View {
        VStack {
            if let catFact = catFactsManager.catFact {
                Text(catFact.fact)
                    .padding(50)
                    .multilineTextAlignment(.center)
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
            
            if catFactsManager.catFact != nil {
                Button("Give me a new cat fact") {
                    catFactsManager.getCatFact()
                }
                .padding(15)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
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

