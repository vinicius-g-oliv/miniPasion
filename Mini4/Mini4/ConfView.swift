//
//  ConfView.swift
//  Mini4
//
//  Created by Vinicius on 24/03/23.
//

import Foundation
import SwiftUI


struct ConfView: View {
    @StateObject var images = randomImage()
    
    @State var random : String = ""
    @State var cont = 0
    var imagess = ["sun.max.fill", "moon.fill", "star.fill"]
    
    
    var body: some View {
        GeometryReader() {geo in
            VStack {
                HStack{
                    Text("\(cont)")
                }.frame(width: 100,height: 100)
                HStack {
                    Image(systemName: random).resizable()
                        .animation(.default, value: cont)
                        .scaledToFit().frame(width: 100, height: 100).onAppear{
                            callFunc()
                        }

                }
            }.position(CGPoint(x:geo.size.width * 0.5, y:geo.size.height * 0.5 ))
        }
      
    }
    func callFunc() {
        
        if cont < 3  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                self.random =  images.randon()
                cont += 1
                
               
                if cont == 9 {
                  print("aa")
                }
                callFunc()
            }
        }
     
    }
    
    
}





struct Conf_Preview: PreviewProvider {
    static var previews: some View {
        ConfView()
    }
}
