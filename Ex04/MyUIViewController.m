//
//  MyUIViewController.m
//  Ex04
//
//  Created by TPG on 2/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyUIViewController.h"
#import "Ex04AppDelegate.h"
#import "Tally.h"

@implementation MyUIViewController
@synthesize myLabel;
@synthesize mySlider;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)changeLabel:(id)sender
{
    myLabel.text = [NSString stringWithFormat:@"Slider Value %f", mySlider.value];

}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    Ex04AppDelegate *appDelegate = (Ex04AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    Tally *tallyObject = appDelegate.tally;
    //myLabel.text = tallyObject.name;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
