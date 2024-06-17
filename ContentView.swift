import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                WebView(url: URL(string: "https://demonlist.org")!)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.showsVerticalScrollIndicator = false 
        webView.scrollView.showsHorizontalScrollIndicator = false 
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}