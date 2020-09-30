//
//  ContentView.swift
//  LarryPods
//
//  Created by Matheus Salles on 28/09/20.
//

import SwiftUI

struct ContentView: View {
    @State var page: String = "Home"
    var body: some View {
        if page == "Home"{
            HomeView(page: self.$page)
        }
        
        else if page == "Ouvindo"{
            OuvindoView(page: self.$page)
        }
        
        else {
            ResultadoView(page: self.$page)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


