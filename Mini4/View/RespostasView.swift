//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI

struct RespostasView: View {
    
   private var numbers: [Int] = Array(1...15)
 
    
    let rows = [
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70)),
        GridItem(.fixed(70))
    ]
    private let color: Color = .gray
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.85, green: 0.817, blue: 1)
                    .ignoresSafeArea()
                ScrollView {
                    
                    VStack {
                        Text("Difícil")
                            .font(.system(size: 30, weight: .medium, design: .rounded))
                        LazyHGrid(rows: rows, alignment: .center){
                            ForEach(numbers, id: \.self) { number in
                                ZStack {
                                    Rectangle()
                                        .frame(width: 90, height: 70)
                                        .foregroundColor(color)
                                        .cornerRadius(15)
                                    
                                    Text("\(number)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30, weight: .medium, design: .rounded))
                                }
                            }
                            .frame(width: 100)
                        }
                        
                    }
                }
                HStack {
                    GeometryReader() { geon in
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            ForEach(1..<9) { item in
                                ZStack {
                                    Button {
                                        print("OI")
                                    } label: {
                                        Rectangle()
                                            .frame(width: 80, height: 80)
                                        
                                    }
                                }
                            }
                        }.position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
                    }
                }

            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                RespostasView()
            }
        }
}



