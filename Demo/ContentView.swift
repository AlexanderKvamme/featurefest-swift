// DEMO: Open Package.swift in Xcode and click Preview to try it out!
// Replace boardId with your own from https://featurefest.app

import SwiftUI
import Featurefest

struct ContentView: View {
    // This is a demo board - replace with your own board ID
    private let boardId = "f9f8ac71-01fa-445c-858e-e6e7e8308fc6"

    var body: some View {
        NavigationView {
            FeatureBoardView(boardId: boardId)
                .navigationTitle("Feature Requests")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

// MARK: - Preview
// Click "Resume" button (▶️) on the right to see it live!

#Preview {
    ContentView()
}