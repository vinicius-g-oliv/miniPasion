import SwiftUI

struct introview: View {
    @Binding var show: Bool
    @State var count = 0
    @State var showFormsView : Bool = false
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {

                if show {
                    // PopUp Window
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    Image("cardInfo").resizable()
                        .frame(width: 300, height: 300)
                    VStack {
                        Image("formsSymbol").resizable()
                            .frame(width: 99.6, height: 99.5)
                        
                        Text("Formas Geométricas")
                            .font(Font.custom("Jost-Medium", size: 17))
                            .foregroundColor(Color.white)
                            .frame(height: 30)
                        
                        Text("Essas são as formas geométricas que usamos para o jogo!").multilineTextAlignment(.center)
                            .font(Font.custom("Jost-Regular", size: 16))
                            .foregroundColor(Color.white)
                            .frame(width: 250, height: 40)
                    }
                    
                    VStack {
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                show = false // usar outra lógica aqui
                            }
                        }, label: {
                            Image("voltar4x").resizable().frame(width: 30, height: 30)
                        }).position(CGPoint(x: geo.size.width * 0.2, y: geo.size.height * 0.35))
                    }
                            
                    Button(action: {
                        count += 1
                        if count > 1 {
                            showFormsView.toggle()
                        }
                        
                    }, label: {
                        Image("botaoseguinte").resizable()
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                    
                }
                FormsInfoView( show: $showFormsView)
                
                
            }.position(x: geo.size.width * 0.5, y: geo.size.height * 0.5).navigationBarHidden(true)
        }
    }
}
