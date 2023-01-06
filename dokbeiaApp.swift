//
//  dokbeiaApp.swift
//  dokbeia
//
//  Created by Quantum on 19/10/2565 BE.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Model for View
 
 */



@main
struct dokbeiaApp: App {
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.accentColor)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.accentColor)]
    }
    
    var body: some Scene {
        WindowGroup {
               LoanCar()
        }
    }
}
