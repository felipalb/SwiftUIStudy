//
//  ContentView.swift
//  teste
//
//  Created by Aluno 11 on 11/03/25.
//

import SwiftUI

struct ContentCard: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Dicas de Segurança")
                    .font(.system(size:24, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.leading,10)
            }
        }
        
        .padding()
        .frame(width: 340, height: 85)
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius : 17))
        .padding(.horizontal)
    }
}

struct TopmenuBar: View {
    var body: some View{
        HStack{
            Text("Inicio")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.leading, 10)
            Spacer()

        }
        .padding()
        .background(Color.gray.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal)
    }
}


struct ContentView: View {
    
    @State private var nome: String = ""
    @State var auth : Bool = false
    // declaracao de var
    var body: some View {
        VStack{
            TopmenuBar()
                .padding(.bottom, 10)
            ContentCard()
            Spacer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
