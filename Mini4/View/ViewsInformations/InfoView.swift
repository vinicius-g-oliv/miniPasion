//
//  InfoView.swift
//  Mini4
//
//  Created by Vinicius on 30/03/23.
//

import Foundation
import SwiftUI
struct InfoView: View {
    
    var title: String
    @Binding var show: Bool
    @State private var showAboutView : Bool =  false
    @State private var showGeometricFormsView : Bool =  false
    @State private var showHowToPlayView : Bool =  false

    
    var body: some View {
        
        ZStack {
            
            if show {
                // PopUp Window
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("cardInfo").resizable()
                    
                    VStack {
                        GeometryReader(){ geo in
                            HStack {
                                Text(title).foregroundColor(.white).font(.system(size: 20)).bold()
                            }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.1))
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        show.toggle()
                                    }
                                }, label: {
                                    Image("close").resizable().frame(width: 30, height: 30)
                                })
                            }.frame(width: 30,height: 30).position(CGPoint(x: geo.size.width * 0.9, y: geo.size.height * 0.1))
                            
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        showHowToPlayView.toggle()
                                    }
                                }, label: {
                                    Image("questionSymbol").resizable().frame(width: 30,height: 30)
                                    Text("Como Jogar").foregroundColor(.white)
                                        .underline()
                                        .font(Font.custom("Jost-Regular", size: 20))
                                })
                                
                            }.position(CGPoint(x: geo.size.width * 0.28, y:  geo.size.height * 0.3))
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        showGeometricFormsView.toggle()
                                    }
                                }, label: {
                                    
                                    Image("formsSymbol").resizable().frame(width: 30,height: 30)
                                    Text("Formas Geométricas").foregroundColor(.white)
                                     //   .frame(width: 200)
                                        .underline()
                                        .font(Font.custom("Jost-Regular", size: 20))
                                        
                                       
                                })
                            }.position(CGPoint(x: geo.size.width * 0.4, y:  geo.size.height * 0.5))
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        showAboutView.toggle()                                    }
                                }, label: {
                                    Image("infoSymbol").resizable().frame(width: 30,height: 30)
                                    Text("Sobre").foregroundColor(.white)
                                        .underline()
                                        .font(Font.custom("Jost-Regular", size: 20))
                                })
                            }.position(CGPoint(x: geo.size.width * 0.19, y:  geo.size.height * 0.7))
                        }
                    }.frame(width: 300, height: 300)
                }.frame(width: 300, height: 300)
            }
            AboutView(show: $showAboutView)
            introview(show: $showGeometricFormsView)
            HowToPlayView(show: $showHowToPlayView)
        }.navigationBarBackButtonHidden().navigationViewStyle(StackNavigationViewStyle())
    }
}

