
import Foundation
import SwiftUI


struct FormsViewHard: View {
    @StateObject private var images = randomImage()
    @State var showMyView = false
    @State var cont = 0
    @State private var showImage = false
    @State var lv3 = 9
    @State var imagemForma: String = ""

    var body: some View {
        
        ZStack {
            
            Color("background").ignoresSafeArea()
            
            GeometryReader() { geo in
                
                VStack {
                    
                    if showImage {
                        
                        Image(imagemForma).resizable().scaledToFit()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                    } else {
                        Color.clear
                    }
                    
                    
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.4)) .buttonStyle(.borderedProminent)
                
                HStack {
                    
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.8))
            }
            if showMyView {
                Respostaslv3(randomImages: images)
            }
            
            
        }.onAppear{
            callFunc()
        }.navigationBarBackButtonHidden(true).navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    func callFunc() {
        if cont < lv3  {
            //tempo sem imagem
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                cont += 1
                self.imagemForma = images.randon()
                self.showImage = true
                    //tempo com imagem
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.showImage = false
                    if cont == lv3 {
                        showMyView = true
                    }else {
                        callFunc()
                    }
                }
            }
        }
    }
}
