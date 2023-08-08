//
//  ButtonUIView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/7/21.
//

import SwiftUI

struct ButtonUIView: View {
    var body: some View {
        // 创建垂直堆栈
        VStack{
            // 创建form表单
            Form{
                Section{
                    // ONE
                    Button("ONE",action: self.buttonOne)
                    // TWO
                    Button("TWO",role: .destructive,action: self.buttonTwo)
                }
                Section{
                    /**
                     创建按钮以及样式
                     */
                    Button("按钮 壹"){}
                        // 按钮样式 填充
                        .buttonStyle(.bordered)
                    Button("按钮 贰",role: .destructive){}
                        // 按钮样式 填充
                        .buttonStyle(.bordered)
                    Button("按钮 叁"){}
                        // 按钮样式 填充
                        .buttonStyle(.borderedProminent)
                    Button("按钮 肆",role: .destructive){}
                        // 按钮样式 填充
                        .buttonStyle(.borderedProminent)
                    Button("按钮 伍"){}
                        // 按钮样式 填充
                        .buttonStyle(.borderedProminent)
                        // 自定义 按钮颜色
                        .tint(.mint)
                    Button{}label: {
                        Text("按钮 陆")
                            .padding()
                            .foregroundColor(.white)
                            .background(.yellow)
                            // 添加圆角
                            .cornerRadius(12)
                            // 添加阴影
                            .shadow(radius: 14)
                    }
                    Button{}label: {
                        // 铅笔图标按钮样式
                        Image(systemName: "pencil")
                    }
                    Button{}label: {
                        // 调音开关按钮样式
                        Label("调音", systemImage: "slider.vertical.3")
                    }
                }
            }
            
           
        }
    }
    
    func buttonOne(){
        print("ONE")
    }
    func buttonTwo(){
        print("TWO")
    }
}

struct ButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUIView()
    }
}
