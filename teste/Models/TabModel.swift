//
//  TabModel.swift
//  teste
//
//  Created by Aluno 11 on 04/04/25.
//

import Foundation

enum TabModel: String, CaseIterable{
    
    case home = "Home"
    case setting = "Setting"
    case favorite = "Favorite"
    
    var systemImage: String{
        switch self {
        case .home:
            return "house"
        case .setting:
            return "gearshape"
        case .favorite:
            return "heart"
        }
    }
    
    
    
}

