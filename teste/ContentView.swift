//
//  ContentView.swift
//  teste
//
//  Created by Aluno 11 on 11/03/25.
//

import SwiftUI

var nameSub : String = ""
struct ContentView: View {
    @State private var nome: String = ""
    @State private var auth = false
    // declaracao de var
    var body: some View {
        NavigationView{
            VStack{
                
                TextField("Coloque seu nome:", text: $nome)
                // campo de texto, recebendo texto e jogando o valor na var nome
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {
                        nameSub = nome
                        if !nameSub.isEmpty{
                            auth = true
                        }else{
                            auth = false
                        }
                        // jogo variavel com nome dentro de uma outra variavel
                    }){
                    
                        Text("Submit Name")
                        // coloco o texto do botao
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                }
                
                NavigationLink(destination: dtl(), isActive: $auth){
                    EmptyView()
                }
    

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
