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
            Text("John Smith")
                .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
