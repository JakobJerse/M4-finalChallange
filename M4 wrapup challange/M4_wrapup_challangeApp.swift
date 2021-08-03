//
//  M4_wrapup_challangeApp.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import SwiftUI

@main
struct M4_wrapup_challangeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
    }
}
