//
//  GenricView.swift
//  ViewBuilder
//
//  Created by Mohammed Safadi Macbook Pro on 16/12/2022.
//

import SwiftUI


struct ContainerView<Content:View>: View {
    let title:String    // Title of View if you need to paas in navigation
    let image:String    // Image for the header of view below the navigation
    let color:String    // Color for Backgroud ZStack
    let type:ViewsTypes // Enum view type
    let content:Content // Generic Content
    
    init(title: String, image: String, color: String, type:ViewsTypes ,  @ViewBuilder content: () -> Content) {
        // initial  @ViewBuilder content: () that to let the content as clouser when calling the containerView in you View
        self.title = title
        self.image = image
        self.color = color
        self.type = type
        self.content = content() // the generic Content View (content in .ready case)
    }
    var body: some View {
             ZStack {
                Color(color).ignoresSafeArea()
                Image(image).resizable().frame(maxWidth: .infinity , maxHeight: 200)
                NavigationView {
                    VStack{
                        Text(title).padding()
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height:3).padding()
                        switch type {
                            case .empty : EmptyView()
                            case .loading : LoadingView()
                            case . needLogin : NeedLoginView()
                            case .ready : content
                        }
                    }.frame(maxWidth: .infinity  - 40 ).background(Rectangle().fill(.green))
                     .fontWeight(.bold)
                     .foregroundColor(.white)
                     .shadow(radius: 20)
                     .padding()

                .navigationTitle(title)
               }
        }
        
    }
}

