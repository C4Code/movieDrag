//
//  C4WorkSpace.m
//  movieDrag
//
//  Created by Travis Kirton on 12-05-08.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
#import "MyMovie.h"

@interface C4WorkSpace () 
-(void)setupFrames;
@end

@implementation C4WorkSpace {
    MyMovie *m1, *m2;
    CGRect iPadPortrait, iPadLandscape, iPodPortrait, iPodLandscape;
}

-(void)setup {    
    [self setupFrames];
    
    m1 = [[MyMovie alloc] initWithMovieName:@"inception.mov" andFrame:iPadLandscape];
    [m1 addGesture:PAN name:@"panGesture" action:@"move:"];
    [self.canvas addMovie:m1];
    
    m2 = [[MyMovie alloc] initWithMovieName:@"inception.mov" andFrame:iPodLandscape];
    [m2 addGesture:PAN name:@"panGesture" action:@"move:"];
    [self.canvas addMovie:m2];
}

-(void)setupFrames {
    iPadPortrait = CGRectZero;
    iPodPortrait = CGRectZero;
    
    iPadLandscape = CGRectZero;
    iPodLandscape = CGRectZero;
    
    CGFloat ratioW = 52.0/147.0;
    CGFloat ratioH = 77.0/197.0;
    
    iPadPortrait.size = CGSizeMake(147.0,197.0);
    iPadLandscape.size = CGSizeMake(iPadPortrait.size.height, iPadPortrait.size.width);
    iPodPortrait.size = CGSizeMake(iPadPortrait.size.width * ratioW, iPadPortrait.size.height *ratioH);
    iPodLandscape.size = CGSizeMake(iPodPortrait.size.height, iPodPortrait.size.width);
}

@end
