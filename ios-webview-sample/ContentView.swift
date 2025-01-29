//
//  ContentView.swift
//  ios-webview-sample
//
//  Created by Milan Parađina on 13.12.2024..
//

import SwiftUI
import AuthenticationServices
import SafariServices


struct ContentView: View {
    @State private var showSafari = false
    private let testURL = "https://your-BlinkID-IBS-domain/"
    
    var body: some View {
        VStack {
            Button("Open BlinkID testing page") {
                showSafari = true
            }
            .font(.title2)
            .padding()
        }
        .fullScreenCover(isPresented: $showSafari, content: {
            if let url = URL(string: testURL) {
                SafariViewController(url: url)
            }
        })
    }
}

struct WebAuthView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
