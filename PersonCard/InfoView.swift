//
//  InfoView.swift
//  PersonCard
//
//  Created by Michał Rudy on 10/12/2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 50)
            .padding(.all)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundStyle(Color(red: 0.09, green: 0.63, blue: 0.52))
                Text(text)
            })
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
