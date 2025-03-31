//
//  Perfil2.swift
//  RedesSociales
//
//  Created by alumno on 3/31/25.
//

import SwiftUI

struct Perfil: Codable, Identifiable{
    let id: Int
    
    let name: String
    let username: String
    
    let email: String
    let phone: String
}
