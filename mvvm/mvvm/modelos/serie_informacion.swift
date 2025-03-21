//
//  serie_informacion.swift
//  mvvm
//
//  Created by alumno on 3/19/25.
//

import Foundation

struct Temporada: Identifiable{
    var id = UUID()
    var nombre: String
    var cantidad_capitulos: Int
}

struct Plataforma: Identifiable{
    var id = UUID()
    var nombre: String
    var imagen: String
}

struct InformacionSerie: Identifiable{
    var id = UUID()
    
    var nombre: String
    var tipo: String
    
    var plataformas: [Plataforma] = [] // Aqui tengo  una deuda tecnica para indicar otras plataforams de forma mas facil.
    
    
    var fecha_estreno: Int
    var sinopsis: String
    
    var temporadas: [Temporada] = []
    
    var caratula: String
    
}
