//
//  HikeDetails.swift
//  Hiking
//
//  Created by Maxim Mitin on 10.05.22.
//

import SwiftUI

struct HikeDetails: View {
    
    let hike : Hike
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles) + " miles")
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetails(hike: Hike(name: "Angel Falls", imageURL: "tan", miles: 6.0))
    }
}
