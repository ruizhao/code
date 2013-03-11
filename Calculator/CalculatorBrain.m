//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Rui Zhao on 3/9/13.
//  Copyright (c) 2013 Rui Zhao. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *programStack;
@end


@implementation CalculatorBrain

//_opreandStack is the actually name of the location
@synthesize programStack = _programStack;

- (NSMutableArray *) programStack {
    if (_programStack == NULL) {
        _programStack = [[NSMutableArray alloc] init];
    }
    return _programStack;
    CalculatorShip *s = [[CalculatorShip alloc] init];
    [s shot];
    [s move];
   // CalculatorVehicle *vv = s;
    
    

}

-(id) program {
    //what if it has an array of objects? 
    return [self.programStack copy];
}

+(NSString *) descriptionOfProgram:(id)program {
    return @"task2";
}

+(double) popOperandOffStack:(NSMutableArray *)stack {
    double result = 0;
    id topOfStack = [stack lastObject];
    if (topOfStack) [stack removeLastObject];
    if ([topOfStack isKindOfClass:[NSNumber class]]){
        result = [topOfStack doubleValue];
    } else if ([topOfStack isKindOfClass:[NSString class]]) {
        NSString *operation = topOfStack;
        if ([operation isEqualToString:@"+"]) {
            result = [self popOperandOffStack:stack] + [self popOperandOffStack:stack];
        } else if ([@"*" isEqualToString:operation]) {
            result = [self popOperandOffStack:stack] * [self popOperandOffStack:stack];
        }
    }
    
    return result;
}

+(double)runProgram:(id)program{
    NSMutableArray *stack;
    if ([program isKindOfClass:[NSArray class]]) {
        stack = [program mutableCopy];
    }
    return [self popOperandOffStack:stack];
    
}



- (void) pushOperand:(double) operand{
    //boxing like java
    [self.programStack addObject:[NSNumber numberWithDouble:operand]];
}



- (double) performOperation:(NSString *) operation{
    [self.programStack addObject:operation];
    return [CalculatorBrain runProgram:self.program];
}


@end
