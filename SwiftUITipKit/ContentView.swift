//
//  ContentView.swift
//  SwiftUITipKit
//
//  Created by Angelos Staboulis on 9/5/24.
//

import SwiftUI
import TipKit
struct PopOverTip: Tip {
    @Parameter
    static var isOpen: Bool = false
    var title: Text {
        Text("Angelos Staboulis")
    }
    
    var message: Text? {
        Text("This is my lastname and firstname")
    }
    var rules: [Rule] {
        [
            #Rule(Self.$isOpen) {
                $0 == false
            }
        ]
    }
}
struct ContentView: View {
    var tip = PopOverTip()
    @State var clicked:Bool
    var body: some View {
        VStack(spacing: 20) {
            TipView(tip, arrowEdge: .bottom)
            Image(systemName: "photo.on.rectangle")
                .imageScale(.large)
            
            Button(action: {
                PopOverTip.isOpen.toggle()
                clicked.toggle()
            }, label: {
                Text(clicked ? "Open Tip" : "Close Tip")
            })
      
        }
        
    }
}
