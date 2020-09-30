//
//  Home.swift
//  LarryPods
//
//  Created by Matheus Salles on 28/09/20.
//

import SwiftUI

struct HomeView: View {
    @Binding var page: String
    var body: some View {
        VStack {
            Image("LP").renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width, height: 60).padding(.bottom,70)
            
            Image("p7").renderingMode(.original).resizable().frame(width: 300, height: 300).padding(.bottom, 20)
            
            Button(action:{self.page = "Ouvindo" }){
                Image("Play").renderingMode(.original)}
            
            Text("Deixe o Lerry ouvir sua música favorita e avaliar seu gosto musical")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .padding(.top, 70.0)
        }
        .background(Image("bg")).edgesIgnoringSafeArea(.all)

    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
