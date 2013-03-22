//
//  HappinessViewController.m
//  Happiness
//
//  Created by Rui Zhao on 3/20/13.
//  Copyright (c) 2013 Rui Zhao. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"
@interface HappinessViewController ()
@property (nonatomic, weak) IBOutlet FaceView *faceView;

@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView = _faceView;

-(void) setHappiness:(int)happiness {
    _happiness = happiness;
    [self.faceView setNeedsDisplay];
}

@end
