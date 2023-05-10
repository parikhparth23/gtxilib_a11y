//
//  ContentView.swift
//  a11y
//
//  Created by Parth Parikh on 5/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
//          Text("Hello, world!").font(.system(size: 1))
          Text("Hello, world!")
          Circle().accessibilityElement()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
