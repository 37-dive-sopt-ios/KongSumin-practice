//
//  Chatrow.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/22/25.
//

import SwiftUI

struct ChatRow: View {
    let chatRoom: ChatRoomModel // 모델 추가

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            // 왼쪽 프로필 아이콘
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 50, height: 50)

                if let profileImage = chatRoom.profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                }
            }

            // 가운데 텍스트 영역
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(chatRoom.name)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)

                    Text(chatRoom.location)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }

                Text(chatRoom.lastMessage)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }

            Spacer()

            // 오른쪽 썸네일 이미지
            if let thumbnail = chatRoom.thumbnail {
                thumbnail
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.white)
    }
}
