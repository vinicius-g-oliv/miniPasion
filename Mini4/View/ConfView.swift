
import Foundation
import SwiftUI


struct ConfView: View {
    @StateObject var images = randomImage()
    @State var mostrarBotao: Bool = false
    @State var random : String = ""
    @State var cont = 0
    var imagess = ["sun.max.fill", "moon.fill", "star.fill"]
    
    
    var body: some View {
        GeometryReader() {geo in
            VStack {
               
//                    ForEach(images.returnArray()){ image in
//                        Text(image)
//
//                    }
                Text("\(images.randomImages.count)").bold().frame(width: 60, height: 60, alignment: .top)
                Image(systemName: random).resizable()
                        .animation(.default, value: cont)
                        .frame(width: 150, height: 150)
                        .scaledToFit().onAppear{
                            callFunc()
                        }

            } .position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.4)) .buttonStyle(.borderedProminent)
            
            HStack {
                NavigationLink(destination: RespostasView()) {
                    Label("Memorizee!", systemImage: "brain").labelStyle(.titleAndIcon)
                        .frame(maxWidth: 300, maxHeight: 30).bold()
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.8)) .buttonStyle(.borderedProminent)
            }.disabled(mostrarBotao)
           
        }
      
    }
    func callFunc() {
        
        if cont < 3  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                self.random =  images.randon()
                cont += 1
                if cont == 3 {
//                    mostrarBotao = false
                }
                callFunc()
            }
        }
     
    }
    
    
}



struct ConfViewe: PreviewProvider {
    static var previews: some View {
        ConfView()
        
    }
}

