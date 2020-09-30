//
//  ResultadoView.swift
//  LarryPods
//
//  Created by Matheus Salles on 28/09/20.
//

import SwiftUI

struct ResultadoView: View {
    @Binding var page: String
    var lista:[String] = ["Seu gosto é tedioso", "Batidão bolado","Lo-fi é muuuito triste","Seu gosto é bom demais!","Meio estranho","Etendi nada","Tira isso, som ruim dos infernos"]
        
    @State var pos: Int = 0
    
    var body: some View {
        VStack{
            Image("p\(self.pos+1)").renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width, height: 400).padding(.bottom, 100)
            
            Text(lista[self.pos]).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.orange).padding(.bottom, 100)
            
           // Button(action:{self.page = "Home" }){
         //       Text("Voltar")
         //   }
        }
        .onAppear(){ self.pos = Int.random(in: 0...6)
            Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { (_) in
            self.page = "Home"}}
        .background(Image("bg")).edgesIgnoringSafeArea(.all)
       
        
        
            
    }
}

//struct ResultadoView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultadoView()
//    }
//}
