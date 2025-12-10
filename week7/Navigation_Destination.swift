//
//  Navigation_Destination.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/29/25.
//


import SwiftUI

struct DestinationView2: View {
    var body: some View {
        NavigationStack {
            NavigationLink("첫번째 버튼", value: "하이")
            NavigationLink("두번째 버튼", value: "바이")
            
            NavigationLink {
                ColorDetail2(color: .teal)
            } label: {
                Label("Work Folder", systemImage: "folder")
            }
            
            .navigationTitle("Colors")
            .navigationDestination(for: String.self) { value in
                TextView(text: value)
            }
        }
    }
}

struct TextView: View {
    var text: String
    
    var body: some View {
        Text(text)
    }
}


struct ColorDetail2: View {
    var color: Color

    var body: some View {
        color.navigationTitle(color.description)
    }
}
