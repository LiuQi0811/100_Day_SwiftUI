//
//  GuessingNationalFlagUIView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/8/9.
//

import SwiftUI

struct GuessingNationalFlagUIView: View {
    // 国家数组
    var countries =  ["爱沙尼亚","法国","德国"]
    // 随机取值
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        // 创建垂直堆栈视图
        VStack{
            Text(countries[correctAnswer])
        }
    }
}

struct GuessingNationalFlagUIView_Previews: PreviewProvider {
    static var previews: some View {
        GuessingNationalFlagUIView()
    }
}
