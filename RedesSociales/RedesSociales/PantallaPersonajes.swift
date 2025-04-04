//
//  PantallaPersonajes.swift
//  RedesSociales
//
//  Created by alumno on 4/4/25.
//

import SwiftUI

struct PantallaPersonajes: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        
        if(controlador.pagina_resultados != nil){
            ScrollView{
                LazyVStack{
                    ForEach(controlador.pagina_resultados!.items){ personaje in
                        Text("El personaje es \(personaje.name)")
                        AsyncImage(url: URL(string: personaje.image))
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaPersonajes()
        .environment(ControladorAplicacion())
}
