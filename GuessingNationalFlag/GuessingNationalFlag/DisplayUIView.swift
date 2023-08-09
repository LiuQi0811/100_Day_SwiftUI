//
//  DisplayUIView.swift
//  GuessingNationalFlag
//
//  Created by 刘奇 on 2023/8/8.
//

import SwiftUI

struct DisplayUIView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("弹窗提示"){
            self.showingAlert = true
        }
        // 创建提示弹框
        .alert("提示信息",isPresented: self.$showingAlert) {
            Button("👌"){
                
            }
            Button("删除",role: .destructive){}
            Button("取消",role: .cancel){}
        }message: {
            Text("请选择操作")
        }
    }
}

struct DisplayUIView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayUIView()
    }
}
