//
//  TypeAliases.swift
//  AudioPlayback
//
//  Created by T.R. Larsen on 10/11/23.
//

import CoreMIDI
import AudioToolbox

#if os(iOS)
import UIKit
public typealias KitColor = UIColor

public typealias KitView = UIView
public typealias ViewController = UIViewController
#elseif os(macOS)
import AppKit
public typealias KitColor = NSColor

public typealias KitView = NSView
public typealias ViewController = NSViewController
#endif
