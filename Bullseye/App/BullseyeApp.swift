//
//  BullseyeApp.swift
//  Bullseye
//
//  Created by Benjamin McAdams on 11/8/21.
//

import SwiftUI

@main
struct BullseyeApp: App {
    init() {
        #if DEVELOPMENT
        print("This only executes when building with the DEVELOPMENT scheme")
        #elseif DEBUG
        print("This only executes when building with the DEBUG scheme")
        #else
        print("Release scheme selected")
        #endif
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
