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
        NavigationView {
            ZStack {
                Color("background").ignoresSafeArea()
                Image("backgroundImage").resizable()
                
                VStack {
                    GeometryReader() { geo in
                        Button(action: {
                            withAnimation(.linear(duration: 0.3)) {
                                showPopUp.toggle()
                            }
                        }, label: {
                            Image(systemName: "info.circle").resizable().foregroundColor(.white).frame(width:30, height: 30)
                        }).position(x: geo.size.height * 0.45 , y: geo.size.height * 0.1)
                        
                        //MARK: Facil
                        
                        NavigationLink(destination: FormsView()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 250, maxHeight: 86).bold()
                                Text("Facil").bold().font(Font.system(size: 20)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5))
                        
                        
                        //MARK: Médio
                        
                        NavigationLink(destination: FormsViewMedium()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 250, maxHeight: 86).bold()
                                Text("Médio").bold().font(Font.system(size: 20)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.7))
                        
                        
                        //MARK: Dificil
                        
                        NavigationLink(destination: FormsView()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 250, maxHeight: 86).bold()
                                Text("Dificil").bold().font(Font.system(size: 20)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.9))
                        
                    }
                }
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
