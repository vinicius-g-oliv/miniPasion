
import Foundation
import SwiftUI


struct GameView: View {
    @StateObject var images = randomImage()
    @State var mostrarBotao: Bool = true
    @State var cont = 0
    @State var cronometro = 3
    
    @State var imagemForma: String = ""
    
    init(){
        imagemForma = images.randon()
//        callFunc()
    }
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            GeometryReader() {geo in
               
                VStack {
                    
                    if cont > 0 {
                        Text("\(cont)").bold().foregroundColor(.white).frame(width: 60, height: 60, alignment: .top)
                    }
                        
                        Image(imagemForma).resizable()
//                            .animation(.default, value: cont)
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                        
                    }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.4)) .buttonStyle(.borderedProminent)
                    
                    HStack {
                        NavigationLink(destination: RespostasView(randomImages: images)) {
                            ZStack {
                                if cont == 3{
                                    Image("ja-ativo").resizable().frame(minWidth: 100, maxWidth: 200, minHeight: 60,maxHeight: 100)
                                    //MARK: Setar size
                                }else {
                                    Image("ja-inativo").resizable().frame(minWidth: 100, maxWidth: 200, minHeight: 60,maxHeight: 100)
                                }
                                
                                HStack {
                                    
                                    
                                    if cont == 3 {
                                        Image(systemName: "brain").foregroundColor(.white)
                                        Text("Memo!").foregroundColor(.white)
                                    }else {
                                        Image(systemName: "brain")
                                        Text("Memorizee!")
                                    }
                                }
                                
                            }.frame(maxWidth: 300, maxHeight: 70).bold()
                            
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.8))
                    }.disabled(mostrarBotao)
                    
                }
        }
        .onAppear{
            callFunc()
        }.navigationBarBackButtonHidden(true)
    }
 
    func callFunc() {
        
        if cont < 3  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                cont += 1
                if cont == 3 {
                    mostrarBotao = false
                }
                self.imagemForma = images.randon()
                callFunc()
            }
        }
     
    }
}
