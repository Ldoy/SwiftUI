//
//  ContentView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack {
                ToggleView()
                ToggleView()
            }
                
            VStack {
                ToggleView()
                ToggleView()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Model())
    }
}
