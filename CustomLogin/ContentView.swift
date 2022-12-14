//
//  ContentView.swift
//  CustomLogin
//
//  Created by Giorgi Samkharadze on 07.12.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    
    @State private var showingSheet = false
    
    
 
    
    
    var body: some View {
       NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.05222354829, green: 0.3226804733, blue: 0.7275559306, alpha: 1)).opacity(0.5)
                    .ignoresSafeArea()
                VStack {
                    Text("TSU DATE")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.white)
                        .padding(.trailing, 150)
                        .padding(.top, 150)
                        .padding(.bottom, 50)
                    
                    Spacer()
                    
                    VStack(spacing: 8) {
                        EmailTextfieldView(fillin: email, placeholder: "Email/Phone")
                        EmailTextfieldView(fillin: email, placeholder: "Password")
                        
                        RegisterLogButton(text: "LOG IN") {
                        }
                            .padding(.top, 10)
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot password?")
                                .font(.system(size: 15))
                                .foregroundColor(Color.white)
                                .padding(.top, -10)
                        })
                            
                      
                        
                        
                        Text("Do not have an account? then Register")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(Color.white)
                    
                        NavigationLink(destination: RegisterView(), label: {
                            Text("REGISTER")
                                .font(.system(size: 30, weight: .heavy))
                                .foregroundColor( Color.pink)
                              //  .frame(height: 45)
                                .padding(.horizontal)
                                .frame(width: 250, height: 60)
                                .background(Color.white)
                                .cornerRadius(25)
                                
                                .overlay  {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.gray, lineWidth: 2)
                                }
                                
                                .padding(.horizontal)
                            .padding(.bottom)
                        }).modifier(HideNavigationView())
                        
                        
                        
                        
                        Spacer().frame(height: 70)
                        
                        Text("or log in with")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(Color.white)
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                print("12314")
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
       }
          .modifier(HideNavigationView())
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: RegisterView())
            window.makeKeyAndVisible()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
