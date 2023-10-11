//
//  AudioPlaybackApp.swift
//  AudioPlayback
//
//  Created by T.R. Larsen on 10/11/23.
//

import CoreMIDI
import SwiftUI

@main
struct AudioPlaybackApp: App {
    @ObservedObject private var hostModel = AudioUnitHostModel()

    var body: some Scene {
        WindowGroup {
            ContentView(hostModel: hostModel)
        }
    }
}
