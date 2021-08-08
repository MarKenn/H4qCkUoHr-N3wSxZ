//
//  DetailView.swift
//  H4qCkUoHr N3wSxZ
//
//  Created by Mark Kenneth Bayona on 8/8/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


