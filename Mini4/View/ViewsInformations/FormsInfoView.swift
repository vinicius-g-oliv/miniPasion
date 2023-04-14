import SwiftUI

struct FormsInfoView: View {
    @State var whiteForms = GeometryForm.forms
    @State var count = 0
    @Binding var show: Bool
    
    var body: some View {
        
        
        GeometryReader { geo in
            if show {
                // PopUp Window
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                ZStack {
                    
                    Image("cardInfo").resizable()
                        .frame(width: 300, height: 300)
                    VStack {
                        
                        Image(whiteForms[count].image).resizable()
                            .frame(width: 136, height: 136)
                        Text(whiteForms[count].name)
                            .font(Font.custom("Jost-Medium", size: 24))
                            .foregroundColor(.white)
                            .frame(width: 280)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            
                            
                        
                    }
                    VStack {
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                show = false // usar outra lógica aqui
                            }
                        }, label: {
                            Image("voltar4x").resizable().frame(width: 30, height: 30)
                        }).position(CGPoint(x: geo.size.width * -0.27, y: geo.size.height * -0.13))
                            .frame(width: 30, height: 30)
                    }
         
                    Button(action: {
                        
                        if count >= 0 &&  count < 7 {
                            count += 1
                        }
                        
                    }, label: {
                        Image("botaoseguinte").resizable()
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                    //decrement
                    Button(action: {
                        
                        
                        if count <= 7 && count > 0 {
                            count -= 1
                            
                        }
                        
                    }, label: {
                        Image("botaoseguinte").resizable()
                            .rotationEffect(Angle(degrees: 182))
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.05, y: geo.size.height * 0.5)
                    
                }
                .position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
            }
        }
    }
}
