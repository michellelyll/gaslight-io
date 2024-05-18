//
//  PhoneVerificationView.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct PhoneVerificationView: View {
    
    @StateObject var viewModel = PhoneVerificationViewViewModel()
    
    @State var verification = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Enter verfication code",
                       background: .white)
            Form {
                TextField("Verification Code", text: $verification)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .black
                ) {
                    viewModel.register()
                }
            }
        }
    }
    
    struct PhoneVerificationView_Previews: PreviewProvider {
        static var previews: some View {
            PhoneVerificationView()
        }
    }
}
