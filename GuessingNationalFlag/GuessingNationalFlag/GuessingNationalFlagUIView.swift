//
//  GuessingNationalFlagUIView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/8/9.
//

import SwiftUI

struct GuessingNationalFlagUIView: View {
    // 国家数组
    var countries =  ["爱沙尼亚","法国","德国","爱尔兰","意大利","尼日利亚","波兰","俄罗斯","西班牙","英国","美国"]
    // 随机取值
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        // 创建垂直堆栈视图
        VStack(spacing: 30){
            VStack{
                Text(countries[correctAnswer])
            }
            
            ForEach(0..<3){item in
                Button{
                    
                }label: {
                    Image(usTranslateEnByImage(countries:countries)[item])
                        // 渲染原始图像像素
                        .renderingMode(.original)
                }
            }
        }
    }
}

/**
  中英文翻译 用于国旗展示
 */
func usTranslateEnByImage(countries: Array<String>) ->Array<String>{
    var result: Array<String> = []
    for item in countries{
        if(item==UsTranslateEn.Estonia.rawValue){
            result.append("Estonia")
        }
        if(item==UsTranslateEn.France.rawValue){
            result.append("France")
        }
        if(item==UsTranslateEn.Germany.rawValue){
            result.append("Germany")
        }
        if(item==UsTranslateEn.Ireland.rawValue){
            result.append("Ireland")
        }
        if(item==UsTranslateEn.Italy.rawValue){
            result.append("Italy")
        }
        if(item==UsTranslateEn.Nigeria.rawValue){
            result.append("Nigeria")
        }
        if(item==UsTranslateEn.Poland.rawValue){
            result.append("Poland")
        }
        if(item==UsTranslateEn.Russia.rawValue){
            result.append("Russia")
        }
        if(item==UsTranslateEn.Spain.rawValue){
            result.append("Spain")
        }
        if(item==UsTranslateEn.UK.rawValue){
            result.append("UK")
        }
        if(item==UsTranslateEn.US.rawValue){
            result.append("US")
        }
    }
    return result
}

/**
    国旗枚举
 */
enum UsTranslateEn: String{
    case Estonia = "爱沙尼亚"
    case France = "法国"
    case Germany = "德国"
    case Ireland = "爱尔兰"
    case Italy = "意大利"
    case Nigeria = "尼日利亚"
    case Poland = "波兰"
    case Russia = "俄罗斯"
    case Spain = "西班牙"
    case UK = "英国"
    case US = "美国"
}

struct GuessingNationalFlagUIView_Previews: PreviewProvider {
    static var previews: some View {
        GuessingNationalFlagUIView()
    }
}
