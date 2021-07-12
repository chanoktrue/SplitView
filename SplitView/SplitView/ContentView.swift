//
//  ContentView.swift
//  SplitView
//
//  Created by Thongchai Subsaidee on 12/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
                       
            ListView()
            
            DetailView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View {
    var body: some View {
        List(0..<5) { item in
            NavigationLink(
                destination: DetailView(item: item),
                label: {
                    Text("Tap \(item)")
                })
        }
        .navigationBarTitle(Text("Hello List"))
    }
}

struct DetailView: View {
    
    var item: Int?
    
    var body: some View {
        Text("Hello 👋 \(item ?? 0)")
    }
}
