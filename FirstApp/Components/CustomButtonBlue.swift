//
//  CustomButton.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 08/12/24.
//


import SwiftUI

struct CustomButtonBlue: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .padding(.horizontal, 20)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
        )
        .background(Color("MainBlue"))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}

