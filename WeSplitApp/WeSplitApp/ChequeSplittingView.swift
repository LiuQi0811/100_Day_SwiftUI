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
    // 输入焦点监听
    @FocusState private var amountIsFocused: Bool
    
    // 总人数 计算属性
    var totalPerPerson: Double {
        // 人数统计
        let peopleCount = Double(numberOfPeople + 2)
        // 提示选择
        let tipSelection = Double(tipPercentage)
        // 提示值
        let tipValue = checkAmount / 100 * tipSelection
        // 总计
        let grandTotal  = checkAmount + tipValue
        // 每个人的金额
        let amountPerPerson = grandTotal / peopleCount
        if(self.currencyCode == "CAD"){
           return amountPerPerson * 0.18
        }
        if(self.currencyCode == "AUD"){
           return amountPerPerson * 0.20
        }
        if(self.currencyCode == "JPY"){
           return amountPerPerson * 19.3
        }
        if(self.currencyCode == "CNY"){
           return amountPerPerson
        }
        return 0
    }
    
    
    var body: some View {
       // 创建导航栏视图
        NavigationView{
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
                              format: .currency(code: Locale.current.currencyCode ?? self.currencyCode))
                    // 键盘类型
                    .keyboardType(.decimalPad)
                    // 文本字段聚焦
                    .focused(self.$amountIsFocused)
                    // 创建工具栏
                    .toolbar{
                        // 工具栏分组
                        ToolbarItemGroup(placement: .keyboard){
                            Button("结束"){
                                self.amountIsFocused = false
                            }
                        }
                    }
                    
                    // 创建人数下拉框
                    Picker("人数",selection: self.$numberOfPeople){
                        ForEach(2..<20){
                            Text("\($0) 人")
                        }
                    }
                }
                Section{
                    // 创建小费下拉框
                    Picker("请选择小费",selection: self.$tipPercentage){
                        ForEach(self.tipPercentages,id: \.self){
                            Text($0,format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                // 视觉组 标题
                header: {
                    Text("你想留下多少小费？\t\t\t\t \(self.tipPercentage,format: .percent)")
                }
                Section{
                    Text("\(totalPerPerson)")
                } header: {
                    Text("小费")
                }
            }
            // 创建导航栏标题
            .navigationTitle("支票拆分应用程序")
            // 创建导航栏标题样式 小 居中
            .navigationBarTitleDisplayMode(.inline)
        }
     
        
    }
}

struct ChequeSplittingView_Previews: PreviewProvider {
    static var previews: some View {
        ChequeSplittingView()
    }
}
