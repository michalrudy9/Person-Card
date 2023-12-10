//
//  ContentView.swift
//  PersonCard
//
//  Created by Michał Rudy on 10/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("sampleUser")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("John Smith")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

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
