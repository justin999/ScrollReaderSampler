//
//  GridView.swift
//  ScrollReaderSampler
//
//  Created by Justin Sato on 2021/02/12.
//  
//

import SwiftUI

struct GridView: View {
    @State var scrollProxy: ScrollViewProxy?
    
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                LazyVGrid(columns: [GridItem](repeating: GridItem(), count: 3)) {
                    ForEach(0..<100000000000, id: \.self) { num in
                        Text("\(num)")
                            .padding()
                    }

                }
                .onAppear {
                    scrollProxy = proxy
                }
            }
        }
        .onAppear {
            scrollProxy?.scrollTo(1500, anchor: .top)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
