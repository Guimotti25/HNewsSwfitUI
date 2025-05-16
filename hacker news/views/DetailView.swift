//
//  DetailView.swift
//  hacker news
//
//  Created by Guilherme Motti on 16/05/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        if let urlString = url, let validURL = URL(string: urlString) {
            WebView(url: validURL)
                .edgesIgnoringSafeArea(.all)
        } else {
            VStack {
                Text("URL inválida ou não fornecida")
                    .font(.headline)
                Text("Não foi possível carregar a página")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView
        
        init(_ parent: WebView) {
            self.parent = parent
        }
        
        // Você pode adicionar métodos delegate aqui se necessário
        // Por exemplo, para tratar erros de carregamento:
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("Erro ao carregar página: \(error.localizedDescription)")
        }
    }
}

#Preview {
    DetailView(url: "google.com")
}


