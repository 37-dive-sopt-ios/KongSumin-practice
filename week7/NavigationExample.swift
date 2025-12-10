//
//  NavigationExample.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/29/25.
//
import SwiftUI


struct NavigationExample: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                DetailView()
            }label: {
                Label ("Work Folder", systemImage: "folder")
            }
            NavigationLink("Teal") {
                ColorDetail(color: .teal)
            }
        }
    }
}

//MARK: - DetailView
struct DetailView: View {
    var body: some View {
        Text("Hello, World!")
    }
}



struct DestinationView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Teal") {
                ColorDetail(color: .teal)
            }
            
            NavigationLink {
                ColorDetail(color: .teal)
            } label: {
                Label("Work Folder", systemImage: "folder")
            }
            
            .navigationTitle("Colors")
        }
    }
}


struct ColorDetail: View {
    var color: Color

    var body: some View {
        color.navigationTitle(color.description)
    }
}
