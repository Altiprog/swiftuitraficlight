//
//  ContentView.swift
//  swiftuitraficlight
//
//  Created by Александр Тиунович on 12.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var activeCircle = 0

    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.red)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .frame(width: 100)
                .shadow(color: .red, radius: 10)
                .opacity(activeCircle == 1 ? 1.0 : 0.4)
                
            Circle()
                .foregroundColor(.yellow)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .frame(width: 100)
                .shadow(color: .yellow, radius: 10)
                .opacity(activeCircle == 2 ? 1.0 : 0.4)
                
            Circle()
                .foregroundColor(.green)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .frame(width: 100)
                .shadow(color: .green, radius: 10)
                .opacity(activeCircle == 3 ? 1.0 : 0.4)
                
            Spacer()

            Button("START") {
                withAnimation {
                    activeCircle = (activeCircle % 3) + 1
                }
            }
            .background(Color.blue)
            .cornerRadius(5)
            .foregroundColor(.white)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}


#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        ContentView()
    }
}
