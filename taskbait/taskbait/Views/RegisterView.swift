//
//  RegisterView.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign up now",
                       background: .white)
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                TextField("Phone Number", text: $viewModel.phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
            }
            .padding(.bottom, 20)
           
            NavigationLink("Next", destination: PhoneVerificationView())
           
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.white)
                .frame(height:150)
        }
        .offset(y: -0)
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
