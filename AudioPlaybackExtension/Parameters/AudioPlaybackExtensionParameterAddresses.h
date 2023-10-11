//
//  AudioPlaybackExtensionParameterAddresses.h
//  AudioPlaybackExtension
//
//  Created by T.R. Larsen on 10/11/23.
//

#pragma once

#include <AudioToolbox/AUParameters.h>

#ifdef __cplusplus
namespace AudioPlaybackExtensionParameterAddress {
#endif

typedef NS_ENUM(AUParameterAddress, AudioPlaybackExtensionParameterAddress) {
    gain = 0
};

#ifdef __cplusplus
}
#endif
