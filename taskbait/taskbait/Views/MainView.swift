//
//  ContentView.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()

    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }

    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Tasks", systemImage: "note.text")
                }
            
            MessageView()
                .tabItem {
                    Label("Message", systemImage: "message")
                }
            
            SocialView()
                .tabItem {
                    Label("Friends", systemImage: "person.2")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
