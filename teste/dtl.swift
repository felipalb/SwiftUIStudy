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
                Text("Bem vindo, \(nameSub)!")
                    .font(.title)
                    .padding()
                    .transition(.opacity)
            
            Text("Espero que esteja pronto...")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .padding(.top, 2)
            Spacer()
            Button(action:{
                auth2 = true
            }){
                Text("Pronto para? ...")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding()
            }
            
            Button(action:{
                auth2 = true
            }){
                Text("Estou sempre pronto")
                    .padding()
                    .background(Color.green)
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
