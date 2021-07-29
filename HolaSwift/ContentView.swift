//
//  ContentView.swift
//  HolaSwift
//
//  Created by Camilo Gonzalez on 27-07-21.
//

import SwiftUI

struct ContentView: View {

    var x = "Pedro"
    
    var body: some View {
        ContentView2()
    }
}

struct ContentView2: View {
    
    let x = "Mi Bottón"
    @State private var show = false
    var body: some View {
        Button( action: {
            print("hola desde consola")
            show = true
            
        }) {
            Text(x)
        }.alert(isPresented: $show, content: {
            Alert(
                title: Text("Titulo"),
                message: Text("Mensaje Aquí"),
                dismissButton: .default(Text("Aceptar"))
            )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
