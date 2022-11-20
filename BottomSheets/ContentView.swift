//
//  ContentView.swift
//  BottomSheets
//
//  Created by Oncu Can on 19.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State var showBottom: Bool = false
    var body: some View {
        VStack {
            Button("Setting") {
                showBottom.toggle()
            } .buttonStyle(.borderedProminent)
        }.padding()
            .sheet(isPresented: $showBottom) {
                ListView()
                    .presentationDetents([.height(200)])
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
