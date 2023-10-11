//
//  AudioPlaybackExtensionAudioUnit.h
//  AudioPlaybackExtension
//
//  Created by T.R. Larsen on 10/11/23.
//

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioPlaybackExtensionAudioUnit : AUAudioUnit
- (void)setupParameterTree:(AUParameterTree *)parameterTree;
@end
