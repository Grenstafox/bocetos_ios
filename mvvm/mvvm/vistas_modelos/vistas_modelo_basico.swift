//
//  vistas_modelo_basico.swift
//  mvvm
//
//  Created by alumno on 3/19/25.
//

import Foundation

@Observable
class VistaModeloBasico{
    var estado_actual_de_la_aplicacion: EstadosDeLaAplicacion = .mostrando_series
    
    var series_registradas: Array<InformacionSerie> = []
    
    func agregar_serie(serie: InformacionSerie?) -> Void{
        if let serie_nueva = serie{
            series_registradas.append(serie_nueva)
        }
        else{
            series_registradas.append(InformacionSerie(nombre: "prueba", tipo: "prueba", fecha_estreno: 2017, sinopsis: "Aqui va una sinopsis muy larga", caratula: "imagen_fake_1"))
        }
        
        return true
    }
}
