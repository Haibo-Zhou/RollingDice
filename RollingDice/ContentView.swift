//
//  ContentView.swift
//  RollingDice
//
//  Created by ZhouHaibo on 2022/9/6.
//

import SwiftUI

struct ContentView: View {
    @State private var dices = DataManager.load()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
