//
//  ContentView.swift
//  WeSplitApp
//
//  Created by 刘奇 on 2023/7/17.
//

import SwiftUI

struct ContentView: View {
    // 计数值
    // @State允许我们绕过结构的限制 修改程序状态
    @State private var count = 0
    var body: some View {
        // 创建导航栏视图
        NavigationView{
            // 创建Form 表单
             Form{
                 // 创建表单拆分为离散的视觉组
                 Section{
                     // 创建文本视图
                     Text("大杯")
                         // 边距填充
                         .padding()
                 }
                 
                 Section{
                     // 创建文本视图
                     Text("中杯")
                         // 边距填充
                         .padding()
                 }
                 Section{
                     // 创建文本视图
                     Text("小杯")
                         // 边距填充
                         .padding()
                 }
                 Section{
                     // 创建计数按钮
                     Button("点击次数 \(count)"){
                         self.count += 1
                     }
                     // 创建重置按钮
                     Button("重置次数"){
                         self.count  = 0
                     }
                 }
                 
             }
            // 导航栏标题
             .navigationTitle("规格")
            // 导航栏标题样式 小 居中
             .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
