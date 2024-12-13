//
//  CustomButton.swift
//  FirstApp
//
//  Created by Vitor Caixeta  on 08/12/24.
//


import SwiftUI

struct RoundedBottomCorners: Shape {
    var radius: CGFloat = 20
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let bottomRight = CGPoint(x: rect.maxX, y: rect.maxY)
        let bottomLeft = CGPoint(x: rect.minX, y: rect.maxY)
        let topLeft = CGPoint(x: rect.minX, y: rect.minY)
        let topRight = CGPoint(x: rect.maxX, y: rect.minY)
        
        path.move(to: topLeft)
        path.addLine(to: topRight)
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius))
        path.addArc(center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius), radius: radius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX + radius, y: rect.maxY))
        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
        
        path.addLine(to: bottomLeft)
        path.closeSubpath()
        
        return path
    }
}



