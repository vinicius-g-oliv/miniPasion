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
    
    var entradas : Int = 6
    var forms = GeometryForm.forms
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        GeometryReader() { geon in
            ZStack {
                Image("background").resizable()
                VStack {
                    
                    LazyVGrid(columns: gridItens, spacing: 10) {
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
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color("roundedresposta"))
                                        .frame(width: 80, height: 80)
                                    Image(form.image).resizable().scaledToFit().frame(width: 40,height: 40)
                                    
                                }
                            }
                            }.position(x: geon.size.width * 0.12, y: geon.size.height * 0.5)
                        }
                    }
                    HStack {
                        Button(action: {
                            
                            clickedButtonIDs.removeLast()
                            clickedButtonName.removeLast()
                            
                            
                        }, label: {
                            Image("desfazer").resizable().frame(width: 50, height: 50)
                            
                        }).position(x: geon.size.width * 0.1, y: geon.size.height * 0.5).disabled(disableButtom())
                        
                        
                        if clickedButtonName == arraycerto.randomImages {
                            NavigationLink(destination: VictoryView(), label: {
                                Image("ok")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            }).frame(width: 50, height: 50).position(x: geon.size.width * 0.4, y: geon.size.height * 0.5)
                        }
                        else {
                            NavigationLink(destination: DefeatView(), label: {
                                Image("ok")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            }).frame(width: 50, height: 50).position(x: geon.size.width * 0.4, y: geon.size.height * 0.5)
                            
                        }
                    }
                    
                    
                }
            }.position(x: geon.size.width * 0.5, y: geon.size.height * 0.7)
        }.navigationBarBackButtonHidden().navigationViewStyle(StackNavigationViewStyle())
        
    }
    func disableButtom() -> Bool{
        if clickedButtonName.isEmpty && clickedButtonIDs.isEmpty {
            buttonActive = false
            return buttonActive
        }
        return buttonActive
    }
    
    
    func saveArray() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(clickedButtonIDs, forKey: "clickedButtonIDs")
        
        _ = userDefaults.array(forKey: "clickedButtonIDs") as? [String]
    }
}



