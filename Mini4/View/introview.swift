import SwiftUI

struct introview: View {
    @State private var showPopUp: Bool = false
    @State var count = 0
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Image("cardInfo").resizable()
                    .frame(width: 300, height: 300)
                VStack {
                    Image("formasInfos").resizable()
                        .frame(width: 99.6, height: 99.5)
                    
                    
                    Text("Como Jogar")
                        .font(Font.system(size: 17, weight: .semibold))
                        .foregroundColor(Color.white)
                        .frame(height: 30)
                    
                    Text("Essas são as formas geométricas que usamos para o jogo!").multilineTextAlignment(.center)
                        .font(Font.system(size: 15, weight: .semibold))
                        .foregroundColor(Color.white)
                        .frame(width: 250, height: 40)
                }
                Button(action: {
                    count += 1
                    if count > 1 {
                        showPopUp.toggle()
                    }
                    
                }, label: {
                    Image("botaoSeguinte").resizable()
                    
                }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                
            }.position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
            FormsInfoView(show: $showPopUp)
        }.navigationBarHidden(true)
        
        .background(.purple)
    }
}
