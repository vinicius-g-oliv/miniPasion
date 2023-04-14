//
//  AboutView.swift
//  Mini4
//
//  Created by Barbara Argolo on 13/04/23.
//

import SwiftUI

struct AboutView: View {
    @Binding var show: Bool
    @State var arrayViews = AboutViewModel.views
    @State var count = 0
    //    @State var showAboutView2 : Bool = false
    
    var body: some View {
        GeometryReader { geo in
            
            ZStack {
                
                if show {
                    // PopUp Window
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    ZStack {
                        
                        Image("cardInfo").resizable()
                            .frame(width: 300, height: 300)
                        VStack {
                            
                            Image(arrayViews[count].image).resizable()
                                .frame(width: 90, height: 90)
                            
                            Text(arrayViews[count].name)
                                .font(Font.custom("Jost-Medium", size: 18))
                                .foregroundColor(.white)
                            Text(arrayViews[count].descricao)
                                .font(Font.custom("Jost-Regular", size: 20))
                                .frame(width: 280)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
           
                        }
                        
                        VStack {
                            Button(action: {
                                // Dismiss the PopUp
                                withAnimation(.linear(duration: 0.3)) {
                                    show = false // usar outra lógica aqui
                                }
                            }, label: {
                                Image("voltar4x").resizable().frame(width: 30, height: 30)
                            }).position(CGPoint(x: geo.size.width * 0.2, y: geo.size.height * 0.35))
                        }
                        
                        
                        Button(action: {
                            if count >= 0 &&  count < 1 {
                                count += 1
                            }
                        }, label: {
                            Image("botaoseguinte").resizable()
                            
                        }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                        
                    }
                    Button(action: {
                        
                        
                        if count <= 1 && count > 0 {
                            count -= 1
                            
                        }
                        
                    }, label: {
                        Image("botaoseguinte").resizable()
                            .rotationEffect(Angle(degrees: 182))
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.05, y: geo.size.height * 0.5)
                    
                }
            }.position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
        }
    }
}



//struct AboutView_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutView(show: $showFormsView)
//    }
//}
