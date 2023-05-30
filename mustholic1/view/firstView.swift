//
//  firstView.swift
//  mustholic1
//
//  Created by 冨岡哲平 on 2023/05/29.
//

import SwiftUI

struct firstView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 49) {
                Spacer().frame(height: geometry.size.height / 6) // Spacerを追加して全体を下げる
                Image("fire")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: geometry.size.height / 4)
                
                Text("mustholic")
                    .font(.custom("Poppins-Bold", size: 45)) // Poppinsの太いフォントを指定
                    .foregroundColor(Color(red: 0.114, green: 0.208, blue: 0.341)) // 色を指定
                    .padding(.bottom, 20)
                
                Spacer()
                Button(action: {
                    // Sign Up ボタンのアクション
                }) {
                    Text("Sign Up")
                        .font(.custom("Poppins-Medium", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 49)
                        .background(Color(red: 0.90, green: 0.22, blue: 0.27))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
                Button(action: {
                    // Log In ボタンのアクション
                }) {
                    Text("Log In")
                        .font(.custom("Poppins-Medium", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 49)
                        .background(Color.white)
                        .foregroundColor(Color(red: 0.90, green: 0.22, blue: 0.27))
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
                Spacer().frame(height: geometry.size.height / 3)
            }
            .padding(.horizontal, 60)
            .background(Color(red: 0.66, green: 0.85, blue: 0.86))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        firstView()
    }
}
