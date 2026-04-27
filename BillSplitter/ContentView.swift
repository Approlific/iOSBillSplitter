//
//  ContentView.swift
//  BillSplitter
//
//  Created by Jerry Toland on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bill = Bill(totalAmount: 0.0, numberOfPeople: 1, tipPercent: 15.0)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.ring.dashed")
                    .font(.largeTitle)
                
                Text("Bill Splitter")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundStyle(.mint)
        }
        .padding()
        
        BillSplitView(bill: $bill)
    }
}

#Preview {
    ContentView()
}
