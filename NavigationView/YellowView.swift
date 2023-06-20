//
//  YellowView.swift
//  NavigationView
//
//  Created by Gabriel Zawalski on 19/06/23.
//

import SwiftUI

struct YellowView: View {


    var body: some View {
        VStack {
            Color.yellow.ignoresSafeArea()
            NavigationLink {
                BlueView()
            } label: {
                Text("Blue view")
            }
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            BackButton {
                Image(systemName: "arrowshape.left")
            }
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            YellowView()
        }
    }
}
