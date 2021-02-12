//
//  ContentView.swift
//  ScrollReaderSampler
//
//  Created by Justin Sato on 2021/02/12.
//  
//

import SwiftUI

struct ContentView: View {
    @State var presented: Bool = false
    
    var body: some View {
        Button("tap") {
            presented.toggle()
        }
        .sheet(isPresented: $presented, content: {
            GridView()
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
