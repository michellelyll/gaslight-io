//
//  TLButton.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
            // Attempt Log in
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
            }
        }
    }
    }


#Preview {
    TLButton(title: "Value",
             background: .black) {
        // Action 
    }
}
