//
//  ContentView.swift
//  Mini4
//
//  Created by Barbara Argolo on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        NavigationView {
            GeometryReader() { geo in
                NavigationLink(destination: ConfView()) {
                    Label("Add Folder", systemImage: "ellipsis.circle").labelStyle(.iconOnly).dynamicTypeSize(.xxxLarge)
                }.position(CGPoint(x: geo.size.width * 0.9, y: geo.size.height * 0.05))
                
                
                //MARK: Facil
                NavigationLink(destination: ConfView()) {
                    Label("Jogar", systemImage: "ellipsis.circle").labelStyle(.titleOnly).frame(maxWidth: 250, maxHeight: 86).bold()
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.85)) .buttonStyle(.borderedProminent)
            }
//
                
//                //MARK: Medio
//                NavigationLink(destination: ConfView()) {
//
//                    Label("Médio", systemImage: "ellipsis.circle").labelStyle(.titleOnly).frame(maxWidth: 300, maxHeight: 30).bold()
//                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.6)) .buttonStyle(.borderedProminent)
//                //MARK: Dificil
//                NavigationLink(destination: ConfView()) {
//
//                    Label("Dificil", systemImage: "ellipsis.circle").labelStyle(.titleOnly).frame(maxWidth: 300, maxHeight: 30).bold()
//                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.7)) .buttonStyle(.borderedProminent)
//        }
//
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
