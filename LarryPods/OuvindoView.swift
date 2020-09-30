//
//  OuvindoView.swift
//  LarryPods
//
//  Created by Matheus Salles on 28/09/20.
//

import SwiftUI

struct OuvindoView: View {
    @Binding var page: String
    var body: some View {
        VStack{
            Image("ouvindo").renderingMode(.original).resizable().frame(width: 296, height: 330).padding(.bottom, 100)
            
            Text("Ouvindo").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.orange)
            
        }
        .background(Image("bg")).edgesIgnoringSafeArea(.all)
        
        .onAppear(){
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (_) in
                self.page = "Resultado"
            }
            
        }
    }
}

//struct OuvindoView_Previews: PreviewProvider {
//    static var previews: some View {
//        OuvindoView()
//    }
//}
