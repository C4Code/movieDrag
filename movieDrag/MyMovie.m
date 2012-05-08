//
//  MyMovie.m
//  vectors
//
//  Created by Travis Kirton on 12-05-08.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "MyMovie.h"

@implementation MyMovie
-(void)move:(id)sender {
    self.animationDuration = 0.0f;
    UIPanGestureRecognizer *pan = (UIPanGestureRecognizer *)sender;
    CGPoint panPoint = [pan translationInView:self];
    self.center = CGPointMake(self.center.x+panPoint.x, self.center.y+panPoint.y);
    [pan setTranslation:CGPointZero inView:self];
}
@end
