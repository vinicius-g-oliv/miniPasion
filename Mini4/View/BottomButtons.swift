//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    @StateObject var arraycerto: randomImage
    @Binding var clickedButtonIDs: [String]
    @Binding var clickedButtonName: [String]
    @State var buttonActive = true
    
    var entradas : Int = 9
    var forms = GeometryForm.forms
    
    let gridItens = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]
    
    var body: some View {
        GeometryReader() { geon in
            Color("backbuttons").opacity(0.3)
            ZStack {
                VStack {
                    
                    LazyVGrid(columns: gridItens, spacing: 25) {
                        ForEach(forms, id: \.self) { form in
                            HStack {
                                Button {
                                    
                                    if clickedButtonIDs.count < entradas {
                                        clickedButtonIDs.append(form.image)
                                        clickedButtonName.append(form.name)
                                        print(clickedButtonName)
                                    }
                                    
                                }
                            label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color("roundedresposta"))
                                        .frame(width: 75, height: 59).opacity(0.5)
                                    Image(form.image).resizable().scaledToFit().frame(width: 30.39,height: 30.39)
                                    
                                }
                            }
                              
                            }.position(x: geon.size.width * 0.12, y: geon.size.height * 0.4)
                        }
                        HStack {
                            Button(action: {
                                
                                clickedButtonIDs.removeLast()
                                clickedButtonName.removeLast()
                                
                                
                            }, label: {
                                Image("desfazer").resizable().scaledToFit().frame(width: 60, height: 44)
                                
                            }).position(x: geon.size.width * 0.9, y: geon.size.height * 0.4).disabled(disableButtom())
                            
                        }
                        
                    }
                    
                  
                   
                   
                }
               
            }.position(x: geon.size.width * 0.49, y: geon.size.height * 0.05)
            
        }.navigationBarBackButtonHidden().navigationViewStyle(StackNavigationViewStyle())
        
    }
    func disableButtom() -> Bool{
        if clickedButtonName.isEmpty && clickedButtonIDs.isEmpty {
            buttonActive = false
            return buttonActive
        }
        return false
    }
    
    
    func saveArray() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(clickedButtonIDs, forKey: "clickedButtonIDs")
        
        _ = userDefaults.array(forKey: "clickedButtonIDs") as? [String]
    }
}



