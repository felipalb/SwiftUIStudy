//
//  dtl.swift
//  teste
//
//  Created by Aluno 11 on 12/03/25.
//

import SwiftUI
struct dtl: View {
    var body: some View {
        VStack{
            if !nameSub.isEmpty{
                // se variavel que recebeu nome nao for vazia, printa na tela
                Text("Bem vindo, \(nameSub) !")
                    .font(.title)
                    .padding()
                    .transition(.opacity)
            }
        }
    }
}

struct dtl_Previews: PreviewProvider {
    static var previews: some View {
        dtl()
    }
}
