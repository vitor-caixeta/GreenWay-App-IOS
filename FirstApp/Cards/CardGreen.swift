//
//  CardGreen.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 12/12/24.
//

import SwiftUI

struct CardGreen: View {
    var body: some View {
        
        VStack(spacing: 20) {

            // Card 1
            VStack(alignment: .leading) {
                Text("“Usar um carro elétrico a um preço justo e ajudar o meio ambiente é incrível. A GreenWay torna meu dia a dia mais prático e sustentável.”")
                    .padding(.bottom, -20)
                    .padding(20)

                HStack {
                    Spacer()
                    Text("Mariana Costa")
                        .bold()
                        .multilineTextAlignment(.trailing)
                }
                .padding(20)
            }
            .fontWeight(.bold)
            .background(Color("GreenBackgroundMain"))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding(.horizontal, 20)

            // Card 2
            VStack(alignment: .leading) {
                Text("“Com o app, consigo alugar uma bicicleta de manhã e solicitar um carro à tarde. É simples e conveniente!”")
                    .padding(.bottom, -20)
                    .padding(20)

                HStack {
                    Spacer()
                    Text("Lucas Almeida")
                        .bold()
                        .multilineTextAlignment(.trailing)
                }
                .padding(20)
            }
            .fontWeight(.bold)
            .background(Color("GreenBackgroundMain"))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding(.horizontal, 20)

            // Card 3
            VStack(alignment: .leading) {
                Text("“Posso gerenciar meus horários de entrega e atender mais pedidos, sem me preocupar com altos gastos.”")
                    .padding(.bottom, -20)
                    .padding(20)

                HStack {
                    Spacer()
                    Text("Diego Oliveira")
                        .bold()
                        .multilineTextAlignment(.trailing)
                }
                .padding(20)
            }
            .fontWeight(.bold)
            .background(Color("GreenBackgroundMain"))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding(.horizontal, 20)

        }
        .padding(.top, 20)
        
    }
}

#Preview {
    CardGreen()
}
