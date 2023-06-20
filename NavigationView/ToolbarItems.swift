//
//  ToolbarItems.swift
//  NavigationView
//
//  Created by Gabriel Zawalski on 19/06/23.
//

import SwiftUI

struct BackButton<Content: View>: ToolbarContent {
    @Environment(\.dismiss) private var dismiss

    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some ToolbarContent {
        ToolbarItem(placement: .navigation) {
            content
                .onTapGesture {
                    dismiss()
                }
        }
    }
}

struct RedNavigation: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .primaryAction) {
            NavigationLink {
                RedView()
            } label: {
                Image(systemName: "square.and.arrow.up")
            }
            .foregroundColor(.red)
        }
    }
}

struct YellowNavigation: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .primaryAction) {
            NavigationLink {
                YellowView()
            } label: {
                Image(systemName: "square.and.arrow.down")
            }
            .foregroundColor(.yellow)
        }
    }
}

// Previews

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Color.red.ignoresSafeArea()
                .toolbar {
                    BackButton {
                        Text("Back button")
                    }
                }
        }
    }
}

struct RedNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Color.green.ignoresSafeArea()
                .toolbar {
                    RedNavigation()
                }
        }
    }
}

struct YellowNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Color.green.ignoresSafeArea()
                .toolbar {
                    YellowNavigation()
                }
        }
    }
}

