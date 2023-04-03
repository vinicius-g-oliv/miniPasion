//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    @State var arraycerto = randomImage()
    @Binding var clickedButtonIDs: [String]
    //@State var num = 1
    var forms = GeometryForm.forms
    
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    
    //>>>>>>> TransicaoTelas
    var body: some View {
        GeometryReader() { geon in
            ZStack {
                Image("background").resizable()
                VStack {
                    
                    LazyVGrid(columns: gridItens, spacing: 10) {
                        ForEach(forms, id: \.self) { form in
                            HStack {
                                Button {
                                    
                                    if clickedButtonIDs.count < 9 {
                                        clickedButtonIDs.append(form.image)
                                        print("\(clickedButtonIDs)")
                                    }
                                    
                                }
                            label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color("roundedresposta"))
                                    
                                        .frame(width: 80, height: 80)
                                    
                                    
                                    Image(form.image).resizable().scaledToFit().frame(width: 40,height: 40)
                                    
                                }
                                
                                
                                
                            }
                            }.position(x: geon.size.width * 0.12, y: geon.size.height * 0.5)
                        }
                        
                        
                        //>>>>>>> TransicaoTelas
                    }
                    }
                    HStack {
                        Button(action: {
                            clickedButtonIDs.removeAll()
                            print("\(clickedButtonIDs)")
                            print("Bolinha 1")
                        }, label: {
                            Image("desfazer").resizable()
                                .frame(width: 50, height: 50)
                            
                        }).position(x: geon.size.width * 0.1, y: geon.size.height * 0.5)
                        
                        
                        Button(action: {
                            
                            saveArray()
                            
                            print("Bolinha 2")
                        }, label: {

                            Image("ok").resizable().frame(width: 50, height: 50)
                        }).position(x: geon.size.width * 0.4, y: geon.size.height * 0.5)
                        
                    }
                }.position(x: geon.size.width * 0.5, y: geon.size.height * 0.7)
            }
        }
    }
    
    
    func saveArray() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(clickedButtonIDs, forKey: "clickedButtonIDs")
        
        let saveArrayForms = userDefaults.array(forKey: "clickedButtonIDs") as? [String]
        
        print("\(String(describing: saveArrayForms))")
        
    }
}


