//
//  AppDelegate.m
//  TrackMix
//
//  Created by Randy Given on 8/31/14.
//  Copyright (c) 2014 Randy Given. All rights reserved.
//

#import "AppDelegate.h"

#import "Track.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
