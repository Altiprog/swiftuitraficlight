//
//  ContentView.swift
//  swiftuitraficlight
//
//  Created by Александр Тиунович on 12.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack { 
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}