//
//  ContentView.swift
//  NavigationView
//
//  Created by Gabriel Zawalski on 19/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    VStack(alignment: .leading) {
                        Text("First")
                            .kerning(3.4)
                        Text("Screen")
                            .kerning(7)
                    }
                }

                RedNavigation()

                YellowNavigation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
