//
//  RefreshButton.swift
//  Mini4
//
//  Created by Barbara Argolo on 28/03/23.
//

import SwiftUI

struct RefreshAndOkButtons: View {
    
    var body: some View {
       
            Button(action: {
                deleteAllForms()
    
            }, label: {
                Circle()
                    .frame(width: 50, height: 50)
 
            })
    }
}
    
    struct RefreshButton_Previews: PreviewProvider {
        static var previews: some View {
            RefreshAndOkButtons()
        }
    }

