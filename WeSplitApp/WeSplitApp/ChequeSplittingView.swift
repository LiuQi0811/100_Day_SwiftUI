//
//  ChequeSplittingView.swift
//  WeSplitApp 支票拆分应用程序
//
//  Created by 刘奇 on 2023/7/18.
// 

import SwiftUI

struct ChequeSplittingView: View {
    
    // 支票金额
    @State private var checkAmount = 0.0
    // 人数
    @State private var numberOfPeople = 2
    // 小费百分比
    @State private var tipPercentage = 20
    // 小费百分比列表
    var tipPercentages = [10, 15, 20, 25, 0]
    // 货币代码列表
    var currencyCodes:[String : String] = ["加元":"CAD","澳元":"AUD","日元":"JPY","人民币":"CNY"]
    // 货币代码
    @State private var currencyCode = "CNY"
    
    
    
    var body: some View {
        // 创建Form表单
        Form{
            Section{
              // 创建选择币种下拉框
                Picker("请选择币种",selection: self.$currencyCode){
                    ForEach(Array(self.currencyCodes.values),id: \.self){
                        Text($0)
                    }
                }
            }
            // 创建表单拆分为离散的视觉组
            Section{
                // 创建文本框视图
                TextField("金额",value: self.$checkAmount,
                          // 文本格式 美元符号
                          format: .currency(code: self.currencyCode))
            }
        }
    }
}

struct ChequeSplittingView_Previews: PreviewProvider {
    static var previews: some View {
        ChequeSplittingView()
    }
}
