//
//  CircleMore.swift
//  dokbeia
//
//  Created by Quantum on 2/12/2565 BE.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.accentColor)
            .frame(width: 40, height: 40)
            .background(
                Circle()
                    .foregroundColor(Color.accentColor.opacity(0.2))
            )
            .shadow(color: Color.accentColor.opacity(0.25), radius: 10, x: 0, y: 0)
    }
}

struct CircleMore_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(iconName: "chevron.right")
    }
}
