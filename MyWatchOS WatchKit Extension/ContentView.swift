//
//  ContentView.swift
//  MyWatchOS WatchKit Extension
//
//  Created by Rodrigo Gil on 2022-02-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Text("Our Counter will be here")
                .padding()
            
            HStack(alignment: .center, spacing: 8){
                Button {
                  print("Increment")
                } label: {
                 Image(systemName: "plus")
                    .font(.system(size: 34))
                }
                Button {
                  print("Decrement")
                } label: {
                  Text("Go!")
                    .font(.system(size: 34))
                }
              }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
