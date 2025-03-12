//
//  ContentView.swift
//  teste
//
//  Created by Aluno 11 on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var nome: String = ""
    var body: some View {
        VStack{
            TextField("Coloque seu nome:", text: $nome)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                print("Submitted name: \(nome)")
            }){
                Text("Submit")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            
            Text("Hello, \(nome)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
