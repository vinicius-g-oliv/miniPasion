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
               
                
                VStack {
                    GeometryReader() { geo in
                        Image("logo").resizable().scaledToFit().frame(width: 333, height: 93).position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.25))
                        Button(action: {
                            withAnimation(.linear(duration: 0.3)) {
                                showPopUp.toggle()
                            }
                        }, label: {
                            Image(systemName: "info.circle").resizable().foregroundColor(.white).frame(width:30, height: 30)
                        }).position(x: geo.size.height * 0.45 , y: geo.size.height * 0.03)
                        
                        //MARK: Facil
                        
                        NavigationLink(destination: FormsView()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 254.93, maxHeight: 93.66).bold()
                                Text("Fácil").font(Font.custom("Jost-Bold", size: 30)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5))
                        
                        
                        //MARK: Médio
                        
                        NavigationLink(destination: FormsViewMedium()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 254.93, maxHeight: 93.66).bold()
                                Text("Médio").font(Font.custom("Jost-Bold", size: 30)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.68))
                        
                        
                        
                        //MARK: Dificil
                        NavigationLink(destination: FormsViewHard()) {
                            ZStack {
                                
                                Image("começar").frame(maxWidth: 254.93, maxHeight: 93.66).bold()
                                Text("Difícil").font(Font.custom("Jost-Bold", size: 30)).foregroundColor(.white)
                            }
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.86))
                        
                    }
                }
                InfoView(title: "Informaçōes", show:$showPopUp )
            }
        }.navigationBarBackButtonHidden().navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
