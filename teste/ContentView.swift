//
//  ContentView.swift
//  teste
//
//  Created by Aluno 11 on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var nome: String = ""
    @State private var nameSub: String = ""
    var body: some View {
        VStack{
            TextField("Coloque seu nome:", text: $nome)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                nameSub = nome
            }){
                Text("Submit Name")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            
            .padding()
            
            if !nameSub.isEmpty{
                Text("Bem vindo, \(nameSub) !")
                    .font(.title)
                    .padding()
                    .transition(.opacity)
            }
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
