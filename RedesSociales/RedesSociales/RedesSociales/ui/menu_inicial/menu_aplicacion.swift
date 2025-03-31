//
//  menu_aplicacion.swift
//  RedesSociales
//
//  Created by alumno on 3/31/25.
//

import SwiftUI


struct MenuNavegacion: View {
    var body: some View {
        TabView{
            
            GeneralPublicaciones()
                .tabItem{Label("Es esta \n otra parte", SystemImage:
                                "Circle")}
                .badge(controlador.publicaciones.count)
            
            Text("Hola dos")
                .tabItem{
                    Label{
                        Text("Hola mundo desde abajo")
                        Text("Esto es el segundo click")
                    }icon: {
                        Circle()
                            .frame(width: 44 height: 44,
                                   alignment: .center)
                            .overlay(Text("JJ Abrahams"))
                    }
                }
            Text("Hola")
        }
    }
}
#Preview {
    MenuNavegacion()
        .environment(ControladorAplicaciones)
}
