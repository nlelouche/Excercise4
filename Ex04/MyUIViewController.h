//
//  MyUIViewController.h
//  Ex04
//
//  Created by TPG on 2/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyUIViewController : UIViewController


@property (assign, nonatomic) IBOutlet UILabel *myLabel;
@property (assign, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction) changeLabel:(id)sender;

@end
