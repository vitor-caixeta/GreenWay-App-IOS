//
//  ContentCards.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 12/12/24.
//

import SwiftUI

struct ContentCards: Identifiable {
    var id = UUID()
    var ImgName: String
    var TitleCard: String
    var Captioncard: String
    var ContentButton: String
    
    // Section 1
    static var cards: [ContentCards] {
        [
            // primary section cards
            ContentCards(ImgName: "ImgCard1", TitleCard: "Viagem com Zero Emissões", Captioncard: "Solicite corridas imediatas ou agendadas, individuais ou compartilhadas com nossos motoristas parceiros", ContentButton: "Agenda uma corrida a partir de R$15,00"),
            
            ContentCards(ImgName: "ImgCard2", TitleCard: "Aluguel Sustentável, Controle Total", Captioncard: "Alugue carros elétricos, motos e bicicletas em estações pela cidade. Escolha entre aluguel por hora, dia ou planos mensais e anuais", ContentButton: "Pacotes Mensais a partir de R$150,00/MÊS"),
            
            ContentCards(ImgName: "ImgCard3", TitleCard: "Entrega Verde e Rápida", Captioncard: "Garanta entregas rápidas com bicicletas e motos elétricas, perfeitas para restaurantes, lojas e pequenas empresas", ContentButton: "Pacotes Semanais com descontos progressivos"),
            
            ContentCards(ImgName: "ImgCard4", TitleCard: "Transporte Verde para Empresas", Captioncard: "Contrate vans elétricas para o transporte de funcionários da empresa ou de parceiras, com planos corporativos e tarifas fixas mensais", ContentButton: "Pacotes Mensais a partir de R$800,00/MÊS"),
            
            // second section cards
            
            ContentCards(ImgName: "ImgCard5", TitleCard: "Para os usuários", Captioncard: "Viagens seguras, rápidas e sustentáveis - Uso único ou pacotes semanais, mensais e anuais - Acúmulo de pontos que podem ser revestidos em doações ou descontos no app ou em empresas parceiras - Economize dividindo corridas", ContentButton: "Seja um usuário GreenWay"),
            
            ContentCards(ImgName: "ImgCard6", TitleCard: "Para Empresas", Captioncard: "Incentivos fiscais, subsidios e créditos de carbono - Planos especiais para aluguel de vans ou serviços de entrega - Acesso a comunidade de empresas parceiras e serviços com desconto - Destaque no compromisso com a sustentabilidade", ContentButton: "Seja uma empresa parceira GreenWay"),
            
            ContentCards(ImgName: "ImgCard7", TitleCard: "Para o colaborador", Captioncard: "Oportunidade de renda - Horários flexíveis - Capacitação em empreas parceiras - Benefícios fixos e bonificações por metas - Descontos em estações de recarga - Suporte em manutenções", ContentButton: "Seja um colaborador GreenWay"),
        ]
    }
}
