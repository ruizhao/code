//
//  FaceView.h
//  Happiness
//
//  Created by Rui Zhao on 3/20/13.
//  Copyright (c) 2013 Rui Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView
-(void) drawCircleAtPoint:(CGPoint)p withRadius:(CGFloat) radius inContext:(CGContextRef) context;

@end
