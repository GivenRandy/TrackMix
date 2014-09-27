//
//  AppDelegate.h
//  TrackMix
//
//  Created by Randy Given on 8/31/14.
//  Copyright (c) 2014 Randy Given. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (void)updateUserInterface;

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (assign) IBOutlet NSWindow *window;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

@end
