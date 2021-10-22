//
//  EnvironmentToggleView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ToggleView: View {
    @State private var isStateToggleOn: Bool = false
    @State private var isEnvironmentOn: Bool = false
    @EnvironmentObject var sharedData: Model
    
    var body: some View {
            
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(.red)
            
            VStack {
                if isStateToggleOn {
                    Text("State On")
                } else {
                    Text("State Off")

                }
                
                Toggle("State", isOn: $isStateToggleOn)
                    .padding()
                
                if isStateToggleOn {
                    Text("Environmetn On")
                } else {
                    Text("Environmetn Off")
                }
                
                //연동되어야하는 정보 
                Toggle("Environment", isOn:  $sharedData.isEnvironmentToggleOn)
                    .padding()
            }
         
        }
        .padding()
    }
}

struct EnvironmentToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
