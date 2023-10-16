//
//  ContentView.swift
//  Dialog, Alert
//
//  Created by KOTA TAKAHASHI on 2023/10/16.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    
    var body: some View {
        VStack {
            Button("Alert") {
                let feedback = UIImpactFeedbackGenerator(style: .soft)
                feedback.impactOccurred()
                isShowAlert = true
            }
            .padding()
            .font(.title)
            
            Button("Dialog") {
                let feedback = UIImpactFeedbackGenerator(style: .soft)
                feedback.impactOccurred()
                isShowDialog = true
            }
            .padding()
            .font(.title)
        }
        .padding()
        .alert("本当に削除しますか？", isPresented: $isShowAlert) {
            Button("削除する", role: .destructive) {}
            Button("キャンセル", role: .cancel) {}
        } message: {
            Text("一度削除したら元に戻すことはできません。")
        }
        .confirmationDialog("Title", isPresented: $isShowDialog, titleVisibility: .visible) {
            Button("選択肢1") {
                
            }
            Button("選択肢2") {
                
            }
            Button("選択肢3") {
                
            }
            Button("選択肢4") {
                
            }
            
            Button("キャンセル", role: .cancel) {
                
            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
