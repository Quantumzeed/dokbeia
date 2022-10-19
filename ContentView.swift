//
//  ContentView.swift
//  dokbeia
//
//  Created by Quantum on 19/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.accentColor.ignoresSafeArea()
                VStack{
                    Text("คำนวญดอกเบี้ย")
                }
            }
            .navigationBarTitle(Text("ดอกเบี้ย"))
        }
        .background(Color.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
