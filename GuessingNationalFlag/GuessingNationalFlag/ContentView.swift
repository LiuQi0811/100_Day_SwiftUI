//
//  ContentView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/7/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 创建垂直视图堆栈
        VStack(spacing: 20) { // 设置20间距
            ZStack{
                VStack(spacing: 0){
                    Color.red
                    Color.orange
                }
            Text("你的内容")
                    .foregroundColor(.secondary)
                    .padding(50)
                    // 设置透明背景
                    .background(.ultraThinMaterial)
            }
            // 创建安全区域
            .ignoresSafeArea()
            
            Spacer()
            
            // 创建梯度
            LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .purple, location: 0.45),
                Gradient.Stop(color: .yellow, location: 0.55)]), startPoint: .top, endPoint: .bottom)
            
            Spacer()
            
            LinearGradient(gradient: Gradient(stops: [
                .init(color: .white, location: 0.1),
                .init(color: .pink, location: 0.8)]), startPoint: .leading, endPoint: .trailing)
            // 创建安全区域
            .ignoresSafeArea()
            
            Spacer()
            
            // 创建径向梯度
            RadialGradient(gradient: Gradient(colors: [
                .blue,.black]), center: .center, startRadius: 20, endRadius: 200)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
