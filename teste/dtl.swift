//
//  dtl.swift
//  teste
//
//  Created by Aluno 11 on 12/03/25.
//

import SwiftUI
struct dtl: View {
    @State private var auth2 = false
    var body: some View {
        VStack{
            if !nameSub.isEmpty{
                // se variavel que recebeu nome nao for vazia, printa na tela
                Text("Bem vindo, \(nameSub) !")
                    .font(.title)
                    .padding()
                    .transition(.opacity)
            }
            
            Text("Espero que esteja pronto...")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding(.top, 2)
            Spacer()
            Button(action:{
                auth2 = true
            }){
                Text("Pronto? ...")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding()
            }
            
            Spacer()
        }
    }
}

struct dtl_Previews: PreviewProvider {
    static var previews: some View {
        dtl()
    }
}
