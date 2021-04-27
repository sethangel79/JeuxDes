//
//  ContentView.swift
//  JeuxDes
//
//  Created by David CHALUMEAU on 26/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var monImage = Image("6")
    @State private var randomInt = 6
    //let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Bienvenue dans l'application de Dé multimédia").padding()
            Image("des_0")
            Text("Le résultat du dé est : ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            //monImage
            Text("Cliquez sur Lancer dé")
            Button {
                randomInt = Int.random(in: 1..<7)
                monImage = Image(randomInt.description)
            } label: {
                monImage
            }.accessibility(label: Text(randomInt.description))
            /*
            .onReceive(timer, perform: { _ in
                randomInt = Int.random(in: 1..<7)
                monImage = Image(randomInt.description)
            })
            */
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
