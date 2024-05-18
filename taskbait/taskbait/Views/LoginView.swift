//
//  LoginView.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(title: "taskbait",
                           background: .white)
                    .padding(.bottom, -40)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .black
                    ) {
                        viewModel.login()
                    }
                }
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.white)
                    .frame(height:100)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                    .padding(.bottom, 20)
                }
                
                Spacer()
            }
        }
    }

    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

