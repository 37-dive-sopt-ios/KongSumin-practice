//
//  ChatList.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/22/25.
//

import SwiftUI

struct ChatList: View {
    let chatRoom: [ChatRoomModel]

    var body: some View {
        List(chatRoom) { chatRoom in
            ChatRow(chatRoom: chatRoom)
                .listRowInsets(EdgeInsets()) // inset 타이트하게 맞춰줍니다.
                .listRowSeparator(.visible) // 구분선 보이게 함
        }
        .listStyle(.plain) // 기본 스타일
    }
}

#Preview {
    ChatList(chatRoom: ChatRoomModel.mockData) // 데이터 주입
}
