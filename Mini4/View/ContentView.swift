//
//  ContentView.swift
//  Mini4
//
//  Created by Barbara Argolo on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopUp: Bool = false
    var body: some View {
        //        ZStack {
        
        
        
        NavigationView {
            ZStack {
                Color("background").ignoresSafeArea()
                Image("backgroundImage").resizable()
                GeometryReader() { geo in
                    
                    Button(action: {
                        withAnimation(.linear(duration: 0.3)) {
                            showPopUp.toggle()
                        }
                    }, label: {
                        Image(systemName: "info.circle").resizable().foregroundColor(.white).frame(width:30, height: 30)
                    }).position(x: geo.size.height * 0.45 , y: geo.size.height * 0.1)
                    
                    //MARK: Facil
                    
                    NavigationLink(destination: GameView()) {
                        ZStack {
                            
                            Image("começar").frame(maxWidth: 250, maxHeight: 86).bold()
                            Text("Jogar").bold().foregroundColor(.white)
                        }
                    }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.85))
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
                InfoView(title: "Informaçōes", show:$showPopUp )
            }
        }.navigationBarBackButtonHidden()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
