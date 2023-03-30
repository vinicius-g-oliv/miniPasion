//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI
struct RespostasView: View {
    
    @State var clickedButtonsIDs: [String] = []
    
    @State private var firstStep = true
    @State private var secondStep = false
    @State private var lastStep = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.85, green: 0.817, blue: 1)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("Fácil")
                            .font(.system(size: 30, weight: .medium, design: .rounded))
                        
                        if firstStep {
                            HStack {
                                VStack {
                                    // first step
                                    ForEach(Array(clickedButtonsIDs.prefix(3)), id: \.self) { word in
                                        getCard(word: word)
                                    }
                                }
                            }
                        }
                        if secondStep {
                            HStack {
                                VStack {
                                    // second step
                                    ForEach(Array(clickedButtonsIDs.dropFirst(3).prefix(3)), id: \.self)  { word in
                                        getCard(word: word)
                                    }
                                }
                                VStack {
                                    ForEach(Array(clickedButtonsIDs.dropFirst(6).prefix(3)), id: \.self) { word in
                                        getCard(word: word)
                                    }
                                }
                            }
                        }
                        if lastStep {
                            HStack {
                                VStack {
                                    // last step
                                    ForEach(Array(clickedButtonsIDs.dropFirst(9).prefix(3)), id: \.self) { word in
                                        getCard(word: word)
                                    }
                                }
                                
                                VStack {
                                    ForEach(Array(clickedButtonsIDs.dropFirst(12).prefix(3)), id: \.self) { word in
                                        getCard(word: word)
                                    }
                                }
                                VStack {
                                    ForEach(Array(clickedButtonsIDs.dropFirst(15).prefix(3)), id: \.self) { word in
                                        getCard(word: word)
                                    }
                                }
                            }
                            
                        }
                    }
                    Button("Next") {
                        if firstStep == true {
                            secondStep = true
                            firstStep = false
                            lastStep = false
                        } else if secondStep == true {
                            secondStep = false
                            firstStep = false
                            lastStep = true
                        }else if lastStep {
                            // valida se ta certo
                        }
                    }
                }
                BottomButtons(clickedButtonIDs: $clickedButtonsIDs)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct Card: View {
    let word: String
    private let color: Color = .gray
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(color)
                    .cornerRadius(15)
                Text(word)
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
            }
        }
        .frame(width: 100)
    }
}

func getCard(word: String) -> Card {
    return Card(word: word)
}
//        struct ContentView_Previews: PreviewProvider {
//            static var previews: some View {
//                RespostasView(forms: GeometryForm)
//            }
//        }



