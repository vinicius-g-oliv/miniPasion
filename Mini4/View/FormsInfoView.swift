import SwiftUI

struct FormsInfoView: View {
    @State var whiteForms = GeometryForm.forms
    @State var count = 0
    @Binding var show: Bool

    
    var body: some View {
        if show {
            Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
            GeometryReader { geo in
                ZStack {
                    Image("cardInfo").resizable()
                        .frame(width: 300, height: 300)
                    VStack {
                        Image(whiteForms[count].image).resizable()
                            .frame(width: 136, height: 136)
                        Text(whiteForms[count].name)
                            .foregroundColor(.white)
                    }
                    Button(action: {
                        count += 1
                        
                        if count == 7 {
                            count -= 1
                        }
                        
                    }, label: {
                        Image("botaoSeguinte").resizable()
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.95, y: geo.size.height * 0.5)
                    
                    Button(action: {
                        count -= 1
                        
                        if count == 7 {
                            count += 1
                        }
                        
                    }, label: {
                        Image("botaoSeguinte").resizable()
                            .rotationEffect(Angle(degrees: 182))
                        
                    }).frame(width: 13, height: 25).position(x: geo.size.width * 0.05, y: geo.size.height * 0.5)
                    
                }
                .position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)

            }
            .background(.purple)
        }
    }
}
