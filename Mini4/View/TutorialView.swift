//
//  TutorialView.swift
//  Mini4
//
//  Created by Luana Moraes on 12/04/23.
//


import SwiftUI

struct TutorialView: View {
    
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
                                Image("triangulo pink").resizable().scaledToFit().frame(width: 70,height: 70)
                            }.position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.25))
                            
                            VStack {
                                Text("Como jogar")
                                    .font(Font.system(size: 20, weight: .semibold))
                                    .foregroundColor(Color.white)
                                    .position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.5))
                            }
                            VStack {
                                Text("Vão aparecer formas geométricas numa sequência aleatória e você terá que decorar a forma ou a cor e a sequência.")
                                    .font(Font.system(size: 18, weight: .semibold))
                                    .frame(width: 280)
                                    .lineLimit(4)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .position(CGPoint(x: geon.size.width * 0.48, y: geon.size.height * 0.75))
                            }
                            
                            HStack {
                                NavigationLink {
                                    Text("")
                                } label: {
                                    Image("SetinhaSeguir").resizable().scaledToFit().frame(width: 30, height: 30)
                                        .position(CGPoint(x: geon.size.width * 1.07, y: geon.size.height * 0.5))
                                }
                            }
                        }
                    }.frame(width: 300, height: 300).position(x: geo.size.width * 0.5,y: geo.size.height * 0.5)
                    
                }
                
            }
            
            
        }
    }
    
}
struct TutorialView_Previews: PreviewProvider {
    @State var text: String
    static var previews: some View {
        TutorialView(text: .constant("Vão aparecer formas geométricas numa sequência aleatória e você terá que decorar a forma ou a cor e a sequência."), image: .constant("triangulo pink"),show: .constant(true))
    }
}

