//
//  EmailTextfieldView.swift
//  CustomLogin
//
//  Created by Giorgi Samkharadze on 07.12.22.
//

import SwiftUI

struct EmailTextfieldView: View {
    
    @State var fillin: String = ""
    
    let placeholder: String
    
    var body: some View {
       
            ZStack(alignment: .trailing) {
                Color.white.opacity(0.9)
                
                TextField(placeholder, text: $fillin)
                  //  .foregroundColor(Color.textPrimary)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(height: 45)
                .padding(.horizontal)
                
              
                
            }
            
            .frame(height: 50)
            .cornerRadius(20)
            .overlay  {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 2)
            }
              .padding(.horizontal)
//            .padding(.bottom)
           
        
    }
}

struct EmailTextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextfieldView( placeholder:"Email/Phone")
    }
}
