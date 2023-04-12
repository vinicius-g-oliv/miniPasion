//
//  TutorialSecondView.swift
//  Mini4
//
//  Created by Luana Moraes on 12/04/23.
//

import SwiftUI

struct TutorialSecondView: View {
    
    //    @State var title: String
    
    @Binding var text: String
    @Binding var image: String
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            GeometryReader(){ geo in
                
                if show {
                    // PopUp Window
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    ZStack {
                        GeometryReader(){ geon in
                        Image("cardInfo").resizable()
                            VStack {
                                Button(action: {
                                    // Dismiss the PopUp
                                    withAnimation(.linear(duration: 0.3)) {
                                        show = false
                                    }
                                }, label: {
                                    Image("close").resizable().frame(width: 30, height: 30)
                                }).position(CGPoint(x: geon.size.width * 0.9, y: geon.size.height * 0.1))
                            }
                            
                            VStack {
                                Button(action: {
                                    // Dismiss the PopUp
                                    withAnimation(.linear(duration: 0.3)) {
                                        show = false // usar outra lógica aqui
                                    }
                                }, label: {
                                    Image("voltar4x").resizable().frame(width: 30, height: 30)
                                }).position(CGPoint(x: geon.size.width * 0.1, y: geon.size.height * 0.1))

                            }
                            VStack {
                                Image("Resposta2").resizable().scaledToFit().frame(width: 180,height: 180)
                            }.position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.35))
                            
                            VStack {
                                Text("Como jogar")
                                    .font(Font.system(size: 20, weight: .semibold))
                                    .foregroundColor(Color.white)
                                    .position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.69))
                            }
                            VStack {
                                Text("Você terá que colocar a resposta correta.")
                                    .font(Font.system(size: 18, weight: .semibold))
                                    .frame(width: 280)
                                    .lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .position(CGPoint(x: geon.size.width * 0.48, y: geon.size.height * 0.83))
                            }
                            
                            HStack {
                                NavigationLink {
                                    Text("")
                                } label: {
                                    Image("SetinhaSeguir2").resizable().scaledToFit().frame(width: 30, height: 30)
                                        .position(CGPoint(x: geon.size.width * -0.07, y: geon.size.height * 0.5))
                                }
                            }
                        }
                    }.frame(width: 300, height: 300).position(x: geo.size.width * 0.5,y: geo.size.height * 0.5)
                    
                }
                
            }
            
            
        }
    }
    
}
struct TutorialSecondView_Previews: PreviewProvider {
    @State var text: String
    static var previews: some View {
        TutorialSecondView(text: .constant(""), image: .constant(""),show: .constant(true))
    }
}

