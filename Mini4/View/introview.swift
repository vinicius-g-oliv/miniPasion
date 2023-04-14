import SwiftUI

struct introview: View {
    @Binding var show: Bool
    @State var count = 0
    @State var showFormsView : Bool = false
    
    var body: some View {
        
        GeometryReader { geo in
            if show {
                // PopUp Window
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
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
                            showFormsView.toggle()
                        }
                        
                    }, label: {
                        Image("botaoseguinte").resizable()
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                    
                    
                    FormsInfoView( show: $showFormsView)
                    
                    
                }.position(x: geo.size.width * 0.5, y: geo.size.height * 0.5).navigationBarHidden(true)
            }
        }
    }
}
