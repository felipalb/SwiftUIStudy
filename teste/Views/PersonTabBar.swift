//
//  PersonTabBar.swift
//  teste
//
//  Created by Aluno 11 on 04/04/25.
//

import SwiftUI

struct PersonTabBar: View {
    
    @Binding var tabSelection: Int
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.gray.opacity(0.5))
                .padding()
            Spacer()

            
            HStack(spacing: 0.0){
                ForEach(0..<TabModel.allCases.count, id: \.self) {
                    index in
                    let tab = TabModel.allCases[index]
                    
                    Button {
                        
                    } label: {
                        VStack(spacing: 1.0) {
                            Image(systemName: tab.systemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(0.6, contentMode: .fit)
                                .foregroundStyle(.black)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            }
        }
        .frame(maxHeight:120)
        .background(.white)
        
    }
}


struct PersonTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
