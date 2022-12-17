//
//  LoadingView.swift
//  ViewBuilder
//
//  Created by Mohammed Safadi Macbook Pro on 16/12/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        /**
         here yiu can do the style for laoding view
         */
        VStack {
            ProgressView()
            Text("Loading View !")

        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
