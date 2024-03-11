//  /*
//
//  Project: NewTask
//  File: NumberSquareView.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.03.2024
//
//  */

import SwiftUI

struct NumberSquareView: View {
    @Binding var number: Int
    var isSelected: Bool
    
    var body: some View {
        Text("\(number)")
            .frame(width: 50, height: 50)
            .background(Color("bg"))
            .foregroundColor(isSelected ? .black : .white)
            .cornerRadius(12)
            .font(.headline)
            .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color("bg"), lineWidth: 2)
            )
    }
}

struct NumberSquareView_Previews: PreviewProvider {
    static var previews: some View {
        NumberSquareView(number: .constant(28), isSelected: true)
    }
}

