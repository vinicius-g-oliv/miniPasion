//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI
struct Respostaslv1: View {
    var randomImages: randomImage
    @State var clickedButtonsIDs: [String] = []
    @State var clickedButtonsName: [String] = []
    
    private let color: Color = .gray
    
    @State var showResult: Bool = false
    
    var body: some View {
        GeometryReader() { geo in
          
            NavigationView {
                ZStack {
                   
                    VStack {
                       
                           
                      
                        Image("home preenchido").resizable().frame(width: 30,height: 30)
                    
                          
                            
                            
                      
                       
                        ZStack {
                            Grid {
                                GridRow {
                                    ForEach(0..<2) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                            
                                                .foregroundColor(Color("roundedretangle")).opacity(0.3)
                                                .padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index*2 < clickedButtonsIDs.count){
                                                Image("\(clickedButtonsIDs[index*2])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                    }
                                }
                                GridRow {
                                    ForEach(0..<2) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                                .foregroundColor(Color("roundedretangle")).opacity(0.3)
                                                .padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index*2+1 < clickedButtonsIDs.count){
                                                Image("\(clickedButtonsIDs[index*2+1])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                    }
                                }.disabled(true)
                            }
                        }
                        
                    }.frame(width: 100).position(x:geo.size.width * 0.5 ,y: geo.size.height * 0.3)
                    BottomButtons(arraycerto: randomImages, clickedButtonIDs: $clickedButtonsIDs, clickedButtonName: $clickedButtonsName)
                    
                }.background(Color("background"))
                
            }.navigationBarBackButtonHidden()
        }
    }
}
