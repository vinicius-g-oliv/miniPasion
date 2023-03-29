//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    
    @Binding var clickedButtonIDs: [String] // altera o array vazio e atualiza o @State
    //@State var num = 1
    var forms = GeometryForm.forms
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    

    
    var body: some View {
        HStack {
            GeometryReader() { geon in
<<<<<<< Updated upstream
                LazyVGrid(columns: gridItens, spacing: 15) {
                    ForEach(forms, id: \.id) { item in
                        Button {
                            clickedButtonIDs.append(item.id) // adiciona o ID do botão clicado no array
                            print("\(item)")
                         //   deleteAllForms()
                            
                        } label: {
                            Image(systemName: "\(item.symbol)")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .position(x: 50, y: 2)
                        }
                    }
                }.position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
=======
                LazyVGrid(columns: gridItens, spacing: 10) {
                    ForEach(forms, id: \.self) { form in
                        Button {
                            clickedButtonIDs.append(form.name) // adiciona o ID do botão clicado no array
                            print("\(clickedButtonIDs)")
                            
                        } label: {
                            Rectangle()
                                .fill(form.color)
                                .frame(width: 80, height: 80)
                        }
                    } //
                }
                .position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
                
>>>>>>> Stashed changes
            }
        }
        
    }
    
    
}

//struct BottomButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomButtons(clickedButtonIDs: <#Binding<[Int]>#>)
//    }
//}
