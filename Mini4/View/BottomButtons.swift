//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    
    @Binding var clickedButtonIDs: [Int] // altera o array vazio @State
    var forms = GeometryForm.forms
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        HStack {
            GeometryReader() { geon in
                LazyVGrid(columns: gridItens, spacing: 10) {
                    ForEach(forms, id: \.id) { item in
                        Button {
                            clickedButtonIDs.append(item.id) // adiciona o ID do botão clicado no array
                            print("\(item)")
                            
                        } label: {
                            Rectangle()
                                .fill(item.color)
                                .frame(width: 80, height: 80)
                            
                            
                            
                        }
                    }
                }.position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
                
                HStack {
                    ForEach(clickedButtonIDs, id: \.self) { clickedButtonID in
                        Text("\(clickedButtonID)")
                    }
                }
                
            }
        }
    }
}

//struct BottomButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomButtons(clickedButtonIDs: <#Binding<[Int]>#>)
//    }
//}
