//
//  testView.swift
//  mustholic1
//
//  Created by 冨岡哲平 on 2023/05/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                ForEach(0..<7) { i in
                    Text(dayOfWeek(i))
                        .font(.custom("Poppins-Medium", size: 16))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(i % 2 == 0 ? Color(red: 0.90, green: 0.22, blue: 0.27) : Color(red: 0.66, green: 0.85, blue: 0.86))
                        .foregroundColor(.white)
                }
            }
            .padding(0)

            ForEach(0..<5) { _ in
                HStack {
                    ForEach(0..<7) { i in
                        Text("\(Int.random(in: 1...30))")
                            .font(.custom("Poppins-Medium", size: 16))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(i % 2 == 0 ? Color(red: 0.66, green: 0.85, blue: 0.86) : Color.white)
                            .foregroundColor(Color(red: 0.11, green: 0.21, blue: 0.34))
                    }
                }
                .padding(0)
            }
        }
    }

    func dayOfWeek(_ index: Int) -> String {
        let days = ["S", "M", "T", "W", "T", "F", "S"]
        return days[index]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

