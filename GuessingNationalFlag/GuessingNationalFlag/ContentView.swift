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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
