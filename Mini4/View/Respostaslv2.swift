//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI
struct Respostaslv2: View {
    var randomImages: randomImage
    @State var clickedButtonsIDs: [String] = []
    @State var clickedButtonsName: [String] = []
    @State var showResult: Bool = false
    private let color: Color = .gray
    var body: some View {
        GeometryReader() { geo in
            
            NavigationView {
                ZStack {
                    
                    VStack {
                       ZStack {
                            Grid {
                                GridRow {
                                    ForEach(0..<3) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                            
                                                .foregroundColor(Color("roundedretangle")).opacity(0.3)
                                                .padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index < clickedButtonsIDs.count){
                                                //                                                Image()
                                                Image("\(clickedButtonsIDs[index])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                    }
                                }
                                GridRow {
                                    ForEach(0..<3) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                                .foregroundColor(Color("roundedretangle")).opacity(0.3)
                                                .padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index+3 < clickedButtonsIDs.count){
                                                Image("\(clickedButtonsIDs[index+3])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                        
                                    }
                                }
                            }
                        }
                        
                    }.frame(width: 100).position(x:geo.size.width * 0.5 ,y: geo.size.height * 0.3)
                    BottomButtons(arraycerto: randomImages, clickedButtonIDs: $clickedButtonsIDs, clickedButtonName: $clickedButtonsName)
                    
                }.background(Color("background"))
                
            }.navigationBarBackButtonHidden()
        }
    }
}


struct ColunaGridlv2 : View {
    var i : Int
    var body : some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
            }
            
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i+1)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i+2)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
                
            }
     
        }
        .frame(width: 100)
    }
}

