//
//  ContentView.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            ZStack{
                Circle()
                    .fill(Color.green.opacity(0.2))
                    .frame(width: 40, height: 40)
                Image(systemName: "person.fill")
            }
            VStack(alignment: .leading, spacing: 4){
                HStack(spacing: 4){
                    Text("공수민")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("회기동")
                        .foregroundStyle(.gray)
                    Spacer()
                }
                Text("확인했습니다 감사합니다:)")
                    .font(.subheadline)
            }
            Image(.headset)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
                
            
        }
        .padding(.horizontal)
        .padding(.vertical, 16)
    }
}

#Preview {
    ContentView()
}
