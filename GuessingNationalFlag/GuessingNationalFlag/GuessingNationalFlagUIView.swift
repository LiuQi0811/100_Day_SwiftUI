//
//  GuessingNationalFlagUIView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/8/9.
//

import SwiftUI

struct GuessingNationalFlagUIView: View {
    // 国家数组  shuffled()方法会自动为我们随机化数组顺序
    @State var countries =  ["爱沙尼亚","法国","德国","爱尔兰","意大利","尼日利亚","波兰","俄罗斯","西班牙","英国","美国"].shuffled()
    // 随机取值
    @State var correctAnswer = Int.random(in: 0...2)
    // 展示得分成绩标识
    @State private var showingScore = false
    // 得分成绩标题
    @State private var scoreTitle = ""
    // 分数
    @State private var score = -1
    // 禁用状态
    @State private var disabledEnable = false
    var body: some View {
        // 创建水平堆栈视图
        ZStack{
            
            // 创建背景颜色 线性梯度
            LinearGradient(colors: [.blue,.yellow,.pink,.purple], startPoint: .top, endPoint: .bottom)
                // 创建安全域
                .ignoresSafeArea()
            
            // 创建垂直堆栈视图
            VStack(spacing: 25){
                if(self.score < 0){
                    Text("游戏结束")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .foregroundColor(.gray)
                }else{
                    Text("当前分数 \(self.score)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text(countries[correctAnswer])
                        .foregroundColor(.gray)
                        .font(.largeTitle.weight(.bold))
                    // 循环遍历旗帜
                    ForEach(0..<3){item in
                        // 创建旗帜按钮
                        Button{
                            self.answerCheck(item)
                        }label: {
                            Image(usTranslateEnByImage(countries:countries)[item])
                                // 渲染原始图像像素
                                .renderingMode(.original)
                                // 创建胶囊图形
                                .clipShape(Capsule())
                                // 创建阴影效果
                                .shadow(radius: 5)
                        }
                        // 按钮禁用
                        .disabled(self.disabledEnable)
                    }
                }
                .frame(maxWidth: .infinity)
                // 创建 垂直填充
                .padding(.vertical)
                // 创建 透明背景
                .background(.regularMaterial)
                // 创建矩形圆角图形
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                
                if(self.score < 0){
                    Button("开始游戏"){
                        // 开始游戏 分数归 0
                        self.score = 0
                        // 隐藏开始游戏按钮
                    }
                    .font(.title.bold())
                    .padding(.vertical,20)
                    .padding(.horizontal,80)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .shadow(radius: 20)
                }
                
                
                
            }
            .padding()
          
        }
        // 创建提示弹框
        .alert(self.scoreTitle,isPresented: self.$showingScore){
            
        }message: {
            Text("你的成绩是：\(self.score)")
                .foregroundColor(.white)
                .font(.title.bold())
        }
       
    }
    
    /**
      获取禁用状态
     */
    func getDisabledEnable(_ status: Bool){
        self.disabledEnable = status
    }
    
    /**
     重置/重新洗牌
     */
    func reshuffle(){
        // shuffled()方法会自动为我们随机化数组顺序
        self.countries.shuffle()
        self.correctAnswer = Int.random(in: 0...2)
    }
    
    /**
     回答答案验证
     */
    func answerCheck(_ number: Int){
        if(self.correctAnswer == 0){
            // 开启按钮禁用
            self.getDisabledEnable(true)
        }
        // 答案对比
        if(number == self.correctAnswer){
            self.scoreTitle = "回答正确"
            self.score += 10
        }else{
            self.scoreTitle = "回答错误"
            self.score -= 10
        }
        // 得分成绩展示
        self.showingScore = true
        self.reshuffle()
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
