//  /*
//
//  Project: NewTask
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.03.2024
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var verticalListCount = Int.random(in: 100...200)
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<verticalListCount, id: \.self) { _ in
                    HorizontalListView()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


