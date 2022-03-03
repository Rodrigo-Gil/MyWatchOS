//
//  ContentView.swift
//  MyWatchOS WatchKit Extension
//
//  Created by Rodrigo Gil on 2022-02-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Text("\(count)")
                .font(.system(size: 90))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .onReceive(timer) { _ in
                    count = count > 0 ? count - 1: 0
                }
            HStack(alignment: .center, spacing: 8){
                Button {
                  print("Increment")
                    count = count + 1
                } label: {
                 Image(systemName: "plus")
                    .font(.system(size: 34))
                }
                Button {
                    if (count > 0) {
                        count = count - 1
                    }
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
