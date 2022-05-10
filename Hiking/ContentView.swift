//
//  ContentView.swift
//  Hiking
//
//  Created by Maxim Mitin on 9.05.22.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetails(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.body)
                .fontWeight(.bold)
                
                Text(String(format: "%.2f", hike.miles) + " miles")
            }
            
            Spacer()
            
            Image(hike.imageURL)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
        }
    }
}
