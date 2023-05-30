//
//  signupView.swift
//  mustholic1
//
//  Created by 冨岡哲平 on 2023/05/29.
//

import SwiftUI

struct SignupView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: geometry.size.height * 0.2) {
                Text("Sign Up")
                    .fontWeight(.medium)
                    .font(.custom("Poppins", size: geometry.size.width * 0.08))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.4587, height: geometry.size.height * 0.0369, alignment: .top)
                
                TextField("Email", text: .constant(""))
                    .font(.custom("Poppins-Regular", size: geometry.size.width * 0.0373))
                    .frame(width: geometry.size.width * 0.6747, height: geometry.size.height * 0.0456)
                    .background(RoundedRectangle(cornerRadius: geometry.size.width * 0.0267).fill(Color.white))
                
                TextField("Password", text: .constant(""))
                    .font(.custom("Poppins-Regular", size: geometry.size.width * 0.0373))
                    .frame(width: geometry.size.width * 0.6773, height: geometry.size.height * 0.0456)
                    .background(RoundedRectangle(cornerRadius: geometry.size.width * 0.0267).fill(Color.white))
                
                Button(action: {
                    // Sign up action
                }) {
                    Text("Sign Up")
                        .font(.custom("Poppins", size: 20))
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width * 0.68, height: geometry.size.height * 0.0604)
                        .background(RoundedRectangle(cornerRadius: geometry.size.width * 0.0533).fill(Color(red: 0.90, green: 0.22, blue: 0.27)))
                        .shadow(radius: geometry.size.width * 0.032, y: geometry.size.width * 0.0107)
                }
                .padding(.top, geometry.size.height * 0.0123)
                .padding(.bottom, geometry.size.height * 0.0107)
            }
            .padding(.horizontal, geometry.size.width * 0.1587)
            .padding(.vertical, geometry.size.height * 0.0693)
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color(red: 0.66, green: 0.85, blue: 0.86))
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
