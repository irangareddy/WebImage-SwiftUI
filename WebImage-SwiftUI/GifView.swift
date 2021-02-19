//
//  GifView.swift
//  WebImage-SwiftUI
//
//  Created by RANGA REDDY NUKALA on 19/02/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct GifView: View {
    @State private var isAnimating: Bool = true
    
    let gifURL = URL(string: "https://media.giphy.com/media/liBsVeLILcyaY/giphy.gif")

    
    var body: some View {
            WebImage(url: gifURL, isAnimating: $isAnimating)
                .customLoopCount(10)
                .playbackRate(1.0)
    }
}

struct GifView_Previews: PreviewProvider {
    static var previews: some View {
        GifView()
    }
}
