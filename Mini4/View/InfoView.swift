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
                                        show = false
                                    }
                                }, label: {
                                    Image("close").resizable().frame(width: 30, height: 30)
                                })
                            }.frame(width: 30,height: 30).position(CGPoint(x: geo.size.width * 0.9, y: geo.size.height * 0.1))
                            
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        print("A")
                                    }
                                }, label: {
                                    Image("questions").resizable().frame(width: 30,height: 30)
                                    Text("asa")
                                })
                                
                            }.position(CGPoint(x: geo.size.width * 0.3, y:  geo.size.height * 0.3))
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        print("B")
                                    }
                                }, label: {
                                    
                                    Image("questions").resizable().frame(width: 30,height: 30)
                                    Text("asa")
                                })
                            }.position(CGPoint(x: geo.size.width * 0.3, y:  geo.size.height * 0.5))
                            HStack {
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        print("C")
                                    }
                                }, label: {
                                    Image("questions").resizable().frame(width: 30,height: 30)
                                    Text("asa")
                                })
                            }.position(CGPoint(x: geo.size.width * 0.3, y:  geo.size.height * 0.7))
                        }
                    }.frame(width: 300, height: 300)
                }.frame(width: 300, height: 300)
            }
        }.navigationBarBackButtonHidden().navigationViewStyle(StackNavigationViewStyle())
    }
}

