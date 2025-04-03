//
//  ContentView.swift
//  teste
//
//  Created by Aluno 11 on 11/03/25.
//

import SwiftUI

struct Titles: View{
    var body: some View{
        HStack{
            Text("Como se previnir?")
                .font(.system(size:24, weight: .semibold))
                .foregroundColor(.black)
                .padding()
        }
    }
}

struct Titles2: View{
    var body: some View{
        HStack{
            Text("Verificação")
                .font(.system(size:24, weight: .semibold))
                .foregroundColor(.black)
                .padding()
        }
    }
}

struct Titles3: View{
    var body: some View{
        HStack{
            Text("Configurações")
                .font(.system(size:24, weight: .semibold))
                .foregroundColor(.black)
                .padding()
        }
    }
}

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

struct ContentCard2: View{
    var body : some View{
        ZStack{
            VStack{
                Text("Acessibilidade")
                    .font(.system(size:24, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.leading, 10)
            }
        }
        .padding()
        .frame(width: 340, height: 85)
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 17))
        .padding(.horizontal)
    }
}


struct ContentLayout: View {
    var body: some View {
    HStack(spacing: 10){
        ZStack{
            HStack{
                
                Text("Scan")
                    .font(.system(size:20, weight: .semibold))
                    .foregroundColor(.black)
                    .padding()
            }
        }
        
        .padding()
        .frame(width: 170, height: 50)
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius : 17))
        .padding(.trailing, 10)
        
        ZStack{
            HStack{
                
                Text("Checagem")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                    .padding()
            }
        }
        
        .padding()
        .frame(width: 170, height: 50)
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 17))
        .padding(.leading, 10)
        
        }

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
            Titles()
                .padding(.bottom, 10)
            ContentCard()
                .padding(.bottom,10)
            Titles2()
                .padding(.bottom,10)
            ContentLayout()
                .padding(.bottom,10)
            Titles3()
                .padding(.bottom,10)
            ContentCard2()
            Spacer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
