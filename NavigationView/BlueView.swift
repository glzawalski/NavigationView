//
//  BlueView.swift
//  NavigationView
//
//  Created by Gabriel Zawalski on 19/06/23.
//

import SwiftUI

struct BlueView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Color.blue.ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .toolbar {
                BackButton {
                    Image(systemName: "arrowshape.left")
                }
            }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
