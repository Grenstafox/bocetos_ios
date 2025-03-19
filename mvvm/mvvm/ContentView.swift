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
    
    var body: some View {
        if !mostrar_arergar_pantalla{
            ScrollView{
                VStack {
                    ForEach(controlador.series_registradas){ _ in
                        Image(systemName: "plus")
                    }
                }
                .padding()
            }
            Spacer()
            
            Button("Agrega por favor una serie de prueba"){
                mostrar_arergar_pantalla = true
            }
        }
        else{
            AgregarSeri()
        }
    }
}

#Preview {
    ContentView()
        .environment(VistaModeloBasico())
}
