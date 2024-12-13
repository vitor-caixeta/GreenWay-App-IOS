//
//  Cards.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 08/12/24.

import SwiftUI

struct CardView: View {
    let content: ContentCards

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // img card
            Image(content.ImgName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 350)
            
            // Content
            CardText(content: content)
                .padding(.horizontal, 30)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.black, lineWidth: 2)
        )
        .shadow(radius: 8)
        .frame(width: 350, height: 750)
        .scaleEffect(0.8)
        

    }
    
    // Card Content
    struct CardText: View {
        let content: ContentCards
        
        var body: some View {
            VStack(alignment: .leading) {
                // title card
                Text(content.TitleCard)
                    .padding(.top, 20)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // caption card
                Text(content.Captioncard)
                    .padding(5)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // button
                CustomButton(title: content.ContentButton) {
                    // No action yet
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.bottom, 30)
            .foregroundColor(.black)
        }
    }
}

#Preview {
    CardView(content: ContentCards.cards[2])
}
