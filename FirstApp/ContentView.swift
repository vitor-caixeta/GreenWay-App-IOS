//
//  ContentView.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 08/12/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView { // Allows scroll in page
                VStack(spacing: 0) {
                    
                    // First content
                    VStack {
                        // Title
                        Text("GreenWay")
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, 20)
                        
                        // Imagem PNG
                        Image("EletricCar")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .padding(.horizontal)
                        
                        // Text
                        Text("Escolha o caminho verde e transforme o futuro!")
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .fontWeight(.semibold)
                            .font(.title2)
                        
                        // Button
                        CustomButton(title: "Quero fazer parte") {
                            // No action yet
                        }
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
                    }
                    .padding([.leading, .trailing, .top])
                    .padding(.bottom)
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color("GreenBackgroundLight"),
                                Color("GreenBackgroundMain")
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .clipShape(RoundedBottomCorners(radius: 30))
                    .ignoresSafeArea(edges: .top) 
                    
                    // Second Content
                    VStack {
                        
                        // Image
                        Image("PolutionCar")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .padding(.horizontal)
                        
                        // Title - Second Content
                        Text("Quanto um carro polui?")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                            .bold()
                            .padding(.top, 20)
                        
                        // Description - Second Content
                        Text("Você sabia que os veículos em São Paulo emitiram 44 milhões de toneladas de CO₂ em um ano?")
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 10)
                        
                        // Buttons
                        HStack {
                            CustomButton(title: "Saiba Mais") {
                                // No action yet
                            }
                            CustomButton(title: "Baixe E-book") {
                                // No action yet
                            }
                        }
                        .padding(.top, 20)
                    }
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 40, trailing: 20))
                    
                    
                    // Three Content
                    VStack {
                        
                        // Title
                        Text("Seja parte da solução: conheça nossos serviços sustentáveis:")
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, 60)

                        
                        // Cards
                        CardList(cards: Array(ContentCards.cards.prefix(4)))
                            .padding(EdgeInsets(top: -70, leading: 0, bottom: -50, trailing: 0))
                       
           
                    }
                    .foregroundColor(.white)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity)
                    .background(Color("MainBlue"))
                    
                    
                    // Four Content
                    VStack {
                        
                        // Título
                        Group {
                            Text("Conheça os benefícios de ser ")
                                .font(.system(size: 40))
                            + Text("GreenWay")
                                .font(.system(size: 40, weight: .bold))
                        }
                        .padding(.top, 60)
                        
                        // Cards
                        CardList(cards: Array(ContentCards.cards[4..<7]))
                            .padding(.top, -30)
                            .padding(.horizontal, -16)
                            .ignoresSafeArea(.all)
                                
                    }
                    .padding(7)
                    .background(Color("MainGray"))
                    
                    
                    // Five Content
                    VStack {
                        // Título
                        Group {
                            Text("Transforme o mundo conosco: ")
                                .font(.system(size: 40))
                            + Text(" Projetos que fazem a diferença")
                                .font(.system(size: 40, weight: .bold))
                        }
                        .padding(.top, 60)
                        
                        // Texto com fundo colorido e largura total
                        Text("A cada corrida, aluguel ou serviço, você não só está escolhendo um meio de transporte mais ecológico, mas também contribuindo para iniciativas que impactam positivamente o nosso planeta. Uma parte de nossa receita e as doações feitas no app são direcionadas a projetos de energias renováveis, reflorestamento e soluções sustentáveis. Junte-se a nós nessa jornada para construir um futuro mais verde e justo!")
                            .padding(.top, 10)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        // Buttons
                        HStack {
                            CustomButtonBlue(title: "Projetos") {
                                // No action yet
                            }
                            CustomButtonBlue(title: "Quero ajudar") {
                                // No action yet
                            }
                        }
                        .padding(.top, 20)
                        
                        // Imagem PNG
                        Image("SolarCar")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.top, 20)
                        
                    }
                    .foregroundColor(.white)
                    .padding([.leading, .trailing, .top, .bottom])
                    .frame(maxWidth: .infinity)
                    .background(Color("YellowButton"))
                    .clipShape(RoundedBottomCorners(radius: 30))
                    .ignoresSafeArea(.all, edges: .top)
                    
                    
                    // Six content
                    VStack{
                        
                        // Title
                        Text("O que dizem os usuários da GreenWay:")
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, 60)
                        
                        
                        // Cards comment
                        CardGreen()
                            .padding(-10)
                            .padding(.horizontal)
                    }
                    
                    // Footer content
                    VStack{
                        
                        HStack{
                            //Logo
                            Image("Logo")
                                .resizable()
                                .frame(width: 80, height: 60)
                                .padding(.top, 20)
                            
                            // Title
                            Text("GreenWay")
                                .font(.system(size: 30, weight: .bold))
                                .padding(.top, 20)

                        }
                        .padding(.top, 80)
                        
                        Text("Siga nossas redes sociais")
                            .bold()
                            .padding(.top, 5)
                        
                        // Icons
                        HStack{
                            Image("InstagramIcon")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .padding(.top, 20)
                            
                            Image("FacebookIcon")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding(.top, 20)
                            
                            Image("TwitterXIcon")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .padding(.top, 20)
                        }
                        .padding(.top, -30)
                    }
                } // Main VStack
            }
        }
    }
}

#Preview {
    ContentView()
}


