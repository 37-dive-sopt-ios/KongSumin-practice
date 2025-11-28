//
//  ScrollView.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/22/25.
//

import SwiftUI
    
struct ScrollView_sumin: View {
    
    //    @State private var isToggle: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 16) {
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 120, height: 120)
                        
                        Image(systemName: "person.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    
                    nameWithPosition
                    ageAndMBTI
                    
                    Spacer()
                        .frame(height: 1000) // 1000 간격
                    hobby
                    Spacer()
                }
                .padding(.horizontal, 20) // 좌우 패딩
                .padding(.bottom, 70) // 버튼보다 위로가기 위함
            }
            VStack {
                Spacer()
                directMessageButton
            }
        }
    }
    
    
    private var nameWithPosition: some View {
        HStack {
            Text("iOS")
                .font(.subheadline)
            Text("이명진")
                .font(.headline)
                .foregroundStyle(.blue)
            Spacer()
            Text("파트장")
                .foregroundStyle(.gray)
                .font(.subheadline)
        }
        .padding(.vertical, 2)
    }

    private var ageAndMBTI: some View {
        HStack {
            Text("97년생")
                .font(.subheadline)
            Spacer()
            Text("ESTP거나 ESTJ")
                .font(.subheadline)
                .foregroundStyle(.indigo)
        }
    }

    private var hobby: some View {
        Text("취미는 영상편집, 러닝, 카공 등")
    }

    private var directMessageButton: some View {
        Button {
            print("DM 확인해주세요 ㅋㅋ ^^7")
        } label: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.blue)
                .overlay {
                    Text("디엠 보내기")
                        .foregroundStyle(.white)
                }
        }
        .frame(height: 50)
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
    
    
}

#Preview{
    ScrollView_sumin()
}
