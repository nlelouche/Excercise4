//
//  Tally.m
//  Ex04
//
//  Created by TPG on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tally.h"

@implementation Tally
@synthesize listOfNumbers;
@synthesize name;
@synthesize position;

-(void) addThisNumberToList:(float)number
{
    if(listOfNumbers == nil)
        listOfNumbers = [[NSMutableArray alloc] init];
    [listOfNumbers addObject:[NSNumber numberWithFloat:number]];
    
}
-(void)dealloc{
    [name release];
    [listOfNumbers release];
    [super dealloc];
}
-(NSString *) currentRecordReport{
    if(listOfNumbers == nil)
        return @"No numbers have been added yet";
    if(position >= [listOfNumbers count])
        position = 0;
    NSString *report = [NSString
                        stringWithFormat:@"listOfNumbers[%i] = %@",
                        position,
                        [listOfNumbers objectAtIndex:position]];
    position++;
    return report;
}

@end
