//
//  InfoView.swift
//  Mini4
//
//  Created by Vinicius on 30/03/23.
//

import Foundation
import SwiftUI
struct InfoView: View {
    
    var title: String
    
    @Binding var show: Bool
    var body: some View {
        ZStack {
            GeometryReader(){ geo in
                if show {
                    // PopUp background color
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    // PopUp Window
                    VStack(alignment: .center, spacing: 0) {
                        
                        Text(title)
                            .frame(maxWidth: .infinity)
                            .frame(height: 45, alignment: .center)
                            .font(Font.system(size: 23, weight: .semibold))
                            .foregroundColor(Color.white)
                            .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }, label: {
                            Text("Como Jogar")
                                .frame(maxWidth: .infinity)
                                .frame(height: 54, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                                .font(Font.system(size: 23, weight: .semibold))
                        }).buttonStyle(PlainButtonStyle())
                        
                        HStack {
                            
                            Button(action: {
                                // Dismiss the PopUp
                                withAnimation(.linear(duration: 0.3)) {
                                    show = false
                                }
                            }, label: {
                                Text("Fechar")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 54, alignment: .center)
                                    .foregroundColor(Color.white)
                                    .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                                    .font(Font.system(size: 23, weight: .semibold))
                            }).buttonStyle(PlainButtonStyle()).position(CGPoint(x: geo.size.height * 1, y: geo.size.height * 1))
                        }
                        .frame(maxWidth: 300)
                        .background(Color(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)))
                    }
                }
            }
        }
    }
}

