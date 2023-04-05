//
//  DefeatView.swift
//  Mini4
//
//  Created by Luana Moraes on 03/04/23.
//

import SwiftUI

struct DefeatView: View {
    var body: some View {
        ZStack {
            Image("telaDerrotaBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            GeometryReader() { geo in
                HStack {
                    NavigationLink(destination: FormsView()) {
                        Image("tentarNovamente")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 244, height: 57)
                            .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.65))
                        
                    }
                }
                    HStack {
                        NavigationLink(destination: ContentView()) {
                                Image("sair")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 188, height: 57)
                                    .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.75))
                            
                        
                    }
                }
            }

        }.navigationBarBackButtonHidden()
    }
}

struct DefeatView_Previews: PreviewProvider {
    static var previews: some View {
        DefeatView()
    }
}
