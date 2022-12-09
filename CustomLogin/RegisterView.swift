//
//  RegisterView.swift
//  CustomLogin
//
//  Created by Giorgi Samkharadze on 07.12.22.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var email: String = ""
    
    @State private var password: String = ""
    
    @State private var repeatpassword: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue,.blue,.pink]), startPoint:
                        .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("TSU DATE")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.white)
                        .padding(.trailing, 150)
                        .padding(.top, 150)
                     //   .padding(.bottom, 10)
                    
                    Spacer()
                    
                    VStack(spacing: 10) {
                        EmailTextfieldView(fillin: email, placeholder: "Email/Phone")
                        EmailTextfieldView(fillin: password, placeholder: "Create Password")
                        EmailTextfieldView(fillin: repeatpassword, placeholder: "Repeat Password")

                        
                        RegisterLogButton(text: "REGISTER") {
                            
                        }
                            
                        
                            .padding(.top, 10)
                        
                        Text("have an excisting account? then LOG IN")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(Color.white)
                    
                        RegisterLogButton(text: "LOG IN") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        
                        Spacer().frame(height: 70)
                        
                        Text("or log in with")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(Color.white)
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                
                                Image("FacebookLogo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                            })
                            
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image("GoogleLogo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 55)
                            })
                            Spacer()

                        }
                            

                    }
                    Spacer().frame(height: 130)
                    
                }
            }
        }.modifier(HideNavigationView())
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
