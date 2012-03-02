//
//  Tally.h
//  Ex04
//
//  Created by TPG on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tally : NSObject
{

}

@property(nonatomic) int position;
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSMutableArray *listOfNumbers;
-(void) addThisNumberToList:(float)number;
-(NSString *) currentRecordReport;
@end
