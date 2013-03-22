//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Rui Zhao on 3/9/13.
//  Copyright (c) 2013 Rui Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorVehicle.h"
#import "CalculatorShip.h"
@interface CalculatorBrain : NSObject
-(void) pushOperand:(double) operand;
-(double) performOperation:(NSString *) operation;
//public api don't wanna static typing
@property (readonly)id program;

//class methods
+(double) runProgram:(id) program;
+(NSString *) descriptionOfProgram:(id) program;
@end