//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI

struct RespostasView: View {
    
//   private var numbers: [Int] = Array(1...8)
    @State var clickedButtonsIDs: [String] = [] //array vazio a ser preenchido
    
//    var clickedButtonsFinal: [String] = []
    
//    var forms: GeometryForm
    
    let rows = [
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70))
    ]
    private let color: Color = .gray
    
//    func alimentandoClickedBottons() {
//        clickedButtonsIDs.append(contentsOf: clickedButtonsFinal)
//    }
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.85, green: 0.817, blue: 1)
                    .ignoresSafeArea()
                ScrollView {
                    
                    VStack {
                        Text("Difícil")
                            .font(.system(size: 30, weight: .medium, design: .rounded))
//                        H
                        ForEach(Array(clickedButtonsIDs.enumerated()), id: \.offset) { index, number in
                                HStack {
                                    VStack {
                                        ZStack {
                                            if index < 3 {
                                                Rectangle()
                                                    .frame(width: 90, height: 70)
                                                    .foregroundColor(color)
                                                    .cornerRadius(15)

                                                Text("\(number)")
            //                                    Image("\(forms.name)")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                            
                                            
                                        }
                                    }
                                    
                    
                                    
                                    VStack {
                                        
                                    }
                                    
                                    VStack {
                                        
                                    }
                                }
                                
                            }
                            .frame(width: 100)
//                        }
                        
                    }
                }
               BottomButtons(clickedButtonIDs: $clickedButtonsIDs)
            }
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
//        struct ContentView_Previews: PreviewProvider {
//            static var previews: some View {
//                RespostasView(forms: GeometryForm)
//            }
//        }
}



