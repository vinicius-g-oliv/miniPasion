
import Foundation
import SwiftUI


struct FormsView: View {
    @StateObject var images = randomImage()
    @State var mostrarBotao: Bool = true
    @State var cont = 0
  
    @State var lv3 = 4
    
    @State var imagemForma: String = ""
    
    init(){
        imagemForma = images.randon()
    }
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            GeometryReader() {geo in
                
                VStack {
                    //ver quandidade
                    // verificar cores.
                    if cont > 0 {
                        Text("\(cont)").bold().foregroundColor(.white).frame(width: 60, height: 60, alignment: .top)
                    }
                    
                    Image(imagemForma).resizable().scaledToFit()
                        .frame(width: 150, height: 150)
                        .scaledToFit().onDisappear{
                            Animation.easeInOut
                        }
                    
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.4)) .buttonStyle(.borderedProminent)
                
                HStack {
                    NavigationLink(destination: Respostaslv1(randomImages: images)) {
                        ZStack {
                            if cont == lv3{
                                Image("ja-ativo").resizable().scaledToFit().frame(minWidth: 100, maxWidth: 200, minHeight: 60,maxHeight: 100)
                                //MARK: Setar size
                            }else {
                                Image("ja-inativo").resizable().scaledToFit().frame(minWidth: 100, maxWidth: 200, minHeight: 60,maxHeight: 100)
                            }
                            
                            HStack {
                                
                                
                                if cont == lv3 {
                                    
                                    Text("Memo!").foregroundColor(.white)
                                }else {
                                    
                                    Text("Memo!").foregroundColor(.white)
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
        
        if cont < lv3  {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                
                cont += 1
                if cont == lv3 {
                    mostrarBotao = false
                }
                self.imagemForma = images.randon()
                callFunc()
            }
        }
        
    }
}
