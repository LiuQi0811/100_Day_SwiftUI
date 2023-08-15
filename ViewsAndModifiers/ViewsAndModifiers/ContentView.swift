//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 刘奇 on 2023/8/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button("HELLO"){
                print(type(of: self.body))
            }
            // 横向填充 30
            .padding(.horizontal,30)
            .background(.yellow)
            .frame(width: 200,height: 200)
            
            // 创建文本视图
            Text("我爱你，中国 🇨🇳!")
                // 创建 填充
                .padding()
                // 创建红色背景
                .background(.red)
                // 创建 填充
                .padding()
                // 创建红色背景
                .background(.blue)
                // 创建 填充
                .padding()
                // 创建红色背景
                .background(.green)
                // 创建 填充
                .padding()
                // 创建红色背景
                .background(.yellow)
        }
        // 创建 填充
        .padding()
        // 创建框架属性
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        // 创建橙色背景
        .background(.orange)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
