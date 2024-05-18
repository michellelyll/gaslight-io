//
//  HeaderView.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.white)
            
            VStack {
                Text(title)
                    .font(.system(size: 25))
                    .offset(y:-0)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "taskbait",
                   background: .white)
    }
}
