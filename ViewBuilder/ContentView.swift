//
//  ContentView.swift
//  ViewBuilder
//
//  Created by Mohammed Safadi Macbook Pro on 16/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // ContainerView  is the name of conainter have clouser to any view inside it 
        ContainerView(title: "My home", image: "", color: "AccentColor", type: .ready) {
            Spacer()
                Image(systemName: "heart.fill").imageScale(.large)
                Text("My Generic View Builder ")
            Spacer()
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
