
import Foundation
import SwiftUI


struct ConfView: View {
    @StateObject var images = randomImage()
    @State var mostrarBotao: Bool = true
    @State var random : String = ""
    @State var cont = 0
    @State var cronometro = 3
    
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            GeometryReader() {geo in
               
                VStack {
                    
                    
                        Text("\(cont)").bold().foregroundColor(.white).frame(width: 60, height: 60, alignment: .top)
                        Image(images.randon()).resizable()
                            .animation(.default, value: cont)
                            .frame(width: 150, height: 150)
                            .scaledToFit().onAppear{
                                callFunc()
                            }
                        
                    }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.4)) .buttonStyle(.borderedProminent)
                    
                    HStack {
                        NavigationLink(destination: RespostasView()) {
                            ZStack {
                                if cont == 9 {
                                    Image("ja-ativo").resizable().frame(minWidth: 200, maxWidth: 100, minHeight: 60,maxHeight: 100)
                                    //MARK: Setar size
                                }else {
                                    Image("ja-inativo").resizable().frame(minWidth: 200, maxWidth: 100, minHeight: 60,maxHeight: 100)
                                }
                                
                                HStack {
                                    
                                    
                                    if cont == 9 {
                                        Image(systemName: "brain").foregroundColor(.white)
                                        Text("Memo!").foregroundColor(.white)
                                    }else {
                                        Image(systemName: "brain")
                                        Text("Memorizee!")
                                    }
                                }
                                
                            }.frame(maxWidth: 300, maxHeight: 30).bold()
                            
                        }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.8))
                    }.disabled(mostrarBotao)
                    
                }
                
            
        }.onAppear{
            cron()
        }
    }
    func cron() {
        
        if cont < 9  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                self.random =  images.randon()
                cont += 1
                if cont == 9 {
                    mostrarBotao = false
                }
                callFunc()
            }
        }
     
    }
    func callFunc() {
        
        if cont < 9  {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                self.random =  images.randon()
                cont += 1
                if cont == 9 {
                    mostrarBotao = false
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

