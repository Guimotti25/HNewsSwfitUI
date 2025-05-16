//
//  ContentView.swift
//  hacker news
//
//  Created by Guilherme Motti on 16/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url ?? ""))
                {
                    HStack {
                        Text(String(post.points ?? 0))
                        Text(post.title ?? "")
                    }
                }
            }
            .navigationTitle(Text("Hacker News 📚")).font(.headline)
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        .refreshable {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}


//let posts: [Post] = [
//    .init(id: 1, title: "Post 1"),
//    .init(id: 2, title: "Post 2"),
//    .init(id: 3, title: "Post 3"),
//]
