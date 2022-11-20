//
//  ListView.swift
//  BottomSheets
//
//  Created by Oncu Can on 20.11.2022.
//

import SwiftUI

struct ListView: View {
    @State private var aMode: Bool = false
    var body: some View {
            List{
                Toggle(isOn: $aMode) {
                    ListMode(title: "Airplane Mode", image: "airplane", backcolor: .orange, frontcolor: .white)
                }
                    ListMode(title: "Wi-Fi", image: "wifi", backcolor: .blue, frontcolor: .white)
                    ListMode(title: "Bluetooth", image: "bonjour", backcolor: .blue, frontcolor: .white)
                    ListMode(title: "Cellular", image: "antenna.radiowaves.left.and.right", backcolor: .green, frontcolor: .white)
            }.listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct ListMode: View {
    @State var title: String
    @State var image: String
    @State var backcolor: Color
    @State var frontcolor: Color
    var body: some View {
        HStack {
            Image(systemName: image).background(backcolor).foregroundColor(frontcolor)
            Text(title)
        }
    }
}
