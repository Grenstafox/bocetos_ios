//
//  ContentView.swift
//  mvvm
//
//  Created by alumno on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(VistaModeloBasico.self) private var controlador
    @State var mostrar_arergar_pantalla: Bool = false
    
    var body: some View {//Deuda tecnica
        if  controlador.estado_actual_de_la_aplicacion ==
            .mostrando_series{
            MenuPrincipalSeries()
            ScrollView{
                VStack {
                }
            }
        }
        else{
            AgregarSerie()
        }
    }
}

#Preview {
    ContentView()
        .environment(VistaModeloBasico())
}
