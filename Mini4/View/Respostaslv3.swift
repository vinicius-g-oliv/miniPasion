//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI
struct Respostaslv3: View {
    var randomImages: randomImage
    @State var clickedButtonsIDs: [String] = []
    @State var clickedButtonsName: [String] = []
    @StateObject var arraycerto: randomImage
    
    private let color: Color = .gray
    
    @State var showResult: Bool = false
    
    var body: some View {
        GeometryReader() { geo in
       
            ZStack {
                NavigationLink {
                    
                    ContentView()
                } label: {
                    VStack {
                        Image("home preenchido").resizable().scaledToFit().frame(width: 40, height: 40)
                    }
                   
                }.position(x:geo.size.width * 0.1 ,y: geo.size.height * 0.05)
                
                if clickedButtonsName == arraycerto.randomImages {
                    NavigationLink(destination: VictoryView(), label: {
                        Image("ok")
                            .resizable().scaledToFill().frame(width: 60, height: 44)
                        
                    }).frame(width: 50, height: 50).position(x:geo.size.width * 0.9 ,y: geo.size.height * 0.05)
                }
                else {
                    NavigationLink(destination: DefeatView(), label: {
                        Image("ok")
                            .resizable().scaledToFill().frame(width: 60, height: 44)
                        
                    }).frame(width: 50, height: 50).position(x:geo.size.width * 0.9 ,y: geo.size.height * 0.05)
                    
                }
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
                                            Image("\(clickedButtonsIDs[index + 3 ])").resizable()
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
                                        if ( index+6 < clickedButtonsIDs.count){
                                            Image("\(clickedButtonsIDs[index + 6 ])").resizable()
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
                    
                }.frame(width: 100).position(x:geo.size.width * 0.5 ,y: geo.size.height * 0.4)
               
                   
                
            }.background(Color("background"))
            BottomButtons(arraycerto: randomImages, clickedButtonIDs: $clickedButtonsIDs, clickedButtonName: $clickedButtonsName).frame(width: geo.size.width * 1, height: geo.size.height * 0.5).position(x:geo.size.width * 0.5 ,y: geo.size.height * 0.9)
        }.navigationBarBackButtonHidden()
        
    }
}
struct Respostaslv3_Previews: PreviewProvider {
    
    static var previews: some View {
        let images = randomImage()
        Respostaslv3(randomImages: images, arraycerto: images)
        
    }
}
