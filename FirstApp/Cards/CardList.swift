//
//  CardsList.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 08/12/24.
//

import SwiftUI

struct CardList: View {
    var cards: [ContentCards]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(cards) { card in
                    CardView(content: card)
                        .frame(width: 320)
                }
            }
        }
    }
}
