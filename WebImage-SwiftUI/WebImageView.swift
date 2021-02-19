//
//  WebImageView.swift
//  WebImage-SwiftUI
//
//  Created by RANGA REDDY NUKALA on 19/02/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct WebImageView: View {
    
    let imageURL  = URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
    
    var body: some View {
        VStack {
            WebImage(url: imageURL)
               .resizable()
               .placeholder {
                   Rectangle().foregroundColor(.gray)
               }
               .indicator(.activity)
               .transition(.fade(duration: 0.5))
               .scaledToFit()
               .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
                .padding()
            Text("Rick Sanchez")
                .font(.title)
        }
        
    }
}

struct WebImageView_Previews: PreviewProvider {
    static var previews: some View {
        WebImageView()
    }
}


/*
 
 VStack {

     WebImage(url: imageURL)
        // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
        .onSuccess { image, data, cacheType in
            // Success
            // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
        }
        .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
//               .placeholder(Image(systemName: "photo")) // Placeholder Image
        // Supports ViewBuilder as well
        .placeholder {
            Rectangle().foregroundColor(.gray)
        }
        .indicator(.activity) // Activity Indicator
        .transition(.fade(duration: 0.5)) // Fade Transition with duration
        .scaledToFit()
        .frame(width: 300, height: 300, alignment: .center)
         .clipShape(Circle())
         .padding()
     Text("Rick Sanchez")
         .font(.title)
 }

}
 
 */
