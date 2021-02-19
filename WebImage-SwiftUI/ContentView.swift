//
//  ContentView.swift
//  WebImage-SwiftUI
//
//  Created by RANGA REDDY NUKALA on 19/02/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isOn {
                    WebImageView()
                } else {
                    GifView()
                }
            }
            .navigationBarItems(trailing:
                                    Toggle(isOn: $isOn) {
                                        Text("Web Image")
                                    }
            )
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

