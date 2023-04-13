
import Foundation
import SwiftUI


struct FormsViewMedium: View {
    @State var backgroundArray = ["1","2","3"]
    @StateObject private var images = randomImage()
    @State var showMyView = false
    @State var cont = 0
    @State var decrement = 3
    @State var changeBackground = 0
    @State private var showImage = false
    @State var lv3 = 6
    @State var imagemForma: String = ""
    var body: some View {
        
        ZStack {
            
//            Color("background").ignoresSafeArea()
            if decrement == 0{
                Color("background").ignoresSafeArea()
            }else {
                Image(backgroundArray[changeBackground]).resizable().ignoresSafeArea()
            }
           
            GeometryReader() { geo in
                
                VStack {
                   
                    if decrement == 0 {
                       
                    }else
                    {
                      
                            Text("\(decrement)").font(Font.system(size: 100,weight: .regular)).position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5)).foregroundColor(.white)
                            
                      
                        
                    }
                   
                    if showImage {
                        Image(imagemForma).resizable().scaledToFit()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                    } else {
                        Color.clear
                    }
                    
                    
                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5)) .buttonStyle(.borderedProminent)
                
//                HStack {
//
//                }.position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.8))
            }
            if showMyView {
                Respostaslv2(randomImages: images, arraycerto: images)
            }
        }.onAppear{
            decrementFunc()
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
                        withAnimation {
                            showMyView = true
                        }
                       
                    }else {
                        callFunc()
                    }
                }
            }
        }
    }
    func decrementFunc() {
        if decrement > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                if changeBackground < 2 {
                    changeBackground += 1
                }
                decrement -= 1
                decrementFunc()
                if decrement == 0 {
                    callFunc()
                }
            }
        }
    }
}
