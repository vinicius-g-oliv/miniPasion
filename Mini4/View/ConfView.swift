
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
//                    ForEach(images.returnArray()){ image in
//                        Text(image)
//
//                    }
                    Text("\(images.randomImages.count)")
                    
                }.frame(width: 100,height: 100)
                HStack {
                    Image(systemName: random).resizable()
                        .animation(.default, value: cont)
                        .scaledToFit().frame(width: 100, height: 100).onAppear{
                            callFunc()
                        }
                    

                }
                HStack {
                    NavigationLink(destination: RespostasView()) {
                        Label("Fácil", systemImage: "ellipsis.circle").labelStyle(.titleOnly).frame(maxWidth: 300, maxHeight: 30).bold()
                    }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5)) .buttonStyle(.borderedProminent)
                }
                .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5)) .buttonStyle(.borderedProminent)
            }.position(CGPoint(x:geo.size.width * 0.5, y:geo.size.height * 0.5 ))
        }
      
    }
    func callFunc() {
        
        if cont < 3  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                self.random =  images.randon()
                cont += 1
                
                callFunc()
            }
        }
     
    }
    
    
}





