//  /*
//
//  Project: RandomNum
//  File: HorizontalListView.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.03.2024
//
//  */

import SwiftUI

struct HorizontalListView: View {
    @State private var itemsCount = Int.random(in: 10...20)
    @State private var numbers: [Int] = Array(repeating: Int.random(in: 1...100), count: 20)
    @State private var selectedItemIndex: Int?
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(numbers.indices, id: \.self) { index in
                    NumberSquareView(number: $numbers[index], isSelected: selectedItemIndex == index)
                        .scaleEffect(selectedItemIndex == index ? 0.8 : 1.0)
                        .animation(.easeInOut)
                        .onTapGesture {
                            withAnimation {
                                if selectedItemIndex == index {
                                    selectedItemIndex = nil
                                } else {
                                    selectedItemIndex = index
                                }
                            }
                        }
                }
            }
            .padding()
        }
        .frame(height: 70)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
        .onAppear {
            UIScrollView.appearance().showsHorizontalScrollIndicator = false
        }
    }
}

#Preview {
    HorizontalListView()
}

