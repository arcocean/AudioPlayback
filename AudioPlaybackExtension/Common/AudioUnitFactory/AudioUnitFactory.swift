//
//  AudioUnitFactory.swift
//  AudioPlaybackExtension
//
//  Created by T.R. Larsen on 10/11/23.
//

import CoreAudioKit
import os

private let log = Logger(subsystem: "com.bundle.id.AudioPlaybackExtension", category: "AudioUnitFactory")

public class AudioUnitFactory: NSObject, AUAudioUnitFactory {
    var auAudioUnit: AUAudioUnit?

    private var observation: NSKeyValueObservation?

    public func beginRequest(with context: NSExtensionContext) {

    }

    @objc
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        auAudioUnit = try AudioPlaybackExtensionAudioUnit(componentDescription: componentDescription, options: [])

        guard let audioUnit = auAudioUnit as? AudioPlaybackExtensionAudioUnit else {
            fatalError("Failed to create AudioPlaybackExtension")
        }

        audioUnit.setupParameterTree(AudioPlaybackExtensionParameterSpecs.createAUParameterTree())

        self.observation = audioUnit.observe(\.allParameterValues, options: [.new]) { object, change in
            guard let tree = audioUnit.parameterTree else { return }
            
            // This insures the Audio Unit gets initial values from the host.
            for param in tree.allParameters { param.value = param.value }
        }

        return audioUnit
    }
    
}
