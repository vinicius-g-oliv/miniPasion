//
//  VictoryView.swift
//  Mini4
//
//  Created by Barbara Argolo on 03/04/23.
//

import SwiftUI

struct VictoryView: View {
    var body: some View {
        ZStack {
            Image("telaVitoriaBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            GeometryReader() { geo in
                HStack {
                    NavigationLink(destination: FormsView()) {
                        Image("botaoContinuar")
                            .resizable()
                            .scaledToFill()
                            
                    }
                }.frame(width: 244, height: 57)
                    .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.65))

                HStack {
                    NavigationLink(destination: ContentView()) {
                        Image("sair")
                            .resizable()
                            .scaledToFit()
                            
                    
                    }.frame(width: 188, height: 57)
                        .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.74))
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

struct VictoryView_Previews: PreviewProvider {
    static var previews: some View {
        VictoryView()
    }
}
